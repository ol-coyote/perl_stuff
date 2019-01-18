#!/usr/bin/perl
#
#	Exercise 5-3
#

open(DATABASE, "< ../../datafiles/states.txt") || die;

while(<DATABASE>)
{
    chop;
    ($dum, $abbrev, $state) = split (':', $_);
    next if $abbrev eq "";
    $state_abbrevs{$abbrev} = $state;
}

close DATABASE;

while(1)
{
    print "\nEnter abbreviation (or ENTER to quit): ";
    chop($target = <STDIN>);

    last unless $target;

    if (exists($state_abbrevs{$target}))
    {
        print "$target is the abbreviation for $state_abbrevs{$target}\n";
    }
    else
    {
        print "$target is not in the database\n";
    }
}


