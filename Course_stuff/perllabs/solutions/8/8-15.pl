#!/usr/bin/perl
#
#  Exercise 8-15
#


print "Enter a user name: ";
chop ($userName = <STDIN>);

@lines = `who`;
$matches = grep(/$userName/, @lines);

print "$userName is ";
print ($matches ? "" : "not ");
print "logged in\n";

