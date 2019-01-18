#!/usr/bin/perl
#
#  Exercise 6-9
#

@sortedArgs = sort {$a <=> $b} @ARGV;
print "Numerically Sorted Command Line Arg's: @sortedArgs";		
