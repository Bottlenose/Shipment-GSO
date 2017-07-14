package Shipment::GSO::WSDL::Types::Package;
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
my %ShipperCompany_of :ATTR(:get<ShipperCompany>);
my %ShipperContact_of :ATTR(:get<ShipperContact>);
my %ShipperPhone_of :ATTR(:get<ShipperPhone>);
my %ShipperEmail_of :ATTR(:get<ShipperEmail>);
my %PickupAddress1_of :ATTR(:get<PickupAddress1>);
my %PickupAddress2_of :ATTR(:get<PickupAddress2>);
my %PickupCity_of :ATTR(:get<PickupCity>);
my %PickupState_of :ATTR(:get<PickupState>);
my %PickupZip_of :ATTR(:get<PickupZip>);
my %ShipToCompany_of :ATTR(:get<ShipToCompany>);
my %ShipToAttention_of :ATTR(:get<ShipToAttention>);
my %ShipToPhone_of :ATTR(:get<ShipToPhone>);
my %ShipToEmail_of :ATTR(:get<ShipToEmail>);
my %DeliveryAddress1_of :ATTR(:get<DeliveryAddress1>);
my %DeliveryAddress2_of :ATTR(:get<DeliveryAddress2>);
my %DeliveryCity_of :ATTR(:get<DeliveryCity>);
my %DeliveryState_of :ATTR(:get<DeliveryState>);
my %DeliveryZip_of :ATTR(:get<DeliveryZip>);
my %ServiceCode_of :ATTR(:get<ServiceCode>);
my %ShipmentReference_of :ATTR(:get<ShipmentReference>);
my %DeclaredValue_of :ATTR(:get<DeclaredValue>);
my %CODValue_of :ATTR(:get<CODValue>);
my %SpecialInstructions_of :ATTR(:get<SpecialInstructions>);
my %Weight_of :ATTR(:get<Weight>);
my %SignatureCode_of :ATTR(:get<SignatureCode>);
my %AddnShipperReference1_of :ATTR(:get<AddnShipperReference1>);
my %AddnShipperReference2_of :ATTR(:get<AddnShipperReference2>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        TrackingNumber
        ShipperCompany
        ShipperContact
        ShipperPhone
        ShipperEmail
        PickupAddress1
        PickupAddress2
        PickupCity
        PickupState
        PickupZip
        ShipToCompany
        ShipToAttention
        ShipToPhone
        ShipToEmail
        DeliveryAddress1
        DeliveryAddress2
        DeliveryCity
        DeliveryState
        DeliveryZip
        ServiceCode
        ShipmentReference
        DeclaredValue
        CODValue
        SpecialInstructions
        Weight
        SignatureCode
        AddnShipperReference1
        AddnShipperReference2

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'TrackingNumber' => \%TrackingNumber_of,
        'ShipperCompany' => \%ShipperCompany_of,
        'ShipperContact' => \%ShipperContact_of,
        'ShipperPhone' => \%ShipperPhone_of,
        'ShipperEmail' => \%ShipperEmail_of,
        'PickupAddress1' => \%PickupAddress1_of,
        'PickupAddress2' => \%PickupAddress2_of,
        'PickupCity' => \%PickupCity_of,
        'PickupState' => \%PickupState_of,
        'PickupZip' => \%PickupZip_of,
        'ShipToCompany' => \%ShipToCompany_of,
        'ShipToAttention' => \%ShipToAttention_of,
        'ShipToPhone' => \%ShipToPhone_of,
        'ShipToEmail' => \%ShipToEmail_of,
        'DeliveryAddress1' => \%DeliveryAddress1_of,
        'DeliveryAddress2' => \%DeliveryAddress2_of,
        'DeliveryCity' => \%DeliveryCity_of,
        'DeliveryState' => \%DeliveryState_of,
        'DeliveryZip' => \%DeliveryZip_of,
        'ServiceCode' => \%ServiceCode_of,
        'ShipmentReference' => \%ShipmentReference_of,
        'DeclaredValue' => \%DeclaredValue_of,
        'CODValue' => \%CODValue_of,
        'SpecialInstructions' => \%SpecialInstructions_of,
        'Weight' => \%Weight_of,
        'SignatureCode' => \%SignatureCode_of,
        'AddnShipperReference1' => \%AddnShipperReference1_of,
        'AddnShipperReference2' => \%AddnShipperReference2_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'TrackingNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperCompany' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperContact' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperPhone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperEmail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupAddress1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupAddress2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupCity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupState' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipToCompany' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipToAttention' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipToPhone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipToEmail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryAddress1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryAddress2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryCity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryState' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeliveryZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ServiceCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipmentReference' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeclaredValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::decimal',
        'CODValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::decimal',
        'SpecialInstructions' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Weight' => 'SOAP::WSDL::XSD::Typelib::Builtin::decimal',
        'SignatureCode' => 'Shipment::GSO::WSDL::Types::SignatureType',
        'AddnShipperReference1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AddnShipperReference2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'TrackingNumber' => 'TrackingNumber',
        'ShipperCompany' => 'ShipperCompany',
        'ShipperContact' => 'ShipperContact',
        'ShipperPhone' => 'ShipperPhone',
        'ShipperEmail' => 'ShipperEmail',
        'PickupAddress1' => 'PickupAddress1',
        'PickupAddress2' => 'PickupAddress2',
        'PickupCity' => 'PickupCity',
        'PickupState' => 'PickupState',
        'PickupZip' => 'PickupZip',
        'ShipToCompany' => 'ShipToCompany',
        'ShipToAttention' => 'ShipToAttention',
        'ShipToPhone' => 'ShipToPhone',
        'ShipToEmail' => 'ShipToEmail',
        'DeliveryAddress1' => 'DeliveryAddress1',
        'DeliveryAddress2' => 'DeliveryAddress2',
        'DeliveryCity' => 'DeliveryCity',
        'DeliveryState' => 'DeliveryState',
        'DeliveryZip' => 'DeliveryZip',
        'ServiceCode' => 'ServiceCode',
        'ShipmentReference' => 'ShipmentReference',
        'DeclaredValue' => 'DeclaredValue',
        'CODValue' => 'CODValue',
        'SpecialInstructions' => 'SpecialInstructions',
        'Weight' => 'Weight',
        'SignatureCode' => 'SignatureCode',
        'AddnShipperReference1' => 'AddnShipperReference1',
        'AddnShipperReference2' => 'AddnShipperReference2',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::Package

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Package from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber


=item * TrackingNumber


=item * ShipperCompany


=item * ShipperContact


=item * ShipperPhone


=item * ShipperEmail


=item * PickupAddress1


=item * PickupAddress2


=item * PickupCity


=item * PickupState


=item * PickupZip


=item * ShipToCompany


=item * ShipToAttention


=item * ShipToPhone


=item * ShipToEmail


=item * DeliveryAddress1


=item * DeliveryAddress2


=item * DeliveryCity


=item * DeliveryState


=item * DeliveryZip


=item * ServiceCode


=item * ShipmentReference


=item * DeclaredValue


=item * CODValue


=item * SpecialInstructions


=item * Weight


=item * SignatureCode


=item * AddnShipperReference1


=item * AddnShipperReference2




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::Package
   AccountNumber =>  $some_value, # int
   TrackingNumber =>  $some_value, # string
   ShipperCompany =>  $some_value, # string
   ShipperContact =>  $some_value, # string
   ShipperPhone =>  $some_value, # string
   ShipperEmail =>  $some_value, # string
   PickupAddress1 =>  $some_value, # string
   PickupAddress2 =>  $some_value, # string
   PickupCity =>  $some_value, # string
   PickupState =>  $some_value, # string
   PickupZip =>  $some_value, # string
   ShipToCompany =>  $some_value, # string
   ShipToAttention =>  $some_value, # string
   ShipToPhone =>  $some_value, # string
   ShipToEmail =>  $some_value, # string
   DeliveryAddress1 =>  $some_value, # string
   DeliveryAddress2 =>  $some_value, # string
   DeliveryCity =>  $some_value, # string
   DeliveryState =>  $some_value, # string
   DeliveryZip =>  $some_value, # string
   ServiceCode =>  $some_value, # string
   ShipmentReference =>  $some_value, # string
   DeclaredValue =>  $some_value, # decimal
   CODValue =>  $some_value, # decimal
   SpecialInstructions =>  $some_value, # string
   Weight =>  $some_value, # decimal
   SignatureCode => $some_value, # SignatureType
   AddnShipperReference1 =>  $some_value, # string
   AddnShipperReference2 =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

