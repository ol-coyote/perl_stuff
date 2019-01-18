#!/usr/bin/perl
#
#	Exercise 7-2 
#

while(<STDIN>)
{
	chop;
	if  ( /^[+-]?(\d+\.\d+|\d+\.|\.\d+)$/ )
	{
		print "$_ is a match\n";
	}
	else
	{
		print "NO MATCH\n";
	}

}
