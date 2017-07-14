package Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Shipment::GSO::WSDL::Typemaps::GSOWebService
    if not Shipment::GSO::WSDL::Typemaps::GSOWebService->can('get_class');

sub START {
    $_[0]->set_proxy('http://wsa.gso.com/GSOShipWS1.0/GSOShipWS.asmx') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Shipment::GSO::WSDL::Typemaps::GSOWebService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub SubmitShipment {
    my ($self, $body, $header) = @_;
    die "SubmitShipment must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'SubmitShipment',
        soap_action => 'http://gso.com/GsoShipWS/SubmitShipment',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::SubmitShipment )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub VoidShipment {
    my ($self, $body, $header) = @_;
    die "VoidShipment must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'VoidShipment',
        soap_action => 'http://gso.com/GsoShipWS/VoidShipment',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::VoidShipment )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub TrackShipment {
    my ($self, $body, $header) = @_;
    die "TrackShipment must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'TrackShipment',
        soap_action => 'http://gso.com/GsoShipWS/TrackShipment',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::TrackShipment )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetShippingActivity {
    my ($self, $body, $header) = @_;
    die "GetShippingActivity must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetShippingActivity',
        soap_action => 'http://gso.com/GsoShipWS/GetShippingActivity',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetShippingActivity )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetDeliveryTimes {
    my ($self, $body, $header) = @_;
    die "GetDeliveryTimes must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetDeliveryTimes',
        soap_action => 'http://gso.com/GsoShipWS/GetDeliveryTimes',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetDeliveryTimes )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetServiceTypes {
    my ($self, $body, $header) = @_;
    die "GetServiceTypes must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetServiceTypes',
        soap_action => 'http://gso.com/GsoShipWS/GetServiceTypes',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetServiceTypes )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetShippingRate {
    my ($self, $body, $header) = @_;
    die "GetShippingRate must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetShippingRate',
        soap_action => 'http://gso.com/GsoShipWS/GetShippingRate',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetShippingRate )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetShippingRatesAndTimes {
    my ($self, $body, $header) = @_;
    die "GetShippingRatesAndTimes must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetShippingRatesAndTimes',
        soap_action => 'http://gso.com/GsoShipWS/GetShippingRatesAndTimes',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetShippingRatesAndTimes )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetDropBoxInfo {
    my ($self, $body, $header) = @_;
    die "GetDropBoxInfo must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetDropBoxInfo',
        soap_action => 'http://gso.com/GsoShipWS/GetDropBoxInfo',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetDropBoxInfo )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub SubmitOnCallPickup {
    my ($self, $body, $header) = @_;
    die "SubmitOnCallPickup must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'SubmitOnCallPickup',
        soap_action => 'http://gso.com/GsoShipWS/SubmitOnCallPickup',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::SubmitOnCallPickup )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub TrackOnCallPickup {
    my ($self, $body, $header) = @_;
    die "TrackOnCallPickup must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'TrackOnCallPickup',
        soap_action => 'http://gso.com/GsoShipWS/TrackOnCallPickup',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::TrackOnCallPickup )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub GetShippingSupplyList {
    my ($self, $body, $header) = @_;
    die "GetShippingSupplyList must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'GetShippingSupplyList',
        soap_action => 'http://gso.com/GsoShipWS/GetShippingSupplyList',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::GetShippingSupplyList )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub SubmitShippingSupplyOrder {
    my ($self, $body, $header) = @_;
    die "SubmitShippingSupplyOrder must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'SubmitShippingSupplyOrder',
        soap_action => 'http://gso.com/GsoShipWS/SubmitShippingSupplyOrder',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::SubmitShippingSupplyOrder )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub TrackShippingSupplyOrder {
    my ($self, $body, $header) = @_;
    die "TrackShippingSupplyOrder must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'TrackShippingSupplyOrder',
        soap_action => 'http://gso.com/GsoShipWS/TrackShippingSupplyOrder',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrder )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Shipment::GSO::WSDL::Elements::AuthenticationHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap - SOAP Interface for the GSOWebService Web Service

=head1 SYNOPSIS

 use Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap;
 my $interface = Shipment::GSO::WSDL::Interfaces::GSOWebService::GSOWebServiceSoap->new();

 my $response;
 $response = $interface->SubmitShipment();
 $response = $interface->VoidShipment();
 $response = $interface->TrackShipment();
 $response = $interface->GetShippingActivity();
 $response = $interface->GetDeliveryTimes();
 $response = $interface->GetServiceTypes();
 $response = $interface->GetShippingRate();
 $response = $interface->GetShippingRatesAndTimes();
 $response = $interface->GetDropBoxInfo();
 $response = $interface->SubmitOnCallPickup();
 $response = $interface->TrackOnCallPickup();
 $response = $interface->GetShippingSupplyList();
 $response = $interface->SubmitShippingSupplyOrder();
 $response = $interface->TrackShippingSupplyOrder();



=head1 DESCRIPTION

SOAP Interface for the GSOWebService web service
located at http://wsa.gso.com/GSOShipWS1.0/GSOShipWS.asmx.

=head1 SERVICE GSOWebService



=head2 Port GSOWebServiceSoap



=head1 METHODS

=head2 General methods

=head3 new

Constructor.

All arguments are forwarded to L<SOAP::WSDL::Client|SOAP::WSDL::Client>.

=head2 SOAP Service methods

Method synopsis is displayed with hash refs as parameters.

The commented class names in the method's parameters denote that objects
of the corresponding class can be passed instead of the marked hash ref.

You may pass any combination of objects, hash and list refs to these
methods, as long as you meet the structure.

List items (i.e. multiple occurences) are not displayed in the synopsis.
You may generally pass a list ref of hash refs (or objects) instead of a hash
ref - this may result in invalid XML if used improperly, though. Note that
SOAP::WSDL always expects list references at maximum depth position.

XML attributes are not displayed in this synopsis and cannot be set using
hash refs. See the respective class' documentation for additional information.



=head3 SubmitShipment

Upload information about an outbound shipment to GSO.

Returns a L<Shipment::GSO::WSDL::Elements::SubmitShipmentResponse|Shipment::GSO::WSDL::Elements::SubmitShipmentResponse> object.

 $response = $interface->SubmitShipment( {
    Shipment =>  { # Shipment::GSO::WSDL::Types::SubmitShipmentRequest
      Package =>  { # Shipment::GSO::WSDL::Types::Package
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
      Notification =>  { # Shipment::GSO::WSDL::Types::Notification
        ShipmentNotification =>  $some_value, # string
        ExceptionNotification =>  $some_value, # string
        DeliveryNotification =>  $some_value, # string
        ReceiptNotification =>  $some_value, # string
        ShipmentNotificationComments =>  $some_value, # string
        ExceptionNotificationComments =>  $some_value, # string
        DeliveryNotificationComments =>  $some_value, # string
        ReceiptNotificationComments =>  $some_value, # string
      },
      ShipmentLabel =>  { # Shipment::GSO::WSDL::Types::ShipmentLabel
        Type => $some_value, # LabelType
      },
    },
  },,
 );

=head3 VoidShipment

Cancel a shipment that has been uploaded to GSO.

Returns a L<Shipment::GSO::WSDL::Elements::VoidShipmentResponse|Shipment::GSO::WSDL::Elements::VoidShipmentResponse> object.

 $response = $interface->VoidShipment( {
    VoidShipmentRequest =>  { # Shipment::GSO::WSDL::Types::VoidShipmentRequest
      AccountNumber =>  $some_value, # int
      TrackingNumber =>  $some_value, # string
    },
  },,
 );

=head3 TrackShipment

Fetch transit details for a shipment.

Returns a L<Shipment::GSO::WSDL::Elements::TrackShipmentResponse|Shipment::GSO::WSDL::Elements::TrackShipmentResponse> object.

 $response = $interface->TrackShipment( {
    TrackShipmentRequest =>  { # Shipment::GSO::WSDL::Types::TrackShipmentRequest
      AccountNumber =>  $some_value, # int
      SearchType => $some_value, # ShipmentSearchType
      SearchValue =>  $some_value, # string
    },
  },,
 );

=head3 GetShippingActivity

Fetch detailed information for a series of shipments.

Returns a L<Shipment::GSO::WSDL::Elements::GetShippingActivityResponse|Shipment::GSO::WSDL::Elements::GetShippingActivityResponse> object.

 $response = $interface->GetShippingActivity( {
    GetShippingActivityRequest =>  { # Shipment::GSO::WSDL::Types::GetShippingActivityRequest
      AccountNumber =>  $some_value, # int
      SearchType => $some_value, # ShippingActivitySearchType
      SearchValue =>  $some_value, # string
    },
  },,
 );

=head3 GetDeliveryTimes

Fetch GSO service standards for a zip code or city, state.

Returns a L<Shipment::GSO::WSDL::Elements::GetDeliveryTimesResponse|Shipment::GSO::WSDL::Elements::GetDeliveryTimesResponse> object.

 $response = $interface->GetDeliveryTimes( {
    DeliveryTimesRequest =>  { # Shipment::GSO::WSDL::Types::GetDeliveryTimesRequest
      SearchType => $some_value, # DeliveryTimesSearchType
      SearchValue =>  $some_value, # string
    },
  },,
 );

=head3 GetServiceTypes

Fetch information on the valid GSO Service Types for an account.

Returns a L<Shipment::GSO::WSDL::Elements::GetServiceTypesResponse|Shipment::GSO::WSDL::Elements::GetServiceTypesResponse> object.

 $response = $interface->GetServiceTypes( {
    GetServiceTypesRequest =>  { # Shipment::GSO::WSDL::Types::GetServiceTypesRequest
      AccountNumber =>  $some_value, # int
    },
  },,
 );

=head3 GetShippingRate

Fetch estimated GSO Shipping Rates.

Returns a L<Shipment::GSO::WSDL::Elements::GetShippingRateResponse|Shipment::GSO::WSDL::Elements::GetShippingRateResponse> object.

 $response = $interface->GetShippingRate( {
    GetShippingRateRequest =>  { # Shipment::GSO::WSDL::Types::GetShippingRateRequest
      AccountNumber =>  $some_value, # int
      OriginZip =>  $some_value, # string
      DestinationZip =>  $some_value, # string
      PackageWeight =>  $some_value, # int
      ServiceCode =>  $some_value, # string
      DeclaredValue =>  $some_value, # decimal
      CODValue =>  $some_value, # decimal
    },
  },,
 );

=head3 GetShippingRatesAndTimes

Fetch Shipping Rates And Time By Account Number

Returns a L<Shipment::GSO::WSDL::Elements::GetShippingRatesAndTimesResponse|Shipment::GSO::WSDL::Elements::GetShippingRatesAndTimesResponse> object.

 $response = $interface->GetShippingRatesAndTimes( {
    GetShippingRatesAndTimesRequest =>  { # Shipment::GSO::WSDL::Types::GetShippingRatesAndTimesRequest
      AccountNumber =>  $some_value, # int
      OriginZip =>  $some_value, # string
      DestinationZip =>  $some_value, # string
      PackageWeight =>  $some_value, # int
      DeclaredValue =>  $some_value, # decimal
      CODValue =>  $some_value, # decimal
      ShipDate =>  $some_value, # dateTime
      PickupService =>  $some_value, # int
    },
  },,
 );

=head3 GetDropBoxInfo

Fetch drop box locations by zip code, city and state, address and city and state, address and zip code

Returns a L<Shipment::GSO::WSDL::Elements::GetDropBoxInfoResponse|Shipment::GSO::WSDL::Elements::GetDropBoxInfoResponse> object.

 $response = $interface->GetDropBoxInfo( {
    GetDropBoxInfoRequest =>  { # Shipment::GSO::WSDL::Types::GetDropBoxInfoRequest
      Address =>  $some_value, # string
      City =>  $some_value, # string
      State =>  $some_value, # string
      Zip =>  $some_value, # string
    },
  },,
 );

=head3 SubmitOnCallPickup

Submit a request to schedule pickup at the customer location

Returns a L<Shipment::GSO::WSDL::Elements::SubmitOnCallPickupResponse|Shipment::GSO::WSDL::Elements::SubmitOnCallPickupResponse> object.

 $response = $interface->SubmitOnCallPickup( {
    OnCallPickupRequest =>  { # Shipment::GSO::WSDL::Types::SubmitOnCallPickupRequest
      Pickup =>  { # Shipment::GSO::WSDL::Types::Pickup
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
      AllowDuplicateRequest =>  $some_value, # boolean
    },
  },,
 );

=head3 TrackOnCallPickup

Fetch On Call pickup details based on Confirmation Number or Pickup Date.

Returns a L<Shipment::GSO::WSDL::Elements::TrackOnCallPickupResponse|Shipment::GSO::WSDL::Elements::TrackOnCallPickupResponse> object.

 $response = $interface->TrackOnCallPickup( {
    TrackOnCallPickupRequest =>  { # Shipment::GSO::WSDL::Types::TrackOnCallPickupRequest
      AccountNumber =>  $some_value, # int
      SearchType => $some_value, # PickupSearchType
      SearchValue =>  $some_value, # string
    },
  },,
 );

=head3 GetShippingSupplyList

Fetch list of Shipping Supply Items provided by GSO

Returns a L<Shipment::GSO::WSDL::Elements::GetShippingSupplyListResponse|Shipment::GSO::WSDL::Elements::GetShippingSupplyListResponse> object.

 $response = $interface->GetShippingSupplyList(,,
 );

=head3 SubmitShippingSupplyOrder

Submit an order for Shipping Supply Items

Returns a L<Shipment::GSO::WSDL::Elements::SubmitShippingSupplyOrderResponse|Shipment::GSO::WSDL::Elements::SubmitShippingSupplyOrderResponse> object.

 $response = $interface->SubmitShippingSupplyOrder( {
    ShippingSupplyOrderRequest =>  { # Shipment::GSO::WSDL::Types::SubmitShippingSupplyOrderRequest
      SupplyOrder =>  { # Shipment::GSO::WSDL::Types::SupplyOrder
        AccountNumber =>  $some_value, # int
        ShipToCompany =>  $some_value, # string
        ShipToAttention =>  $some_value, # string
        ShipToPhone =>  $some_value, # string
        ShipToEmail =>  $some_value, # string
        DeliveryAddress1 =>  $some_value, # string
        DeliveryAddress2 =>  $some_value, # string
        DeliveryCity =>  $some_value, # string
        DeliveryState =>  $some_value, # string
        DeliveryZip =>  $some_value, # string
        OrderNotes =>  $some_value, # string
        DeliveryNotes =>  $some_value, # string
      },
      SupplyItems =>  { # Shipment::GSO::WSDL::Types::ArrayOfSupplyItem
        SupplyItem =>  { # Shipment::GSO::WSDL::Types::SupplyItem
          Number =>  $some_value, # string
          Description =>  $some_value, # string
        },
      },
    },
  },,
 );

=head3 TrackShippingSupplyOrder

Fetch the Shipping Supply Order details

Returns a L<Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrderResponse|Shipment::GSO::WSDL::Elements::TrackShippingSupplyOrderResponse> object.

 $response = $interface->TrackShippingSupplyOrder( {
    TrackShippingSupplyOrderRequest =>  { # Shipment::GSO::WSDL::Types::TrackShippingSupplyOrderRequest
      AccountNumber =>  $some_value, # int
      SearchType => $some_value, # SupplyOrderSearchType
      SearchValue =>  $some_value, # string
    },
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Wed Jun 14 17:28:35 2017

=cut
