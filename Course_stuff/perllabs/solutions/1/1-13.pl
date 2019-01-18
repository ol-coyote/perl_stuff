#!/usr/bin/perl
#
#  Exercise 1-13
#

print "Enter a number: ";
$num = <STDIN>;
chop $num;

if ($num > 35 && $num < 92) {
	print "$num is within the desired range\n";
} else {
	print "Number out of range\n";
}
