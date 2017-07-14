
package Shipment::GSO::WSDL::Elements::GetDropBoxInfo;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://gso.com/GsoShipWS' }

__PACKAGE__->__set_name('GetDropBoxInfo');
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

my %GetDropBoxInfoRequest_of :ATTR(:get<GetDropBoxInfoRequest>);

__PACKAGE__->_factory(
    [ qw(        GetDropBoxInfoRequest

    ) ],
    {
        'GetDropBoxInfoRequest' => \%GetDropBoxInfoRequest_of,
    },
    {
        'GetDropBoxInfoRequest' => 'Shipment::GSO::WSDL::Types::GetDropBoxInfoRequest',
    },
    {

        'GetDropBoxInfoRequest' => 'GetDropBoxInfoRequest',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Elements::GetDropBoxInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetDropBoxInfo from the namespace http://gso.com/GsoShipWS.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * GetDropBoxInfoRequest

 $element->set_GetDropBoxInfoRequest($data);
 $element->get_GetDropBoxInfoRequest();





=back


=head1 METHODS

=head2 new

 my $element = Shipment::GSO::WSDL::Elements::GetDropBoxInfo->new($data);

Constructor. The following data structure may be passed to new():

 {
   GetDropBoxInfoRequest =>  { # Shipment::GSO::WSDL::Types::GetDropBoxInfoRequest
     Address =>  $some_value, # string
     City =>  $some_value, # string
     State =>  $some_value, # string
     Zip =>  $some_value, # string
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
