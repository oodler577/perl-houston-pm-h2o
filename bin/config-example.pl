#!/usr/bin/env perl

# EXAMPLE - use h2o for accessors with Config::Tiny!!

use strict;
use warnings;
use Util::H2O qw/h2o/;
use Config::Tiny qw//;
require Data::Dumper;

# initial read
my $config = Config::Tiny->read(q{./config/config.conf});

# dump 1
print Data::Dumper::Dumper($config);

# give it accessors with h2o

$config = h2o -recurse, { %{ Config::Tiny->read(q{./config/config.conf}) } };

# dump 2
print Data::Dumper::Dumper($config);

printf qq{\n\n\ndatabase host is: "%s"\n\n}, $config->database->host;
