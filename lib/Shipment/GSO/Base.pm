package Shipment::GSO::Base;

# ABSTRACT: Shipment::GSO Base imports
use strict;
use warnings;
use base 'Import::Base';

our @IMPORT_MODULES = ( 'strict', 'warnings', 'Carp', );

our %IMPORT_BUNDLES = (
    Class => [ 'Moo', 'Types::Standard' => [qw/InstanceOf Int Str/] ],
    Role  => ['Moo::Role'],
    Test  => [ 'Test2::V0', 'Data::Dumper' ]
);

1;

__END__

=head1 NAME

Shipment::GSO::Base

=head1 SYNOPSIS

    package Shipment::GSO::MyPackage;
    use Shipment::GSO::Base;

=head1 DESCRIPTION

Import commonly used modules.
