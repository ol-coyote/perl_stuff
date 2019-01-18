#!/usr/bin/perl
#
#  Exercise 4-11
#

@wordList = ();

open(INPUTFILE, "4-4.data") || die "Can't open 4-4.data\n";

while(<INPUTFILE>) {
	chop;
	@words = split;
	push(@wordList, @words);
}
close INPUTFILE;

$numWords = @wordList;
print join("\n", sort @wordList);
print "\nThere are $numWords words\n";
