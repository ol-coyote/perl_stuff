#!/usr/bin/perl
#
#  Exercise 5-9  (one or two digit numbers only)
#

%words = ( 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
		   6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
		  11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
		  15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
		  19 => "nineteen", 20 => "twenty" );
		  
open(DATAFILE, "5-5.data") || die "Can't open 5-5.data\n";
while ($number = <DATAFILE>) {
	chop $number;
	if ($number < 1 || $number > 20) {
		print "Invalid number on line $. = $number\n";
		next;
	}
	print "$number = $words{$number}\n";	
}	

close DATAFILE;	  
