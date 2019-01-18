#!/usr/bin/perl
#
#  Exercise 3-7
#

for ($n = 1; $n <= 100; $n++) {
	printf("%5X %5d %5o\n", $n, $n, $n);
	print "\n" if $n % 10 == 0;
}
