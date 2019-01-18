#!/usr/bin/perl
#
#  Exercise 1-14
#

print "Enter a number: ";
$num = <STDIN>;
chop $num;

if ($num < 0) {
	print "Number is negative\n";
} elsif ($num > 0) {
	print "Number is positive\n";	
} else {
	print "Number is zero\n";
}
