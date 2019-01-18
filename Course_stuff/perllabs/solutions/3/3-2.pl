#!/usr/bin/perl
#
#	Exercise 3-2
#
#	Using the mdzips file in the datafiles directory, write a program
#	that allows the user to enter a zipcode, and then displays the 
#	corresponding city or the message "not found."
#

open(ZIP, "< ../../datafiles/mdzips") || die "can't open mdzips file";

print "Enter a Maryland zipcode: ";
$target = <STDIN>;
chop($target);

$found = 0;

while($line = <ZIP>)  {
	chop($line);
	$zipcode = substr($line, 0, 5);
	$city = substr($line, 6);

	if ($zipcode eq $target) {
		print "$zipcode is $city\n";
		$found = 1;
		last;
	}
}

close ZIP;

if (! $found) {
	print "$target not found\n";
}


