#!/usr/bin/env perl

# EXAMPLE - use h2o for cleaning up UGLY hash refs

use strict;
use warnings;

use Util::H2O qw/h2o/;

require Data::Dumper;

my $pretty = h2o -recurse, get_the_ugly();

print Data::Dumper::Dumper($pretty);

printf qq{\n\nQUX = %s\n}, $pretty->foo->bar->qux;

sub get_the_ugly {
    return { foo => { bar => { baz => 1, qux => q{herp} } } };
}
