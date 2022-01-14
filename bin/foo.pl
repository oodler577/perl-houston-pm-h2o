#!/usr/bin/env perl

# EXAMPLE - uses Foo.pm naturally

use FindBin qw/$Bin/;
use lib qq{$Bin/../lib};
use Foo qw//;

my $foo = Foo->new( foo => q{boo}, herp => 1, qux => derp );

my $foo2 = Foo->new( herp => 1, qux => derp );

$foo->baz(time);
$foo->derp( rand 100 );

require Data::Dumper;

print Data::Dumper::Dumper($foo);
print Data::Dumper::Dumper($foo2);
