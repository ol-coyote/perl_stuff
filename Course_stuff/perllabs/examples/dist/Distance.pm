#!/usr/bin/perl
#
#  Distance.pm
#
#  Solution, Perl Supplementary Exercises
#  Written by Alan Baumgarten
#  Copyright 2012, /training/etc, Inc.
#
#  Created on: Jun 24, 2012

package Distance;

$PI = atan2(1,1) * 4;
$RADIUS_OF_EARTH = 3963.1;            # radius of earth in miles

# convert to radians

sub toRadians {
    $_[0] * ($PI / 180);  
}

# arc cosine of angle in radians

sub acos {
    my ($x) = @_;
    atan2(sqrt(1 - $x * $x), $x);
}

#  Argument values are in decimal degrees
#  Note: West and South have negative values

sub globeDistance {
    my ($a1, $b1, $a2, $b2) = @_;
    $a1 = toRadians($a1);
    $b1 = toRadians($b1);   
    $a2 = toRadians($a2);
    $b2 = toRadians($b2);  
    acos( cos($a1)*cos($b1)*cos($a2)*cos($b2) +
          cos($a1)*sin($b1)*cos($a2)*sin($b2) + sin($a1)*sin($a2) ) 
       * $RADIUS_OF_EARTH;
}          
 
1;
