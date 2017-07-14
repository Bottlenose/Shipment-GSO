
package Shipment::GSO::WSDL::Elements::TrackOnCallPickupResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://gso.com/GsoShipWS' }

__PACKAGE__->__set_name('TrackOnCallPickupResponse');
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

my %TrackOnCallPickupResult_of :ATTR(:get<TrackOnCallPickupResult>);

__PACKAGE__->_factory(
    [ qw(        TrackOnCallPickupResult

    ) ],
    {
        'TrackOnCallPickupResult' => \%TrackOnCallPickupResult_of,
    },
    {
        'TrackOnCallPickupResult' => 'Shipment::GSO::WSDL::Types::TrackOnCallPickupResult',
    },
    {

        'TrackOnCallPickupResult' => 'TrackOnCallPickupResult',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Shipment::GSO::WSDL::Elements::TrackOnCallPickupResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
TrackOnCallPickupResponse from the namespace http://gso.com/GsoShipWS.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TrackOnCallPickupResult

 $element->set_TrackOnCallPickupResult($data);
 $element->get_TrackOnCallPickupResult();





=back


=head1 METHODS

=head2 new

 my $element = Shipment::GSO::WSDL::Elements::TrackOnCallPickupResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   TrackOnCallPickupResult =>  { # Shipment::GSO::WSDL::Types::TrackOnCallPickupResult
     Pickups =>  { # Shipment::GSO::WSDL::Types::ArrayOfTrackPickupResult
       TrackPickupResult =>  { # Shipment::GSO::WSDL::Types::TrackPickupResult
         ConfirmationNumber =>  $some_value, # int
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
         Status =>  $some_value, # string
         StatusReason =>  $some_value, # string
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

