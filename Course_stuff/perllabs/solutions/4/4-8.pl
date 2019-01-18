#!/usr/bin/perl
#
#  Exercise 4-8
#

@wordList = ();

while(1) {
	print "Enter a word (or 'quit'): ";
	$word = <STDIN>;
	chop $word;
	if ($word eq "quit") {
		last;
	}
	push(@wordList, $word);
}

$numWords = @wordList;
print join("\n", @wordList);
print "\nThere are $numWords words\n";
