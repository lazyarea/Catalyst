package Moose::Exception::RolesDoNotSupportAugment;
$Moose::Exception::RolesDoNotSupportAugment::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'augment'";
}

1;
