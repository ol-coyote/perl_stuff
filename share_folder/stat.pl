#!/usr/bin/perl
use strict;
use warnings;

use POSIX;

my @data = stat("rev.pl");
print "owner: $data[4]\n";
print "size: $data[7]\n";
print "permissions: $data[2]\n";

my $mod = POSIX::strftime("%d/%m/%Y %H:%M:%S", localtime($data[9]));
print "modified time: $data[9]\n";
print "modified time: $mod\n";

