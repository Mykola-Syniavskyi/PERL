#!/usr/bin/perl
use strict;
use warnings;
# use lib 'C:\Strawberry\perl\vendor\lib';

use DBI;

package myPackage;

our $dbh= connectToBase();

sub new {
    my $class =ref($_[0]) || $_[0];
    my $self = {};
    return bless ($self, $class);
}

sub connectToBase
{
    my $dsn = "DBI:mysql:user15";
    my $username = "root";
    my $password = '';
    return my $dbh  = DBI->connect($dsn,$username,$password) or 
            die("Error connecting to the database: $DBI::errstr\n");;
    
}

sub insert
{
   
     my $sql = "INSERT into test (name, description)values('book', 'about book')";
     my $stmt = $dbh->prepare($sql);
     $stmt->execute();
     $stmt->finish();

}


sub update
{
   
     my $sql = "UPDATE  test set  name='BIGbook' where id=1";
     my $stmt = $dbh->prepare($sql);
     $stmt->execute();
     $stmt->finish();

}



sub delRec
{
   
     my $sql = "DELETE from  test  where id>3";
     my $stmt = $dbh->prepare($sql);
     $stmt->execute();
     $stmt->finish();

}

sub selectRec
{
   
    my $sql = "select * from  test ";
    my $sth = $dbh->prepare($sql);
    $sth->execute();
      
    my @row;
    while (@row = $sth->fetchrow_array) 
    {  # retrieve one row
    print join(", ", @row), "\n";
    }
    $sth->finish();

}


1;


