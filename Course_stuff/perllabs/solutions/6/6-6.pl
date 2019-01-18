#!/usr/bin/perl
#
#	Exercise 6-6
#
#	Sort strings by last to first letters rather than first to last
#
#
@strings = ("pez", "alpha", "sort", "these", "cabs", "yield", "why", "follow");

sub last_char 
{
	reverse($a) cmp reverse($b);
}

@new = sort last_char (@strings);
foreach $i (@new)
{
	print "$i\n";
}
