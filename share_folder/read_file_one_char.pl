#!/usr/bin/perl
use strict;

$/ = \1;
open(TEST, "< last");

while (<TEST>) {
    print "$_\n";
}

