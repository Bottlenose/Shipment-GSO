use Shipment::GSO::Base Test;
use Shipment::GSO;

diag("Testing Shipment::GSO $Shipment::GSO::VERSION, Perl $], $^X");


chomp( my $git_tag = `git rev-parse --abbrev-ref HEAD` );
if ( $git_tag eq 'master' ) {
    chomp( $git_tag = `git tag --points-at master` );
} else {
    $git_tag =~ s!.*/!!;
}
is $git_tag, $Shipment::GSO::VERSION, q{VERSION in sync with git tag};

done_testing;
