#!/usr/bin/perl
use strict;
use warnings;
# use DBI;

package MyFile;

our $PATH= "./test.txt";
sub new
{
    my $class= ref($_[0]) || $_[0];
    my $self={};
    return bless($self,$class);
}

sub writeFile
{
    open FILE, ">$PATH";
 
print FILE "Холодное сердце согреешь руками\n";
print FILE "И я буду рядом, ночами и днями\n";
 
close FILE;
}


sub readFile
{
    
    open FILE, "<$PATH";
    while (defined (my $file_line = <FILE>)) 
    {
        print $file_line;
    }




 
close FILE;
}

