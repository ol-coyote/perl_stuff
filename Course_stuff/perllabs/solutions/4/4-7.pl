#!/usr/bin/perl
#
#	Exercise 4-7
#
#	Read the mdzips file in the datafiles directory and write another 
#	file where the fields in each line are reversed - i.e., the city 
#	comes first and the zipcode comes second.

open(INPUT, "< mdzips2") || die "cant open mdzips2 file";
@lines = <INPUT>;
close(INPUT);

@sorted_lines = sort(@lines);

foreach (@sorted_lines) {
	chop;
	($city, $zip) = split (':', $_);
	printf("%-30s%-12s\n", $city, $zip);
}

	
	
