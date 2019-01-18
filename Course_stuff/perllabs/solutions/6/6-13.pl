#!/usr/bin/perl
#
#  Exercise 6-13
#

sub getHypotenuse {
	my ($side1, $side2) = @_;
	return sqrt($side1 * $side1 + $side2 * $side2);
}

$x = 3;
$y = 4;
$hypot = getHypotenuse($x, $y);

print "The hypotenuse of a right triange with sides $x and $y is $hypot\n";
