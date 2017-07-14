package Shipment::GSO::WSDL::Types::VoidShipmentRequest;
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

my %AccountNumber_of :ATTR(:get<AccountNumber>);
my %TrackingNumber_of :ATTR(:get<TrackingNumber>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        TrackingNumber

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'TrackingNumber' => \%TrackingNumber_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'TrackingNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'TrackingNumber' => 'TrackingNumber',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::VoidShipmentRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
VoidShipmentRequest from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber


=item * TrackingNumber




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::VoidShipmentRequest
   AccountNumber =>  $some_value, # int
   TrackingNumber =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

