package Shipment::GSO::WSDL::Types::SubmitShipmentResult;
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

my %SubmitShipmentInfo_of :ATTR(:get<SubmitShipmentInfo>);
my %ShipmentCharges_of :ATTR(:get<ShipmentCharges>);
my %Label_of :ATTR(:get<Label>);
my %Result_of :ATTR(:get<Result>);

__PACKAGE__->_factory(
    [ qw(        SubmitShipmentInfo
        ShipmentCharges
        Label
        Result

    ) ],
    {
        'SubmitShipmentInfo' => \%SubmitShipmentInfo_of,
        'ShipmentCharges' => \%ShipmentCharges_of,
        'Label' => \%Label_of,
        'Result' => \%Result_of,
    },
    {
        'SubmitShipmentInfo' => 'Shipment::GSO::WSDL::Types::SubmitShipmentInfo',
        'ShipmentCharges' => 'Shipment::GSO::WSDL::Types::ShipmentCharges',
        'Label' => 'Shipment::GSO::WSDL::Types::Label',
        'Result' => 'Shipment::GSO::WSDL::Types::Result',
    },
    {

        'SubmitShipmentInfo' => 'SubmitShipmentInfo',
        'ShipmentCharges' => 'ShipmentCharges',
        'Label' => 'Label',
        'Result' => 'Result',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::SubmitShipmentResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SubmitShipmentResult from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SubmitShipmentInfo


=item * ShipmentCharges


=item * Label


=item * Result




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::SubmitShipmentResult
   SubmitShipmentInfo =>  { # Shipment::GSO::WSDL::Types::SubmitShipmentInfo
     AccountNumber =>  $some_value, # int
     TrackingNumber =>  $some_value, # string
   },
   ShipmentCharges =>  { # Shipment::GSO::WSDL::Types::ShipmentCharges
     TransportationCharge =>  $some_value, # decimal
     CODCharge =>  $some_value, # decimal
     InsuranceCharge =>  $some_value, # decimal
     OtherCharge =>  $some_value, # decimal
     FuelSurcharge =>  $some_value, # decimal
     TotalCharge =>  $some_value, # decimal
   },
   Label =>  { # Shipment::GSO::WSDL::Types::Label
     Paper =>  $some_value, # base64Binary
     Thermal =>  $some_value, # string
   },
   Result =>  { # Shipment::GSO::WSDL::Types::Result
     Code =>  $some_value, # int
     Message =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

