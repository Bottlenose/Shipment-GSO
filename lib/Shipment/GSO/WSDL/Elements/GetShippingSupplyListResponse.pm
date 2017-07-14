
package Shipment::GSO::WSDL::Elements::GetShippingSupplyListResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://gso.com/GsoShipWS' }

__PACKAGE__->__set_name('GetShippingSupplyListResponse');
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

my %GetShippingSupplyListResult_of :ATTR(:get<GetShippingSupplyListResult>);

__PACKAGE__->_factory(
    [ qw(        GetShippingSupplyListResult

    ) ],
    {
        'GetShippingSupplyListResult' => \%GetShippingSupplyListResult_of,
    },
    {
        'GetShippingSupplyListResult' => 'Shipment::GSO::WSDL::Types::GetShippingSupplyListResult',
    },
    {

        'GetShippingSupplyListResult' => 'GetShippingSupplyListResult',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Elements::GetShippingSupplyListResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetShippingSupplyListResponse from the namespace http://gso.com/GsoShipWS.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * GetShippingSupplyListResult

 $element->set_GetShippingSupplyListResult($data);
 $element->get_GetShippingSupplyListResult();





=back


=head1 METHODS

=head2 new

 my $element = Shipment::GSO::WSDL::Elements::GetShippingSupplyListResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   GetShippingSupplyListResult =>  { # Shipment::GSO::WSDL::Types::GetShippingSupplyListResult
     SupplyItem =>  { # Shipment::GSO::WSDL::Types::ArrayOfSupplyItem
       SupplyItem =>  { # Shipment::GSO::WSDL::Types::SupplyItem
         Number =>  $some_value, # string
         Description =>  $some_value, # string
       },
     },
     Result =>  { # Shipment::GSO::WSDL::Types::Result
       Code =>  $some_value, # int
       Message =>  $some_value, # string
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

