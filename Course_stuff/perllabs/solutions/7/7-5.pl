#!/usr/bin/perl
#
#	Exercise 7-5
#
#	Use tr and an associative array to count 
#	frequencies of words in a file. Output the words
#	in order of their frequency, from most frequent 
#	to least frequent. 
#
#

sub numcmp
{
        $counts{$b} <=> $counts{$a};
}

while(<STDIN>) {
	tr/A-Za-z/\n/c;
	foreach $word (split) {
		$counts{$word}++;
	}
}

@sorted_keys = sort numcmp keys(%counts);

foreach $word (@sorted_keys)
{
        print "$word\t$counts{$word}\n";
}

