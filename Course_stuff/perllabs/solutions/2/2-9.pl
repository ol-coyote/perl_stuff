#!/usr/bin/perl
#
#  Exercise 2-9
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

$average = ($a + $b + $c) / 3;
print "The average of $a, $b, and $c is $average\n";

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

if ($a < $b) {
	$smaller = $a;
} else {
	$smaller = $b;
}

if ($c < $smaller) {
	$smallest = $c;
} else {
	$smallest = $smaller;
}

print "$smallest is the smallest of $a, $b and $c\n";	
