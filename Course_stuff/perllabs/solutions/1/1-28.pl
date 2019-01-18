#!/usr/bin/perl
#
#  Exercise 1-28
#


open(INPUT, "< 1-17.data");
$numLines = <INPUT>;
chop $numLines;

$counter = 0;
$sum = 0;

for ($i = 1; $i <= $numLines; $i++) {
	$number = <INPUT>;
	chop $number;
	if ($number < 0) {
		$counter++;		
	} else {
		$sum += $number;
		print "$number\n";
	}
}

close INPUT;

if ($counter == 1) {
	print "There was 1 negative number.\n"	
} else {
	print "There were $counter negative numbers.\n"	
}
print "The sum of the non-negative numbers is: $sum\n";

