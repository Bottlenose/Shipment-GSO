package Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest;
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
my %SearchType_of :ATTR(:get<SearchType>);
my %SearchValue_of :ATTR(:get<SearchValue>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        SearchType
        SearchValue

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'SearchType' => \%SearchType_of,
        'SearchValue' => \%SearchValue_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'SearchType' => 'Shipment::GSO::WSDL::Types::SupplyOrderSearchType',
        'SearchValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'SearchType' => 'SearchType',
        'SearchValue' => 'SearchValue',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrackShippingSupplyOrderRequest from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber


=item * SearchType


=item * SearchValue




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest
   AccountNumber =>  $some_value, # int
   SearchType => $some_value, # SupplyOrderSearchType
   SearchValue =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
