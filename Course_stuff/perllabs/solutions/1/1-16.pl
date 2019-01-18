#!/usr/bin/perl
#
#  Exercise 1-16
#

print "Enter first number: ";
$a = <STDIN>;
chop $a;

print "Enter second number: ";
$b = <STDIN>;
chop $b;

if ($a == $b) {
	print "The numbers are equal\n";
} elsif ($a > $b) {
	print "$a is the larger of $a and $b\n";
} else {
	print "$b is the larger of $a and $b\n";	
}
