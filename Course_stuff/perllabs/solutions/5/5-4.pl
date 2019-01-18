#!/usr/bin/perl
#
#	Exercise 5-4
#

open(DATABASE, "< ../../datafiles/states.txt") || die "Can't open states.txt\n";
print "Reading states.txt ...\n";

while(<DATABASE>)
{
    chop;
    ($code, $dum, $state) = split (':', $_);
    $state_codes{$code} = $state;
}

close DATABASE;


open(DATABASE2, "< ../../datafiles/zipcodes.csv") || die "Can't open zipcodes.csv\n";
print "Reading zipcodes.csv ";

while(<DATABASE2>)
{
    chop;
    ($zip, $dum1, $dum2, $dum3, $city, $state_code) = split (',', $_);
    $zipcodes{$zip} = join(':', $city, $state_code);
    print ".";
}
print "\n";

close DATABASE2;



while(1)
{
    print "\nEnter zipcode (or ENTER to quit): ";
    chop($target = <STDIN>);

    last unless $target;

    if (exists($zipcodes{$target}))
    {
	$city_and_state_code = $zipcodes{$target};
	($city, $code) = split (':', $city_and_state_code);
	$state = $state_codes{$code}; 
        print "$target is the zipcode for $city, $state\n";
    }
    else
    {
        print "$target is not in the database\n";
    }
}


