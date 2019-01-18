#!/usr/bin/perl
#
#  Exercise 8-14
#


while(1) {
	print "Enter a command (or 'quit'): ";
	$cmd = <STDIN>;
	chop $cmd;
	last if $cmd eq "quit";

	system($cmd) && warn "Could not execute: $cmd\n";
}
