#!/usr/bin/perl
#
#  Exercise 1-12
#


print "Enter a number: ";
$num = <STDIN>;
chop $num;

if ($num > 500) {
	print "$num is greater than 500\n";
}
