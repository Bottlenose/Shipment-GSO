package Shipment::GSO::WSDL::Types::ArrayOfSupplyOrderInfo;
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

my %SupplyOrderInfo_of :ATTR(:get<SupplyOrderInfo>);

__PACKAGE__->_factory(
    [ qw(        SupplyOrderInfo

    ) ],
    {
        'SupplyOrderInfo' => \%SupplyOrderInfo_of,
    },
    {
        'SupplyOrderInfo' => 'Shipment::GSO::WSDL::Types::SupplyOrderInfo',
    },
    {

        'SupplyOrderInfo' => 'SupplyOrderInfo',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::ArrayOfSupplyOrderInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfSupplyOrderInfo from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SupplyOrderInfo




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::ArrayOfSupplyOrderInfo
   SupplyOrderInfo =>  { # Shipment::GSO::WSDL::Types::SupplyOrderInfo
     SupplyOrder =>  { # Shipment::GSO::WSDL::Types::SupplyOrder
       AccountNumber =>  $some_value, # int
       ShipToCompany =>  $some_value, # string
       ShipToAttention =>  $some_value, # string
       ShipToPhone =>  $some_value, # string
       ShipToEmail =>  $some_value, # string
       DeliveryAddress1 =>  $some_value, # string
       DeliveryAddress2 =>  $some_value, # string
       DeliveryCity =>  $some_value, # string
       DeliveryState =>  $some_value, # string
       DeliveryZip =>  $some_value, # string
       OrderNotes =>  $some_value, # string
       DeliveryNotes =>  $some_value, # string
     },
     SupplyOrderItems =>  { # Shipment::GSO::WSDL::Types::ArrayOfSupplyOrderItem
       SupplyOrderItem =>  { # Shipment::GSO::WSDL::Types::SupplyOrderItem
         Number =>  $some_value, # string
         Description =>  $some_value, # string
         Quantity =>  $some_value, # int
       },
     },
     TrackingInfo =>  { # Shipment::GSO::WSDL::Types::TrackingInfo
       OrderId =>  $some_value, # int
       OrderDate =>  $some_value, # dateTime
       OrderStatus =>  $some_value, # string
       ShipDate =>  $some_value, # dateTime
       TrackingNumber =>  $some_value, # string
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
