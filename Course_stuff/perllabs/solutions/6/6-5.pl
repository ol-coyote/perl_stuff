#!/usr/bin/perl
#
#	Exercise 6-5
#
#	Write a Perl script which sorts numbers in reverse order
#
#

sub rev_num_cmp 
{
	if ( $a > $b ) 
	{
		return -1;
	}
	elsif ( $a == $b ) 
	{
		return 0;
	}
	else 
	{
		1;
	}
}

@numbers = (1,5,3,2,4,6);
print sort rev_num_cmp(@numbers), "\n";
