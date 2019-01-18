#!/usr/bin/perl
#
#	Exercise 1-8 
#

	
for ($i = -4; $i <= 4; ++$i) 
{
    if ($i == 0)
    {
        print "$i is even\n";
    } 
    elsif ($i < 0) 
    {
        print "$i is negative and ";
        if ($i % 2 == 0)
        {
            print "even\n";
      	}    
        else
        {
            print "odd\n";
        }
    } 
    else 
    {
        print "$i is positive and ";
        if ($i % 2 == 0)
        {
            print "even\n";
        }
        else
        {
            print "odd\n";
        }
    } 
} 


