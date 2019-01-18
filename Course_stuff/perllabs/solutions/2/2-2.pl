#!/usr/bin/perl
#
#       Exercise 2-2
#

$sum = 0;

for $i (1..100,201..300)
{
	$sum += $i;
}
print "$sum\n";

# should print 30100
