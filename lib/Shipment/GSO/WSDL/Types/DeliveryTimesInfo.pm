package Shipment::GSO::WSDL::Types::DeliveryTimesInfo;
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

my %DeliveryLocation_of :ATTR(:get<DeliveryLocation>);
my %DeliveryTimes_of :ATTR(:get<DeliveryTimes>);

__PACKAGE__->_factory(
    [ qw(        DeliveryLocation
        DeliveryTimes

    ) ],
    {
        'DeliveryLocation' => \%DeliveryLocation_of,
        'DeliveryTimes' => \%DeliveryTimes_of,
    },
    {
        'DeliveryLocation' => 'Shipment::GSO::WSDL::Types::DeliveryLocation',
        'DeliveryTimes' => 'Shipment::GSO::WSDL::Types::ArrayOfDeliveryTime',
    },
    {

        'DeliveryLocation' => 'DeliveryLocation',
        'DeliveryTimes' => 'DeliveryTimes',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::DeliveryTimesInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DeliveryTimesInfo from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DeliveryLocation


=item * DeliveryTimes




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::DeliveryTimesInfo
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




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
