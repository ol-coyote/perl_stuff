#!/usr/bin/perl
use strict;
use warnings;

my @directions = qw(NORTH WEST EAST SOUTH);
print "@directions\n";

my @vals=(1..10,'a'..'z','A'..'Z');
print "@vals\n";
print "@vals[10,11,21,-10]\n";
