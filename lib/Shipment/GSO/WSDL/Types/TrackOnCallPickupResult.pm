package Shipment::GSO::WSDL::Types::TrackOnCallPickupResult;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://gso.com/GsoShipWS' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Pickups_of :ATTR(:get<Pickups>);
my %Result_of :ATTR(:get<Result>);

__PACKAGE__->_factory(
    [ qw(        Pickups
        Result

    ) ],
    {
        'Pickups' => \%Pickups_of,
        'Result' => \%Result_of,
    },
    {
        'Pickups' => 'Shipment::GSO::WSDL::Types::ArrayOfTrackPickupResult',
        'Result' => 'Shipment::GSO::WSDL::Types::Result',
    },
    {

        'Pickups' => 'Pickups',
        'Result' => 'Result',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::TrackOnCallPickupResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrackOnCallPickupResult from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Pickups


=item * Result




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::TrackOnCallPickupResult
   Pickups =>  { # Shipment::GSO::WSDL::Types::ArrayOfTrackPickupResult
     TrackPickupResult =>  { # Shipment::GSO::WSDL::Types::TrackPickupResult
       ConfirmationNumber =>  $some_value, # int
       AccountNumber =>  $some_value, # int
       ShipperCompany =>  $some_value, # string
       ShipperContact =>  $some_value, # string
       ShipperPhone =>  $some_value, # string
       ShipperEmail =>  $some_value, # string
       PickupAddress1 =>  $some_value, # string
       PickupAddress2 =>  $some_value, # string
       PickupCity =>  $some_value, # string
       PickupState =>  $some_value, # string
       PickupZip =>  $some_value, # string
       PickupInstructions =>  $some_value, # string
       EarliestPickupTime =>  $some_value, # string
       LatestPickupTime =>  $some_value, # string
       PickupDate =>  $some_value, # dateTime
       PickupNotification =>  $some_value, # boolean
       NumPackages =>  $some_value, # int
       TotalWeight =>  $some_value, # int
       Status =>  $some_value, # string
       StatusReason =>  $some_value, # string
     },
   },
   Result =>  { # Shipment::GSO::WSDL::Types::Result
     Code =>  $some_value, # int
     Message =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

