#!/usr/bin/perl
#
#  Exercise 2-10
#


print "Farenheit   Centigrade\n";

for ($f = 0; $f <= 350; $f += 50) {
	$c = 0.55 * ($f - 32);
	print "$f\t\t$c\n";			#  \t is the tab character
}
