package Moose::Exception::CannotCallAnAbstractMethod;
$Moose::Exception::CannotCallAnAbstractMethod::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Abstract method";
}

1;
