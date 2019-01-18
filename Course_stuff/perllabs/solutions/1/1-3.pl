#!/usr/bin/perl
#
#	Exercise 1-3 
#

open(INPUT, "< numbers");

$sum = 0;

while(1) {

	$num = <INPUT>;
	last if $num < 0;

	$sum = $sum + $num;
}

#  Another way to write the loop:
#
#  $num = <INPUT>;
#  while ($num > 0) {
#	$sum = $sum + $num;
#	$num = <INPUT>;
#  }

close(INPUT);

print "The sum of the numbers is $sum\n";
