#!/usr/bin/perl
#
#  Exercise 7-7
#

open(DATAFILE, "7-2.data") || die "Can't open 7-2.data";

while (<DATAFILE>) {
	tr/A-Za-z\n//dc;
	print;	
}

close DATAFILE;


