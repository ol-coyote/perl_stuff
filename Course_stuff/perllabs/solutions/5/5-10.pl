#!/usr/bin/perl
#
#  Exercise 5-10
#


if (exists $ENV{'MYVAR'}) {
	print "The value of MYVAR is $ENV{'MYVAR'}\n";
} else {
	print "The variable MYVAR is not set\n";
}
