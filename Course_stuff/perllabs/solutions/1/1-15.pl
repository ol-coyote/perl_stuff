#!/usr/bin/perl
#
#  Exercise 1-15
#


print "Enter first number: ";
$first = <STDIN>;
chop $first;

print "Enter second number: ";
$second = <STDIN>;
chop $second;

if ($first % $second == 0) {
	print "$first is a multiple of $second\n";
} else {
	print "$first is NOT a multiple of $second\n";
}
