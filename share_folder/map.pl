#!/usr/bin/perl
use strict;
use warnings;

my @directions = qw(North East South West);
print "@directions\n";

my @test = map { $_ * 10 } 10..20;
print "@test\n";

my @test2 = map { $_ x 3 } @directions;
print "@test2\n";


