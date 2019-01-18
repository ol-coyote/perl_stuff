#!/usr/bin/perl
#
#  Exercise 4-9
#

@wordList = ();

open(INPUTFILE, "4-2.data") || die "Can't open 4-2.data\n";

while($word = <INPUTFILE>) {
	chop $word;
	push(@wordList, $word);
}
close INPUTFILE;

$numWords = @wordList;
print join("\n", @wordList);
print "\nThere are $numWords words\n";
