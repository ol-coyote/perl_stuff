#!/usr/bin/perl
#
#	Exercise 7-4 
#

open (IN, "< ../../datafiles/people");
@lines = <IN>;
close(IN);

print @lines;
$numlines = @lines;
print "There are $numlines lines\n"; 

print "\nPrint all lines that contain \"Street\":\n";
foreach (@lines) {
    print if /Street/;
}

#  or:  print grep (/Street/, @lines);

print "\nPrint all lines where the first name begins with \"B\":\n";
print grep (/^B/, @lines);

print "\nPrint all lines where the last name begins with \"Ker\":\n";
foreach (@lines) {
    ($first, $last) = split;
    print if $last =~ /^Ker/;
}

print "\nPrint lines 2 through 4:\n";
foreach $i (2 .. 4) {
    print $lines[$i - 1];
}

print "\nPrint phone numbers that are in the 408 area code:\n";
foreach (@lines) {
    ($name, $phone) = split ":";
    print if $phone =~ /^408/;
}

print "\nPrint Lori Gortz's name and address:\n";
foreach (@lines) {
    ($name, $phone, $address) = split ":";
    print "$name $address\n" if $name eq "Lori Gortz";
}

print "\nPrint Ephram's first and last name in capital letters:\n";
foreach (@lines) {
    ($name) = split ":";
    print "\U$name\E\n" if $name =~ /^Ephram/;
}

print "\nPrint lines that do NOT contain a \"4\":\n";
foreach (@lines) {
    print if $_ !~ /4/;
}

print "\nPrint the line containing Wilhelm Kopf, changing Wilhem to William:\n";
foreach (@lines) {
    if (/^Wilhelm/) {
        s/hel/lia/;
        print;
    }
}

print "\nPrint Tommy's birthday (without the year):\n";
foreach (@lines) {
    if (/^Tommy/) {
        ($name, $phone, $address, $bdate) = split ":";
        ($month, $day) = split ("/", $bdate);
        print "$month/$day\n";
    }
}

print "\nPrint lines where the last field is exactly 5 digits:\n";
foreach (@lines) {
    ($name, $phone, $address, $bdate, $num) = split ":";
    print if $num =~ /^[0-9]{5}$/;
}

print "\nPrint the names of all persons born in March:\n";
foreach (@lines) {
    ($name, $phone, $address, $bdate) = split ":";
    ($month) = split ("/", $bdate);
    print "$name\n" if $month == 3;
}

print "\nPrint the names of all persons over age 50:\n";
foreach (@lines) {
    ($name, $phone, $address, $bdate) = split ":";
    ($month, $day, $year) = split ("/", $bdate);
    $age = 110 - $year;					# assumes 2010
    print "$name\n" if $age > 50;
}
