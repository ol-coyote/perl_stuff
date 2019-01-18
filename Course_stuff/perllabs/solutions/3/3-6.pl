#!/usr/bin/perl
#
#  Exercise 3-6
#

for ($n = 1; $n <= 100; $n++) {
	printf("%5d  %8.2f\n", $n, sqrt($n));
	print "\n" if $n % 10 == 0;
}
