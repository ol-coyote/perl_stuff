#!/usr/bin/perl
#
#  Exercise 5-11
#

@wordList = ();

if ($ENV{"INTERACTIVE"} eq "OFF") {

	open(INPUTFILE, "5-7.data") || die "Can't open 5-7.data\n";

	while($word = <INPUTFILE>) {
		chop $word;
		push(@wordList, $word);
	}
	close INPUTFILE;
} else {
	while(1) {
		print "Enter a word (or 'quit'): ";
		$word = <STDIN>;
		chop $word;
		if ($word eq "quit") {
			last;
		}
		push(@wordList, $word);
	}
}

$numWords = @wordList;
print join("\n", @wordList);
print "\nThere are $numWords words\n";
