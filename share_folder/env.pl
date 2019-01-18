#!/usr/bin/perl
use strict;
use warnings;

for my $key (keys %ENV)
{
    print "$key = $ENV{$key}\n";
}

print "your login name is $ENV{'LOGNAME'}\n";

my $home = $ENV{'HOME'};

print "your home directory is $home\n";
