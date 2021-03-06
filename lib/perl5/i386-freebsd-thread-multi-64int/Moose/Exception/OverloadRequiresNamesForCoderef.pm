package Moose::Exception::OverloadRequiresNamesForCoderef;
$Moose::Exception::OverloadRequiresNamesForCoderef::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    my $self = shift;
    'If you provide a coderef parameter to the Moose::Meta::Overload constructor you must also provide coderef_package and coderef_name parameters';
}

1;
