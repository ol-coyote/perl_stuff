#!/usr/bin/perl
#
#  Exercise 7-9
#

open(DATAFILE, "7-4.data") || die "Can't open 7-4.data";

while (<DATAFILE>) {
	s/the/???/g;
	print;	
}

close DATAFILE;


