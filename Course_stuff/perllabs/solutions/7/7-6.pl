#!/usr/bin/perl
#
#  Exercise 7-6
#

open(DATAFILE, "7-1.data") || die "Can't open 7-1.data";

$validCounter = 0;

while (<DATAFILE>) {
	chop;
	if ( /^[A-Z]{2}-[0-9]{4}-[0-9]{3}$/ ) {
		$validCounter++;
	} else {
		print "Invalid account # $_ found on line $.\n";
	}
}

close DATAFILE;

print "\nThere were $validCounter valid account numbers in the file.\n";
