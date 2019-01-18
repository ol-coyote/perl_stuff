#!/usr/bin/perl
#
#  Exercise 1-26
#


open(INPUT, "< 1-15.data");
$a = <INPUT>;
chop $a;
$b = <INPUT>;
chop $b;
close INPUT;

if ($a == $b) {
	print "numbers are equal\n"
} else {
	print "numbers are not equal\n"
}
