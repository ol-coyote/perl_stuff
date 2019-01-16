#!/usr/bin/perl


my @names =(bob,steve,jane,dick,ash,bill,eva,eve,julia,kim,carmen,robert,will,ann,jill,chris,peter,perla,genesis,juan,david,phillip,lupe,amanda,denise);
my @sorted_names=sort(@names);
print "@names\n";
print "@sorted_names\n";
@matched=sort(grep(/i/,@names));
print "@matched\n";
print($0,"\n");
print("@ARGV\n", "$#ARGV\n");

