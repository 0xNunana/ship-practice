use strict;
use warnings;
use Test::More tests => 3;

my (%required,%over,%under,%partial);
$required{$_} = 1 for qw/header detail trailer/;

$over{$_} = $_ for qw/title header subject detail trailer postscript/;
$under{$_} = $_ for qw/header trailer/;
$partial{$_} = $_ for qw/header trailer/;
$partial{detail} = undef;

ok(test_it(%over),'checking %over for required keys');
ok(test_it(%under),'checking %under for required keys');
ok(test_it(%partial),'checking %partial for required keys');

sub test_it {
	  my %h = @_;
      }
