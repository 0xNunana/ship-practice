use strict;
use warnings;
use Data::Dumper;

my $ediFile = shift;
my ($contents,$delim,$term,$txnCount,@transactions);
{ $/ = undef;
	  open my $ifh,'<',$ediFile;
	   $contents = <$ifh>;
   }
   ($delim,$term) = $contents =~ m/^ISA(.).{101}(.)/;
   $delim = quotemeta($delim);
   @transactions = $contents =~ m/(ST$delim.+?SE$delim\d+$delim\d+$term)/gs;
   ($txnCount) = $contents =~ m/${term}GE$delim(\d+)/;
   die "Parse error - transaction counts wrong"
     if ($txnCount != scalar @transactions);

     foreach my $transaction (@transactions) {
	       # put into useful form for processing
	       #   my @segments = split /$term/,$transaction;
	       #     my ($segCount) = $transaction =~ m/${term}SE$delim(\d+)/;
	       #       die "Parse error - segment counts wrong"
	       #           if ($segCount != scalar @segments);
	       #             my ($process_this);
	       #               map { push @$process_this, [split /$delim/,$_] }
	       #                   @segments;
	       #                     print Dumper(\$process_this);
	       #                     }
