#!/usr/bin/perl
#
#	Exercise 7-3
#

while(1)
{
	print("Enter a US phone number: ");
        chop($number = <STDIN>);
        if ( $number =~ /^\d\d\d[-.]\d\d\d[-.]\d\d\d\d$/ )
	{
		print "$number is a phone number\n";
		last;
	}	
	else
	{
		print("$number is not a phone number, re")
	}
}
