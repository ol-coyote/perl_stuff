#!/usr/bin/perl
#
#       Exercise 2-5
#
#       Write a program which inputs a string and determines
#       if it is a palindrome or not
#

print "enter a word ";
chop($word = <STDIN>);

$len = length($word) - 1;

for ( $i = 0; $i < $len; $i++)
{
        if ( substr($word, $i, 1) ne substr($word, $len, 1))
        {
                print "$word is not a palindrome\n";
                exit 0;
        }
        $len--;
}

print "$word is a palindrome\n";

 
