#!/usr/bin/perl
#
#	Exercise 4-5 
#

 
if ($#ARGV != 2)
{
    print "You must supply three command line args\n";
    exit(1);
}
    
$begin = $ARGV[0];
$end   = $ARGV[1];
$step  = $ARGV[2];

print "CELSIUS\tFAHRENHEIT\n";
for ($c = $begin; $c <= $end; $c += $step)
{
    $f = 1.8 * $c + 32;
    printf("%d\t%6.1f\n", $c, $f);
}

