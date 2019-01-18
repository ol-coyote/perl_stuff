#!/usr/bin/perl
#
#  Exercise 9 (Handle any 1- or 2-digit number)
#

%words = ( 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
		   6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
		  11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
		  15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
		  19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty",
		  50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty",
		  90 => "ninety" );
		  
open(DATAFILE, "5-5a.data") || die "Can't open 5-5a.data\n";
while ($number = <DATAFILE>) {
	chop $number;
	if ($number < 1 || $number > 99) {
		print "Invalid number on line $. = $number\n";
		next;
	}
	if ($number < 21) {
		print "$number = $words{$number}\n";			
	} else {
		$ones = $number % 10;
		$tens = $number - $ones;
		print "$number = $words{$tens}";
		if ($ones > 0) {
			print "-$words{$ones}" 
		} 
		print "\n";	
	}
}	

close DATAFILE;	  
