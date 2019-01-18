#!/usr/bin/perl
#
#       Exercise 2-3
#
#
print "Enter a string: ";
$target = <STDIN>;
chop($target);

print "Enter a substring: ";
$sub = <STDIN>;
chop($sub);

$pos = index($target, $sub);
print "First occurrence of ($sub) is at $pos\n";

$start = substr($target, $pos + 1);
$pos = $pos + index($start, $sub) + 1;
print "Second occurrence of ($sub) is at $pos\n";
