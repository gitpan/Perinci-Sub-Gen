package Perinci::Sub::Gen;

our $VERSION = '0.01'; # VERSION

our %common_args = (
    name => {
        summary => "Generated function's name, e.g. `myfunc`",
        schema => 'str*',
        req => 1,
    },
    package => {
        summary => "Generated function's package, e.g. `My::Package`",
        schema => 'str*',
        description => <<'_',

This is needed mostly for installing the function. You usually don't need to
supply this if you set `install` to false.

If not specified, caller's package will be used by default.

_
    },
    summary => {
        summary => "Generated function's summary",
        schema => 'str*',
    },
    description => {
        summary => "Generated function's description",
        schema => 'str*',
    },
    install => {
        summary => 'Whether to install generated function (and metadata)',
        schema  => [bool => {default=>1}],
        description => <<'_',

By default, generated function will be installed to the specified (or caller's)
package, as well as its generated metadata into %SPEC. Set this argument to
false to skip installing.

_
    },
);

1;
# ABSTRACT: Common stuffs used by Perinci::Sub::Gen::*


__END__
=pod

=head1 NAME

Perinci::Sub::Gen - Common stuffs used by Perinci::Sub::Gen::*

=head1 VERSION

version 0.01

=head1 DESCRIPTION

Perinci::Sub::Gen::* namespace is used for modules that generate functions (and
their metadata).

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

