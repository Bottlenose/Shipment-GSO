package Shipment::GSO::WSDL::Types::Pickup;
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
my %ShipperCompany_of :ATTR(:get<ShipperCompany>);
my %ShipperContact_of :ATTR(:get<ShipperContact>);
my %ShipperPhone_of :ATTR(:get<ShipperPhone>);
my %ShipperEmail_of :ATTR(:get<ShipperEmail>);
my %PickupAddress1_of :ATTR(:get<PickupAddress1>);
my %PickupAddress2_of :ATTR(:get<PickupAddress2>);
my %PickupCity_of :ATTR(:get<PickupCity>);
my %PickupState_of :ATTR(:get<PickupState>);
my %PickupZip_of :ATTR(:get<PickupZip>);
my %PickupInstructions_of :ATTR(:get<PickupInstructions>);
my %EarliestPickupTime_of :ATTR(:get<EarliestPickupTime>);
my %LatestPickupTime_of :ATTR(:get<LatestPickupTime>);
my %PickupDate_of :ATTR(:get<PickupDate>);
my %PickupNotification_of :ATTR(:get<PickupNotification>);
my %NumPackages_of :ATTR(:get<NumPackages>);
my %TotalWeight_of :ATTR(:get<TotalWeight>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        ShipperCompany
        ShipperContact
        ShipperPhone
        ShipperEmail
        PickupAddress1
        PickupAddress2
        PickupCity
        PickupState
        PickupZip
        PickupInstructions
        EarliestPickupTime
        LatestPickupTime
        PickupDate
        PickupNotification
        NumPackages
        TotalWeight

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'ShipperCompany' => \%ShipperCompany_of,
        'ShipperContact' => \%ShipperContact_of,
        'ShipperPhone' => \%ShipperPhone_of,
        'ShipperEmail' => \%ShipperEmail_of,
        'PickupAddress1' => \%PickupAddress1_of,
        'PickupAddress2' => \%PickupAddress2_of,
        'PickupCity' => \%PickupCity_of,
        'PickupState' => \%PickupState_of,
        'PickupZip' => \%PickupZip_of,
        'PickupInstructions' => \%PickupInstructions_of,
        'EarliestPickupTime' => \%EarliestPickupTime_of,
        'LatestPickupTime' => \%LatestPickupTime_of,
        'PickupDate' => \%PickupDate_of,
        'PickupNotification' => \%PickupNotification_of,
        'NumPackages' => \%NumPackages_of,
        'TotalWeight' => \%TotalWeight_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'ShipperCompany' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperContact' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperPhone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ShipperEmail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupAddress1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupAddress2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupCity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupState' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupZip' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupInstructions' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'EarliestPickupTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'LatestPickupTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'PickupDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'PickupNotification' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'NumPackages' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'TotalWeight' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'ShipperCompany' => 'ShipperCompany',
        'ShipperContact' => 'ShipperContact',
        'ShipperPhone' => 'ShipperPhone',
        'ShipperEmail' => 'ShipperEmail',
        'PickupAddress1' => 'PickupAddress1',
        'PickupAddress2' => 'PickupAddress2',
        'PickupCity' => 'PickupCity',
        'PickupState' => 'PickupState',
        'PickupZip' => 'PickupZip',
        'PickupInstructions' => 'PickupInstructions',
        'EarliestPickupTime' => 'EarliestPickupTime',
        'LatestPickupTime' => 'LatestPickupTime',
        'PickupDate' => 'PickupDate',
        'PickupNotification' => 'PickupNotification',
        'NumPackages' => 'NumPackages',
        'TotalWeight' => 'TotalWeight',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Types::Pickup

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Pickup from the namespace http://gso.com/GsoShipWS.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber


=item * ShipperCompany


=item * ShipperContact


=item * ShipperPhone


=item * ShipperEmail


=item * PickupAddress1


=item * PickupAddress2


=item * PickupCity


=item * PickupState


=item * PickupZip


=item * PickupInstructions


=item * EarliestPickupTime


=item * LatestPickupTime


=item * PickupDate


=item * PickupNotification


=item * NumPackages


=item * TotalWeight




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::GSO::WSDL::Types::Pickup
   AccountNumber =>  $some_value, # int
   ShipperCompany =>  $some_value, # string
   ShipperContact =>  $some_value, # string
   ShipperPhone =>  $some_value, # string
   ShipperEmail =>  $some_value, # string
   PickupAddress1 =>  $some_value, # string
   PickupAddress2 =>  $some_value, # string
   PickupCity =>  $some_value, # string
   PickupState =>  $some_value, # string
   PickupZip =>  $some_value, # string
   PickupInstructions =>  $some_value, # string
   EarliestPickupTime =>  $some_value, # string
   LatestPickupTime =>  $some_value, # string
   PickupDate =>  $some_value, # dateTime
   PickupNotification =>  $some_value, # boolean
   NumPackages =>  $some_value, # int
   TotalWeight =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

