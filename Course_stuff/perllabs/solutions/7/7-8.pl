#!/usr/bin/perl
#
#  Exercise 7-8
#
#

open(DATAFILE, "7-3.data") || die "Can't open 7-3.data";

while (<DATAFILE>) {
	tr/ //s;
	print;	
}

close DATAFILE;


