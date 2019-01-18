#!/usr/bin/perl
#
#  Exercise 2-11
#


$lineLength = 120;
print "FAVORITE SPORTS\n";

print "\nPro Football: ";
$barLength = $lineLength * 0.31;
print "X" x $barLength;

print "\nBaseball:     ";
$barLength = $lineLength * 0.17;
print "X" x $barLength;

print "\nAuto Racing:  ";
$barLength = $lineLength * 0.12;
print "X" x $barLength;

print "\nBasketball:   ";
$barLength = $lineLength * 0.06;
print "X" x $barLength;

print "\nHockey:       ";
$barLength = $lineLength * 0.05;
print "X" x $barLength;
