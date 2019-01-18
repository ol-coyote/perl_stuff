#!/usr/bin/perl
use strict;
use warnings;

print "guess my favorite subject: ";
my $guess = <STDIN>;
chomp $guess;

if ($guess =~ /recess|lunch|science/) {
    print "Yep! $&\n";
    print "$` \n $' \n";
}
else {
    print "No way dude!\n";
}

