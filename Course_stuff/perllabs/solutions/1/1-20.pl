#!/usr/bin/perl
#
#  Exercise 1-20
#


print "Enter first number: ";
$first = <STDIN>;
chop $first;

print "Enter second number: ";
$second = <STDIN>;
chop $second;

if ($first >= $second) {
	print "Error: first number must be smaller than second\n";
	exit;
}

print "Enter 'even' or 'odd': ";
$choice = <STDIN>;
chop $choice;

if ($choice ne "even" && $choice ne "odd") {
	print "Error: invalid choice, must be 'even' or 'odd'\n";
	exit;
}
for ($k = $first; $k <= $second; $k++) {
	if ($k % 2 == 0) {
		if ($choice eq "even") {
			print "$k\n";			
		}
	} else {
		if ($choice eq "odd") {
			print "$k\n";			
		}		
	}
}

