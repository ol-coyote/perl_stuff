#!/usr/bin/perl
#
#  Exercise 1-25
#


$counter = 0;

while (1) {
	print "Enter a number or 'quit' ";
	$response = <STDIN>;
	chop $response;
	last if $response eq "quit";
	$counter++;
}

print "Program stopped by user, $counter number";
if ($counter != 1) {
	print "s";
}
print " entered\n";
