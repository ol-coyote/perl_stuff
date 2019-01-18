#!/usr/bin/perl
#
#  Exercise 2-7
#


while ($line = <STDIN>) {
	chop($line);			#  Remove newline
	$valid = 1;				#  Assume line is valid until we find otherwise
	
	$firstSpace = index($line, " ");
	if ($firstSpace < 1) {
		$valid = 0;
	} else {
		$city = substr($line, 0, $firstSpace);
		$secondSpace = index($line, " ", $firstSpace + 1);
		if ($secondSpace == -1 || $secondSpace == $firstSpace + 1) {
			$valid = 0;
		} else {
			$state = substr($line, $firstSpace + 1, $secondSpace - $firstSpace - 1);
			$zipcode = substr($line, $secondSpace + 1);
		}
	}
	
	if (! $valid) {
		print "ERROR: Didn't find two spaces or found adjacent spaces\n";
	} elsif (length($state) != 2){
		print "ERROR: Length of state does not equal 2\n";
	} elsif (length($zipcode) != 5) {
		print "ERROR: Length of zipcode does not equal 5\n";		
	} else {
		print "City:  $city\n";
		print "State: $state\n";
		print "Zip:   $zipcode\n"
	}
}	
