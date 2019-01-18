#!/usr/bin/perl
#
#	Exercise 5-2
#
#	Count the frequencies of all characters in a 
#	file.  
#

open (FILE, "< myfile") || die "Can't open myfile";

while(<FILE>)
{
	chop;
	$_ = lc($_);
	@words = split("");
	foreach $item (@words)
	{
		$words{$item}++;
	}
}
close FILE;

foreach $wd (sort (keys(%words)))
{
        print "$wd: $words{$wd}\n";
}
