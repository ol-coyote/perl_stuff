#!/usr/bin/perl
use strict;
use warnings;

#%teams = (-Orioles => "Baltimore",
#          -Pirates =>"Pittsburgh",
#          -Ravens => "Baltimore");

my %teams = ("Orioles" => "Baltimore",
          "Pirates" =>"Pittsburgh",
          "Ravens" => "Baltimore");

#$teams{"Orioles"} = "Balto";
#print "$teams{'Orioles'}\n";
$teams{"Phillies"} = "Philly";
#print "$teams{'Phillies'}\n";

for my $test (values(%teams)) {
    print "$test\n";
}

delete $teams{"Pirates"};

print "#" x 10, "\n";
for (keys(%teams)) {
    print "$_ is the $teams{$_}\n";
}







