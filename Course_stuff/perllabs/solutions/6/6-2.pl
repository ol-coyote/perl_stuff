#!/usr/bin/perl
#
#	Driver portion of Exercise 6-2
#
require "6-2-subs";

@items = (20 ,35 ,54, 15, 283, 75, 750, -45, 3400);

$large = &largest(@items);
print "biggest number among @items is $large\n";

$small = &smallest(@items);
print "smallest number among @items is $small\n";

@range = &las(@items);
print "(smallest largest) among @items is (@range)\n";

@indx = &largeind(@items);
print "largest is $indx[0] at position $indx[1]\n";
