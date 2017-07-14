package Shipment::GSO::WSDL::Types::GetDeliveryTimesResult;
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

my %DeliveryTimesInfo_of :ATTR(:get<DeliveryTimesInfo>);
my %Result_of :ATTR(:get<Result>);

__PACKAGE__->_factory(
    [ qw(        DeliveryTimesInfo
        Result

    ) ],
    {
        'DeliveryTimesInfo' => \%DeliveryTimesInfo_of,
        'Result' => \%Result_of,
    },
    {
        'DeliveryTimesInfo' => 'Shipment::GSO::WSDL::Types::ArrayOfDeliveryTimesInfo',
        'Result' => 'Shipment::GSO::WSDL::Types::Result',
    },
    {

        'DeliveryTimesInfo' => 'DeliveryTimesInfo',
        'Result' => 'Result',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::GetDeliveryTimesResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetDeliveryTimesResult from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DeliveryTimesInfo


=item * Result




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::GetDeliveryTimesResult
   DeliveryTimesInfo =>  { # Shipment::GSO::WSDL::Types::ArrayOfDeliveryTimesInfo
     DeliveryTimesInfo =>  { # Shipment::GSO::WSDL::Types::DeliveryTimesInfo
       DeliveryLocation =>  { # Shipment::GSO::WSDL::Types::DeliveryLocation
         City =>  $some_value, # string
         ZipCode =>  $some_value, # string
       },
       DeliveryTimes =>  { # Shipment::GSO::WSDL::Types::ArrayOfDeliveryTime
         DeliveryTime =>  { # Shipment::GSO::WSDL::Types::DeliveryTime
           ServiceCode =>  $some_value, # string
           ServiceDescription =>  $some_value, # string
           GuaranteedDeliveryTime =>  $some_value, # string
         },
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

