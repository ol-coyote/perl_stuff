#!/usr/bin/perl
#
#	Exercise 1-7 
#

for ($i = 20; $i <= 60; $i += 2) 
{
	$square = $i * $i;
	$cube = $square * $i;
	    
        print "$i\t$square\t$cube\n";
}
