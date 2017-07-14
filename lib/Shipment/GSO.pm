package Shipment::GSO;
#ABSTRACT: Shipment::GSO - Interface to Golden State Overnight Shipping Web Services
use strict;
use warnings;

use Try::Tiny;
use Shipment::SOAP::WSDL;
use Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap;
use Moo;
use MooX::Types::MooseLike::Base qw(:all);
use namespace::clean;

extends 'Shipment::Base';

=head1 Class Attributes

=head2 username, password

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

has '+pickup_date' => ( default => 'now' );

has 'interface' => (
    is  => 'lazy',
    isa => InstanceOf ['Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap']
);

sub _build_interface { Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap->new() }

sub _auth_header {
    my $self = shift;
    return {
        UserName => $self->username,
        Password => $self->password
    };
}

sub _build_services {
    my $self = shift;

    # 0  HASH(0x76b97f8)
    #    'GuaranteedDeliveryTime' => '10:30 AM  '
    #    'ServiceCode' => 'PDS'
    #    'ServiceDescription' => 'Priority Overnight'
    # 1  HASH(0x76b92d0)
    #    'GuaranteedDeliveryTime' => '10:30 AM  '
    #    'ServiceCode' => 'SDS'
    #    'ServiceDescription' => 'Saturday Delivery'
    # 2  HASH(0x76b8dc0)
    #    'GuaranteedDeliveryTime' => '8:00 AM   '
    #    'ServiceCode' => 'EPS'
    #    'ServiceDescription' => 'Early Priority Overnight'
    # 3  HASH(0x76b9420)
    #    'GuaranteedDeliveryTime' => '8:00 AM   '
    #    'ServiceCode' => 'ESS'
    #    'ServiceDescription' => 'Early Saturday'
    # 4  HASH(0x76b8f58)
    #    'GuaranteedDeliveryTime' => '12:00 PM  '
    #    'ServiceCode' => 'NPS'
    #    'ServiceDescription' => 'Noon Priority'
    # 5  HASH(0x76b96c0)
    #    'ServiceCode' => 'SAM'
    #    'ServiceDescription' => 'AM Select 8a-12p'
    # 6  HASH(0x76b9468)
    #    'ServiceCode' => 'SPM'
    #    'ServiceDescription' => 'PM Select 12p-4p'
    # 7  HASH(0x76b93c0)
    #    'ServiceCode' => 'SEV'
    #    'ServiceDescription' => 'Evening Select 4p-8p'
    # 8  HASH(0x76b9060)
    #    'GuaranteedDeliveryTime' => '5:00 PM   '
    #    'ServiceCode' => 'CPS'
    #    'ServiceDescription' => 'GSO Ground'

    my $service_args;

    foreach my $package ( @{ $self->packages } ) {
        my $responses = $self->interface->GetShippingRatesAndTimes(
            {   GetShippingRatesAndTimesRequest => {
                    AccountNumber  => $self->account,
                    OriginZip      => $self->from_address->postal_code,
                    DestinationZip => $self->to_address->postal_code,
                    PackageWeight  => int( $package->weight ),
                    DeclaredValue  => 100,
                    CODValue       => 0,
                    ShipDate       => $self->pickup_date->strftime('%Y-%m-%dT%H:%M:%S'),
                    PickupService  => $self->pickup_service,
                },
            },
            $self->_auth_header
        )->get_GetShippingRatesAndTimesResult->get_DeliveryServices;
        $responses = [$responses] unless ref $responses eq 'ARRAY';
        foreach my $service (@$responses) {
            if ( !defined $service_args->{ $service->as_hash_ref->{DeliveryService}->{ServiceCode} }
                ) {
                $service_args->{ $service->as_hash_ref->{DeliveryService}->{ServiceCode} }->{name}
                    = $service->as_hash_ref->{DeliveryService}->{ServiceDescription};
                $service_args->{ $service->as_hash_ref->{DeliveryService}->{ServiceCode} }->{id}
                    = $service->as_hash_ref->{DeliveryService}->{ServiceCode};
            } else {
                $service->get_DeliveryService->get_ShipmentCharges->set_TotalCharge(
                    $service_args->{ $service->as_hash_ref->{DeliveryService}->{ServiceCode} }
                        ->{cost}->as_string
                        + $service->get_DeliveryService->get_ShipmentCharges->get_TotalCharge
                        ->as_string );
            }
            $service_args->{ $service->as_hash_ref->{DeliveryService}->{ServiceCode} }->{cost}
                = $service->get_DeliveryService->get_ShipmentCharges->get_TotalCharge;
        }
    }

    map { $service_args->{$_}->{cost} = Data::Currency->new( $service_args->{$_}->{cost}, 'USD' ) }
        keys %$service_args;

    my $services;

    foreach my $k ( keys %$service_args ) {
        $services->{$k} = Shipment::Service->new( %{ $service_args->{$k} } );
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
    }
    catch {
        warn $_ if $self->debug;
        warn "service ($service_id) not available" if $self->debug;
        $self->error("service ($service_id) not available");
        $service_id = '';
    };
    return unless $service_id;

    $self->service( $self->services->{$service_id} );

}

1;
