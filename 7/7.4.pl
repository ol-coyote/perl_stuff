#!/usr/bin/perl

open(INFILE, "< ../data/people") || die "error: $!\n";
$re1='Lori Gortz';
$re="Lori Gortz";
@lines = <INFILE>;
close(INFILE);
foreach (@lines) {
	if ( $_=~/$Lori Gortz/){
		($name,$phone,$addr) = split(":",$_);
		print($name,":",$addr,"\n");
	}
}

