#!/usr/bin/perl
#
#	Exercise 4-6
#
#	Read the mdzips file in the datafiles directory and write another 
#	file where the fields in each line are reversed - i.e., the city 
#	comes first and the zipcode comes second.

open(INPUT, "< ../../datafiles/mdzips") || die "cant open mdzips file";
print "Reading...\n";
@lines = <INPUT>;
close(INPUT);

open(OUTPUT, "> mdzips2") || die "cant open mdzips2 file";
print "Writing...\n";

foreach (@lines) {
	chop;
	($zip, $city) = split (':', $_);
	print OUTPUT "$city:$zip\n";
}

close OUTPUT;

	
	
