#!/usr/bin/perl
#
#  Exercise 7-10
#

@numbers = grep(/^[0-9][0-9]*$/, @ARGV);
@nonNumbers = grep(! /^[0-9][0-9]*$/, @ARGV);

$howMany = @numbers;
if ($howMany == 0) {
	print "There are no numbers on the command line\n";
} else {
	$sum = 0;
	foreach (@numbers) {
		$sum += $_;
	}
	$avg = $sum / $howMany;
	print "Sum = $sum  Avg = $avg\n";
}

$howMany = @nonNumbers;
if ($howMany == 0) {
	print "There are no non-numbers on the command line\n";
} else {
	print "Non-numbers sorted alphabetically:\n";
	@nonNumbers = sort @nonNumbers;
	print "@nonNumbers\n";
}
	
