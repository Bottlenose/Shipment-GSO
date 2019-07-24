package Shipment::GSO;

#ABSTRACT: Shipment::GSO - Interface to Golden State Overnight Shipping Web Services
use Shipment::GSO::Base Class;

our $VERSION = '2.0.1';

use Furl;
use JSON::XS;
use Try::Tiny;
use REST::Client;

extends 'Shipment::Base';

=head1 Class Attributes

=head2 username, password, account

Credentials required to access GSO Web Service

=cut

has 'username' => (
    is  => 'rw',
    isa => Str
);

has 'password' => (
    is  => 'rw',
    isa => Str
);

has 'account' => (
    is  => 'rw',
    isa => Int
);

has 'pickup_service' => (
    is  => 'rw',
    isa => Int
);

=head2 pickup_date

From GSO: Date when the shipment will be shipped. Ship date should be within 14 business days excluding weekends
and service holidays.

=cut

has '+pickup_date' => ( default => 'now' );

=head1 Class Methods

=head2 _build_services

This calls GetShippingRatesAndTimes from the GSO web service.

Each DeliveryService that is returned is added to services

The following service mapping is used:
  * ground => 'CPS' (GSO Ground)
  * priority => 'PDS' (Priority Overnight)

=cut

sub _build_services {
    my $self = shift;

    my $service_args;
    my $services;

    my $weight = 0;
    map { $weight += $_->weight } @{ $self->packages };

    my $service_types = (
        decode_json $self->_rest->POST(
            '/RatesAndTransitTimes',
            encode_json(
                {   AccountNumber  => $self->account,
                    OriginZip      => $self->from_address->postal_code,
                    DestinationZip => $self->to_address->postal_code,
                    ShipDate       => $self->pickup_date->strftime('%Y-%m-%dT%H:%M:%S'),
                    PackageWeight  => int($weight),
                }
            )
        )->responseContent()
    )->{DeliveryServiceTypes};

    for my $service (@$service_types) {
        $services->{ $service->{ServiceCode} } = Shipment::Service->new(
            id      => $service->{ServiceCode},
            name    => $service->{ServiceDescription},
            package => Shipment::Package->new(
                id   => 'YOUR_PACKAGING',
                name => 'Customer Supplied',
            ),
            cost => Data::Currency->new( $service->{ShipmentCharges}->{TotalCharge}, 'USD' )
        );
    }
    $services->{ground}   = $services->{CPS} if $services->{CPS};
    $services->{priority} = $services->{PDS} if $services->{PDS};

    $services;
}

=head2 rate

This method sets $self->service to $self->services->{$service_id}

=cut

sub rate {
    my ( $self, $service_id ) = @_;

    try {
        $service_id = $self->services->{$service_id}->id;
    } catch {
        warn $_ if $self->debug;
        warn "service ($service_id) not available" if $self->debug;
        $self->error("service ($service_id) not available; $_");
        $service_id = '';
    };
    return unless $service_id;

    $self->service( $self->services->{$service_id} );
}

=head1 CLASS METHODS AND ATTRIBUTES

=head2 _endpoint

The API endpoint.

https://api.gso.com/Rest/v1

=cut

sub _endpoint {
    'https://api.gso.com/Rest/v1';
}

=head2 _token

GSO uses a two step authentication process. This method gets the authentication token from GSO. Each request to GSO
must have this token.

=cut

my $_token;

sub _token {
    my $self = shift;

    return $_token if $_token;

    my $furl = Furl->new;
    my $res  = $furl->get(
        $self->_endpoint . '/token',
        [   account  => $self->account,
            username => $self->username,
            password => $self->password
        ]
    );

    $_token = $res->headers->header('token')
        || croak q{Could not get authentication token for account } . $self->account;
}

=head2 _rest

An instance of L<REST::Client> for making requests.

=cut

my $_rest;

sub _rest {
    my $self = shift;

    return $_rest if $_rest;

    my $rest = REST::Client->new( host => $self->_endpoint );
    $rest->addHeader( token          => $self->_token );
    $rest->addHeader( 'Content-Type' => 'application/json' );

    $_rest = $rest;
}

1;
