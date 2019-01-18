#!/usr/bin/perl
#
#  Exercise 3-9
#


open(INPUT, "3-6.data") or die "Can't open 3-6.data\n";

$sum = 0;

while (<INPUT>) {
	$len = length;
	print "The length of line number $. is $len\n";	
	$sum += $len;
}

close INPUT;
print "The sum of all the line lengths is $sum\n";
