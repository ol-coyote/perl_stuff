#!/usr/bin/perl
use strict;
use warnings;

sub hey {
    return "main!\n";
}

package Yo;

sub hey {
    return "Yo!\n";
}
print "In Yo package\n";
print main::hey();
print Yo::hey();
print hey();

package main;

print "#" x 20, "\n";
print "In main package\n";
print main::hey();
print Yo::hey();
print hey();

