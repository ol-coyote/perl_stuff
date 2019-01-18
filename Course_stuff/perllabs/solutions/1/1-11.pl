#!/usr/bin/perl
#
#	Exercise 1-11 
#

$answerNum = 1;
  
for ($baseNum = 1; $baseNum < 10000; $baseNum++) 
{
    $sum = 0;
    for ($consecNum = $baseNum; $consecNum < 10000; $consecNum++) 
    {
        $sum += $consecNum;
        if ($sum > 10000)
        {
           last;    # no need to continue inner loop
      	}
        elsif ($sum == 10000) 
        {
            print "Solution $answerNum\n";
            $answerNum++;
            for ($m = $baseNum; $m <= $consecNum; $m++)
            {
                print "$m ";
            }
            print "\n";
        } 
    } 
} 


