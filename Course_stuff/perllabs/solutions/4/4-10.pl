#!/usr/bin/perl
#
#  Exercise 4-10
#


@wordList = ();

open(INPUTFILE, "4-3.data") || die "Can't open 4-3.data\n";

while(<INPUTFILE>) {
	chop;
	@words = split;
	push(@wordList, @words);
}
close INPUTFILE;

$numWords = @wordList;
print join("\n", @wordList);
print "\nThere are $numWords words\n";
