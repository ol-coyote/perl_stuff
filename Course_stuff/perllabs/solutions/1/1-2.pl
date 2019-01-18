#!/usr/bin/perl
#
#	Exercise 1-2 
#

open(INPUT, "< numbers");

$sum = 0;

for ($i = 1; $i <= 10; $i++) {
	$num = <INPUT>;
	$sum = $sum + $num;
}

close(INPUT);

print "The sum of the numbers is $sum\n";
