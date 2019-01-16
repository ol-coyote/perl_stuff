#!/usr/bin/perl
#use strict;
#use warnings;

$lead="a_leapyears";
$range=10;
$val=int(rand($range));

$fname=$lead.$val;

if( -e $fname){
	print "here";
	
	$fname= $lead.$val.int(rand($range));
	open(LEAPS, ">", $fname) || die "error: $!";
}
else{
	$fname.=$ext;
	open(LEAPS, ">", $fname) || die "error: $!";

}
foreach $year (2000..2200){
	if($year%400==0){
		print LEAPS "$year is a leap year.\n";
	}
	elsif($year%100==0){
		print LEAPS "$year is a leap year.\n";
	}
	elsif($year %4 == 0){
		print LEAPS "$year is a leap year.\n";
	}
}
close(LEAPS);



