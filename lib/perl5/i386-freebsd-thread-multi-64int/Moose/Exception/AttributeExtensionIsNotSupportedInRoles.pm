package Moose::Exception::AttributeExtensionIsNotSupportedInRoles;
$Moose::Exception::AttributeExtensionIsNotSupportedInRoles::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Role';

has 'attribute_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    "has '+attr' is not supported in roles";
}

1;
