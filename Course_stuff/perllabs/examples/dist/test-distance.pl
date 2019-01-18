#!/usr/bin/perl

use Distance;

$lat1  = +39.38515;     # Pikesville, MD
$long1 = -76.72703;

$lat2  = +39.61255;     # Great Cacapon, WV
$long2 = -78.39155;

print "$Distance::PI\n";
print Distance::globeDistance($lat1, $long1, $lat2, $long2);   
