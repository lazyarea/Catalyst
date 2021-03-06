package MooseX::MethodAttributes::Role::AttrContainer;
{
  $MooseX::MethodAttributes::Role::AttrContainer::VERSION = '0.29';
}
BEGIN {
  $MooseX::MethodAttributes::Role::AttrContainer::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: capture code attributes in the class' metaclass

use Moose::Role;
use Moose::Util qw/find_meta/;

use namespace::autoclean;


sub MODIFY_CODE_ATTRIBUTES {
    my ($class, $code, @attrs) = @_;
    find_meta($class)->register_method_attributes($code, \@attrs);
    return ();
}

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran Dave Karman (t0m) Rolsky David Steinbrunner
Karen Etheridge Marcus Ramberg Peter E

=head1 NAME

MooseX::MethodAttributes::Role::AttrContainer - capture code attributes in the class' metaclass

=head1 VERSION

version 0.29

=head1 METHODS

=head2 MODIFY_CODE_ATTRIBUTES ($code, @attrs)

Accepts a list of attributes for a coderef and stores it the class' metaclass.

See L<attributes>.

=head1 AUTHORS

=over 4

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
