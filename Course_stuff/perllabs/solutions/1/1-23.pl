#!/usr/bin/perl
#
#  Exercise 1-23
#


$total = 0;
$lastNumber = 0;

foreach $number (1..1000000) {
	$total += $number;
	if ($total > 1000000) {
		$lastNumber = $number;
		last;
	}
}

print "Running total = $total, last number added = $lastNumber\n";


