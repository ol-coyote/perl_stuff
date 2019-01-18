#!/usr/bin/perl
#
#  Exercise 9  (Handle any 1-, 2-, or 3-digit number)
#

%words = ( 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
		   6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
		  11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
		  15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
		  19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty",
		  50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty",
		  90 => "ninety" );
		  
open(DATAFILE, "5-5b.data") || die "Can't open 5-5b.data\n";
while ($number = <DATAFILE>) {
	chop $number;
	if ($number < 1 || $number > 999) {
		print "Invalid number on line $. = $number\n";
		next;
	}
	if ($number < 21) {
		print "$number = $words{$number}\n";			
	} else {
		$tens = $number % 100;
		$hundreds = ($number - $tens) / 100;

		print "$number = ";
		
		if ($hundreds > 0) {
			print "$words{$hundreds} hundred ";
		}
		
		if ($tens < 21) {
			print "$words{$tens}\n";			
		} else {
			$ones = $tens % 10;
			$tens = $tens - $ones;
			print "$words{$tens}";
			if ($ones > 0) {
				print "-$words{$ones}" 
			} 
			print "\n";
		}	
	}
}	

close DATAFILE;	  
