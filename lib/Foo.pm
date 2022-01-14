package Foo;
use Util::H2O::More qw/baptise/;

# EXAMPLE - a "better" bless + insta-accessors

sub new {
    my $pkg    = shift;
    my %params = @_;

    # use h2o to create accessors on a pre-blessed reference
    my $self = baptise \%params, $pkg, qw/baz herp derp/;

    return $self;
}

sub say_hi {
    print qq{Hi!!111!\n};
    return;
}

1;
