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

=head2 account

Account # with GSO. Included with most requests.

=cut

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

=head2 interface

An instance of the GSO SOAP interface.

=cut

has 'interface' => (
    is  => 'lazy',
    isa => InstanceOf ['Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap']
);

sub _build_interface { Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap->new() }

=head2 _auth_header

Convenience method for the auth header required for all requests.

=cut

sub _auth_header {
    my $self = shift;
    return {
        UserName => $self->username,
        Password => $self->password
    };
}

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
