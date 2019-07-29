use Shipment::GSO::Base Test;

my ( $username, $password, $account ) = @ARGV;

$username ||= $ENV{'GSO_USERNAME'};
$password ||= $ENV{'GSO_PASSWORD'};
$account  ||= $ENV{'GSO_ACCOUNT'};

SKIP: {
    skip
        "Tests can only be run with a valid GSO Username/Password and Account. The following environment variables are used: GSO_USERNAME GSO_PASSWORD GSO_ACCOUNT.",
        23
        unless $username && $password && $account;
}

if ( $username && $password && $account ) {

    use Shipment::GSO;
    use Shipment::Address;
    use Shipment::Package;

    my $from = Shipment::Address->new(
        name        => 'Boo Far',
        company     => 'The Grape Tray',
        address1    => '6023 North Palm Avenue',
        city        => 'Fresno',
        state       => 'CA',
        country     => 'United States',
        postal_code => '93704',
        phone       => '559-226-6828',
    );

    my $to = Shipment::Address->new(
        name        => 'Foo Bar',
        company     => 'Company',
        address1    => '123 Any Street NW',
        address2    => '#2',
        city        => 'Beverly Hills',
        state       => 'CA',
        country     => 'US',
        postal_code => '90210',
        phone       => '(403)669-8017 ext. 123',
        email       => 'foo@bar.com',
    );

    my @packages = (
        Shipment::Package->new(
            weight => 10.1,
            length => 18,
            width  => 18,
            height => 24,
        ),
    );

    my %args = (
        username     => $username,
        password     => $password,
        account      => $account,
        from_address => $from,
        to_address   => $to,
        packages     => \@packages
    );

    for my $date (
        { y => 2019, m => 7,  d => 28, corrected => '2019-07-29', name => 'Sunday' },
        { y => 2019, m => 12, d => 25, corrected => '2019-12-26', name => 'Christmas' },
        { y => 2019, m => 11, d => 28, corrected => '2019-11-29', name => 'Thanksgiving' },
        { y => 2019, m => 5,  d => 27, corrected => '2019-05-28', name => 'Memorial Day' },
        {   y         => 2019,
            m         => 5,
            d         => 25,
            corrected => '2019-05-28',
            name      => 'Saturday before Memorial Day'
        },
    ) {
        my $shipment = Shipment::GSO->new( %args,
            pickup_date =>
                DateTime->new( year => $date->{y}, month => $date->{m}, day => $date->{d} ) );
        $shipment->services;
        is $shipment->_rest->responseCode(), 400,
            'Bad pickup_date response code (' . $date->{name} . ')';
        is $shipment->error,
            'Failure: Ship date must be within 5 days in future from current date & exclude weekend/GSO service holiday.',
            'Bad pickup_date (' . $date->{name} . ')';

        $shipment = Shipment::GSO->new( %args,
            _test_pickup_date =>
                DateTime->new( year => $date->{y}, month => $date->{m}, day => $date->{d} ) );
        is $shipment->pickup_date->ymd, $date->{corrected},
            'Bad pickup_date corrected (' . $date->{name} . ')';
    }

    my $shipment = Shipment::GSO->new( %args,
        pickup_date => DateTime->new( year => 2029, month => 5, day => 24 ) );
    $shipment->services;
    is $shipment->_rest->responseCode(), 400,
        'Bad pickup_date response code (too far in the future)';
    is $shipment->error,
        'Failure: Ship date must be within 5 days in future from current date & exclude weekend/GSO service holiday.',
        'Bad pickup_date (too far in the future))';

    $shipment = Shipment::GSO->new(%args);

    like $shipment->_token, qr{[\+/A-z0-9]{96}}, q{_token};

    ok( defined $shipment, 'got a shipment' );

    ok( defined $shipment->from_address, 'got a shipment->from_address address' );
    if ( defined $shipment->from_address ) {
        is( $shipment->from_address->state_code,   'CA', 'province_code' );
        is( $shipment->from_address->country_code, 'US', 'country_code' );
        is( $shipment->from_address->address_components->{number},
            '6023', 'address_components->{number}' );
        is( $shipment->from_address->address_components->{street},
            'NORTH PALM AVENUE',
            'address_components->{street}'
        );
        is( $shipment->from_address->phone_components->{country},
            '1', 'phone_components->{country}' );
        is( $shipment->from_address->phone_components->{area}, '559', 'phone_components->{area}' );
        is( $shipment->from_address->phone_components->{phone},
            '2266828', 'phone_components->{phone}' );
    }

    ok( defined $shipment->to_address, 'got a shipment->to_address address' );
    if ( defined $shipment->to_address ) {
        is( $shipment->to_address->province_code, 'CA', 'province_code' );
        is( $shipment->to_address->country_code,  'US', 'country_code' );
        is( $shipment->to_address->address_components->{direction},
            'NW', 'address_components->{direction}' );
        is( $shipment->to_address->address_components->{number},
            '123', 'address_components->{number}' );
        is( $shipment->to_address->address_components->{street},
            'ANY STREET', 'address_components->{street}' );
        is( $shipment->to_address->phone_components->{country}, '1',
            'phone_components->{country}' );
        is( $shipment->to_address->phone_components->{area}, '403', 'phone_components->{area}' );
        is( $shipment->to_address->phone_components->{phone},
            '6698017', 'phone_components->{phone}' );
    }

    is( $shipment->count_packages, 1, 'shipment has 1 packages' );

    ok( defined $shipment->services,           'got services' );
    ok( defined $shipment->services->{ground}, 'got a ground service' );
    is( $shipment->services->{ground}->id, 'CPS', 'ground service_id' )
        if defined $shipment->services->{ground};

    # FIXME: Our current credentials only return ground rates.
    # ok( defined $shipment->services->{priority}, 'got a priority service' );
    # is( $shipment->services->{priority}->id, 'PDS', 'priority service_id' )
    #     if defined $shipment->services->{priority};

    $shipment->rate('ground');

    ok( defined $shipment->service, 'got a ground rate' );
    my $rate = $shipment->service->cost->value if defined $shipment->service;

    # TODO: Support etd.
    # is( $shipment->service->etd, 2, 'estimated transit days' ) if defined $shipment->service;

# TODO: Support ship and other document generation functionality.
# is( $shipment->service->cost->value, $rate, 'rate matches actual cost') if defined $shipment->service;
# ok( defined $shipment->documents, 'got documents' );
# is( $shipment->documents->content_type, 'application/pdf', 'documents are pdf') if defined $shipment->documents;
# ok( defined $shipment->get_package(0)->cost->value, 'got cost' );
# ok( defined $shipment->get_package(0)->label, 'got label' );
# is( $shipment->get_package(0)->label->content_type, 'application/pdf', 'label is a pdf') if defined $shipment->get_package(0)->label;
}

done_testing;
