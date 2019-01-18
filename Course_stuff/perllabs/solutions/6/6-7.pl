#!/usr/bin/perl
#
#  Exercise 6-7
#


sub printBar {
	my $barLength = $_[0];
	print "X" x $barLength;
}

$lineLength = 120;
print "FAVORITE SPORTS\n";

print "\nPro Football: ";
$barLength = $lineLength * 0.31;
printBar ($barLength);

print "\nBaseball:     ";
$barLength = $lineLength * 0.17;
printBar ($barLength);

print "\nAuto Racing:  ";
$barLength = $lineLength * 0.12;
printBar ($barLength);

print "\nBasketball:   ";
$barLength = $lineLength * 0.06;
printBar ($barLength);

print "\nHockey:       ";
$barLength = $lineLength * 0.05;
printBar ($barLength);
