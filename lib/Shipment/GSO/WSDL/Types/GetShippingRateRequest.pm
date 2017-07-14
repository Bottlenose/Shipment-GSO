package Shipment::GSO::WSDL::Types::GetShippingRateRequest;
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
my %OriginZip_of :ATTR(:get<OriginZip>);
my %DestinationZip_of :ATTR(:get<DestinationZip>);
my %PackageWeight_of :ATTR(:get<PackageWeight>);
my %ServiceCode_of :ATTR(:get<ServiceCode>);
my %DeclaredValue_of :ATTR(:get<DeclaredValue>);
my %CODValue_of :ATTR(:get<CODValue>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        OriginZip
        DestinationZip
        PackageWeight
        ServiceCode
        DeclaredValue
        CODValue

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'OriginZip' => \%OriginZip_of,
        'DestinationZip' => \%DestinationZip_of,
        'PackageWeight' => \%PackageWeight_of,
        'ServiceCode' => \%ServiceCode_of,
        'DeclaredValue' => \%DeclaredValue_of,
        'CODValue' => \%CODValue_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'OriginZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DestinationZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PackageWeight' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'ServiceCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeclaredValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::decimal',
        'CODValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::decimal',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'OriginZip' => 'OriginZip',
        'DestinationZip' => 'DestinationZip',
        'PackageWeight' => 'PackageWeight',
        'ServiceCode' => 'ServiceCode',
        'DeclaredValue' => 'DeclaredValue',
        'CODValue' => 'CODValue',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::GetShippingRateRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetShippingRateRequest from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber


=item * OriginZip


=item * DestinationZip


=item * PackageWeight


=item * ServiceCode


=item * DeclaredValue


=item * CODValue




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::GetShippingRateRequest
   AccountNumber =>  $some_value, # int
   OriginZip =>  $some_value, # string
   DestinationZip =>  $some_value, # string
   PackageWeight =>  $some_value, # int
   ServiceCode =>  $some_value, # string
   DeclaredValue =>  $some_value, # decimal
   CODValue =>  $some_value, # decimal
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

