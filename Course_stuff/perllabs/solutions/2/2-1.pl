#!/usr/bin/perl
#
#	Exercise 2-1: 
#	Write a Perl program which reads in three numbers and 
#	checks to see if the third number is an odd number
#	between the first two.
#
print "enter a lower limit ";
chop($lower = <STDIN>);
print "enter an upper limit ";
chop($upper = <STDIN>);
print "enter a third number ";
chop($third = <STDIN>);
if ( $third  >= $lower && $third <= $upper &&  ($third & 01))
{
	print "$third is odd and between $upper and $lower\n";
}
else
{
	print "$third is NOT odd and between $upper and $lower\n";
}
	
