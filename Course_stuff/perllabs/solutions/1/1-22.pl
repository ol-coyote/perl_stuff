#!/usr/bin/perl
#
#  Exercise 1-22
#

$total = 0;

foreach $number (1..1000000) {
	$total += $number;
}

print "Total = $total\n";


