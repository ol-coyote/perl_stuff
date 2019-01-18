#!/usr/bin/perl
#
#  Exercise 1-24
#


while (1) {
	print "Enter a number or 'quit' ";
	$response = <STDIN>;
	chop $response;
	last if $response eq "quit";
}

print "Program stopped by user\n";
