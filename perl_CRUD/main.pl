#!/usr/bin/perl
use strict;
use warnings;
# use lib 'C:\Strawberry\perl\vendor\lib';
use DBI;
use myPackage;


my $obj= myPackage->new();
#  $obj->insert();
#  $obj->update();
 #  $obj->delRec();
$obj->selectRec();
