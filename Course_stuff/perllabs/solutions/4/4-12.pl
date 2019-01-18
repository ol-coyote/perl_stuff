#!/usr/bin/perl
#
#  Exercise 4-12
#
#

@wordList = ();

open(INPUTFILE, "4-5.data") || die "Can't open 4-5.data\n";

while(<INPUTFILE>) {
	chop;
	@words = split;
	push(@wordList, @words);
}
close INPUTFILE;

print "ALL WORDS: @wordList\n";

print "\nWords that contain \"th\" (anywhere in the word):\n";
@matches = grep(/th/, @wordList);
print "@matches\n";

print "\nWords that begin with \"th\":\n";
@matches = grep(/^th/, @wordList);
print "@matches\n";

print "\nWords that end in \"th\":\n";
@matches = grep(/th$/, @wordList);
print "@matches\n";

print "\nWords that are names of ordinary files in current directory:\n";
@matches = ();
foreach (@wordList) {
	if (-f) {
		push(@matches, $_);
	}
}
print "@matches\n";

print "\nWords that are names of sub-directories of current directory:\n";
@matches = ();
foreach (@wordList) {
	if (-d) {
		push(@matches, $_);
	}
}
print "@matches\n";
