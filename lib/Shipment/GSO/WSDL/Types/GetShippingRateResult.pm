package Shipment::GSO::WSDL::Types::GetShippingRateResult;
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

my %ShipmentCharges_of :ATTR(:get<ShipmentCharges>);
my %Result_of :ATTR(:get<Result>);

__PACKAGE__->_factory(
    [ qw(        ShipmentCharges
        Result

    ) ],
    {
        'ShipmentCharges' => \%ShipmentCharges_of,
        'Result' => \%Result_of,
    },
    {
        'ShipmentCharges' => 'Shipment::GSO::WSDL::Types::ShipmentCharges',
        'Result' => 'Shipment::GSO::WSDL::Types::Result',
    },
    {

        'ShipmentCharges' => 'ShipmentCharges',
        'Result' => 'Result',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::GetShippingRateResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetShippingRateResult from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ShipmentCharges


=item * Result




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::GetShippingRateResult
   ShipmentCharges =>  { # Shipment::GSO::WSDL::Types::ShipmentCharges
     TransportationCharge =>  $some_value, # decimal
     CODCharge =>  $some_value, # decimal
     InsuranceCharge =>  $some_value, # decimal
     OtherCharge =>  $some_value, # decimal
     FuelSurcharge =>  $some_value, # decimal
     TotalCharge =>  $some_value, # decimal
   },
   Result =>  { # Shipment::GSO::WSDL::Types::Result
     Code =>  $some_value, # int
     Message =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

