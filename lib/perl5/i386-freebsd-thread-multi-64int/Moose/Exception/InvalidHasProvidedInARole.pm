package Moose::Exception::InvalidHasProvidedInARole;
$Moose::Exception::InvalidHasProvidedInARole::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Role';

has 'attribute_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    "Usage: has 'name' => ( key => value, ... )";
}

1;
