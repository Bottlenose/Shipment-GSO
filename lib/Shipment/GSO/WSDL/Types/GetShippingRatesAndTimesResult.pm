package Shipment::GSO::WSDL::Types::GetShippingRatesAndTimesResult;
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

my %OriginZip_of :ATTR(:get<OriginZip>);
my %OriginCity_of :ATTR(:get<OriginCity>);
my %DestinationZip_of :ATTR(:get<DestinationZip>);
my %DestinationCity_of :ATTR(:get<DestinationCity>);
my %DeliveryServices_of :ATTR(:get<DeliveryServices>);
my %Result_of :ATTR(:get<Result>);

__PACKAGE__->_factory(
    [ qw(        OriginZip
        OriginCity
        DestinationZip
        DestinationCity
        DeliveryServices
        Result

    ) ],
    {
        'OriginZip' => \%OriginZip_of,
        'OriginCity' => \%OriginCity_of,
        'DestinationZip' => \%DestinationZip_of,
        'DestinationCity' => \%DestinationCity_of,
        'DeliveryServices' => \%DeliveryServices_of,
        'Result' => \%Result_of,
    },
    {
        'OriginZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'OriginCity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DestinationZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DestinationCity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryServices' => 'Shipment::GSO::WSDL::Types::ArrayOfDeliveryService',
        'Result' => 'Shipment::GSO::WSDL::Types::Result',
    },
    {

        'OriginZip' => 'OriginZip',
        'OriginCity' => 'OriginCity',
        'DestinationZip' => 'DestinationZip',
        'DestinationCity' => 'DestinationCity',
        'DeliveryServices' => 'DeliveryServices',
        'Result' => 'Result',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::GetShippingRatesAndTimesResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetShippingRatesAndTimesResult from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * OriginZip


=item * OriginCity


=item * DestinationZip


=item * DestinationCity


=item * DeliveryServices


=item * Result




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::GetShippingRatesAndTimesResult
   OriginZip =>  $some_value, # string
   OriginCity =>  $some_value, # string
   DestinationZip =>  $some_value, # string
   DestinationCity =>  $some_value, # string
   DeliveryServices =>  { # Shipment::GSO::WSDL::Types::ArrayOfDeliveryService
     DeliveryService =>  { # Shipment::GSO::WSDL::Types::DeliveryService
       ServiceCode =>  $some_value, # string
       ServiceDescription =>  $some_value, # string
       GuaranteedDeliveryDateTime =>  $some_value, # dateTime
       ShipmentCharges =>  { # Shipment::GSO::WSDL::Types::ShipmentCharges
         TransportationCharge =>  $some_value, # decimal
         CODCharge =>  $some_value, # decimal
         InsuranceCharge =>  $some_value, # decimal
         OtherCharge =>  $some_value, # decimal
         FuelSurcharge =>  $some_value, # decimal
         TotalCharge =>  $some_value, # decimal
       },
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
