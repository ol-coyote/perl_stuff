#!/usr/bin/perl
#
#	Exercise 1-10
#


$result = 1;
$i = 1;

while ( $i <= 10 )
{
    $result = $result * $i;
    $i++;
}

printf("10! = $result\n");
