#!/usr/bin/perl
#
#  Exercise 1-17
#

print "Enter first number: ";
$a = <STDIN>;
chop $a;

print "Enter second number: ";
$b = <STDIN>;
chop $b;

print "Enter third number: ";
$c = <STDIN>;
chop $c;

if ($a == $b && $b == $c) {
	print "The three numbers are equal\n";
	exit;
} 

if ($a > $b) {
	$larger = $a;
} else {
	$larger = $b;
}

if ($c > $larger) {
	$largest = $c;
} else {
	$largest = $larger;
}

print "$largest is the largest of $a, $b and $c\n";	
