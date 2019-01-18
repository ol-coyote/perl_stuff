#!/usr/bin/perl
#
#  Exercise 3-8
#


print "Enter first name: ";
$first = <STDIN>;
chop $first;

print "Enter last name: ";
$last = <STDIN>;
chop $last;

print "Enter age: ";
$age = <STDIN>;
chop $age;

if ($age <= 0 || $age > 120) {
	print "ERROR: Age must be between 1 and 120\n";
	exit;
}

$formatted = sprintf("%20.20s  %10.10s  %3d", $last, $first, $age);
print "The formatted string is: $formatted\n";
