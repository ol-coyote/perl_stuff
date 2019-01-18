#!/usr/bin/perl
#
#  Exercise 3-4
#


@wordList = ('one', 'two', 'three', 'four', 'five', 'six', 'seven');
$counter = 0;

foreach $word (@wordList) {
	$counter++;
	if ($counter % 2 == 0) {
		print "\U$word\E\n";
	} else {
		print "\L$word\E ";		
	}
}
print "\n";
