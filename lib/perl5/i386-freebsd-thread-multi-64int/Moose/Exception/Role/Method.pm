package Moose::Exception::Role::Method;
$Moose::Exception::Role::Method::VERSION = '2.1402';
use Moose::Role;

has 'method' => (
    is       => 'ro',
    isa      => 'Moose::Meta::Method',
    required => 1,
);

1;
