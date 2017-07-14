
package Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrder;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://gso.com/GsoShipWS' }

__PACKAGE__->__set_name('TrackShippingSupplyOrder');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %TrackShippingSupplyOrderRequest_of :ATTR(:get<TrackShippingSupplyOrderRequest>);

__PACKAGE__->_factory(
    [ qw(        TrackShippingSupplyOrderRequest

    ) ],
    {
        'TrackShippingSupplyOrderRequest' => \%TrackShippingSupplyOrderRequest_of,
    },
    {
        'TrackShippingSupplyOrderRequest' => 'Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest',
    },
    {

        'TrackShippingSupplyOrderRequest' => 'TrackShippingSupplyOrderRequest',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrder

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
TrackShippingSupplyOrder from the namespace http://gso.com/GsoShipWS.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TrackShippingSupplyOrderRequest

 $element->set_TrackShippingSupplyOrderRequest($data);
 $element->get_TrackShippingSupplyOrderRequest();





=back


=head1 METHODS

=head2 new

 my $element = Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrder->new($data);

Constructor. The following data structure may be passed to new():

 {
   TrackShippingSupplyOrderRequest =>  { # Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest
     AccountNumber =>  $some_value, # int
     SearchType => $some_value, # SupplyOrderSearchType
     SearchValue =>  $some_value, # string
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

