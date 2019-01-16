#!/usr/bin/perl
#
#Read pairs into associative array, read data and print based off of queried salary results. 
#
open(PAIRS, "< ../data/pairs") || die "Error: $!"; #open the file


if($#ARGV < 0){ #no args passed, prompt user for value to search
	print "Enter a minimum salary to search by: ";
	chomp($input=<STDIN>);
}

else{  #handle passed values
	chomp(@ARGV[0]);
	$input=@ARGV[0];

}

while(<PAIRS>){ #read pairs into associative array
	chomp($_);
	($id,$name)=split;
	$accounts{$id}=$name;
}
close(PAIRS); #dont forget to close the file

open(PAYROLL,"< ../data/payroll") || die "Error: $!"; #open the file

while(<PAYROLL>){ #parse the payroll data
	chomp($_);
	($num,$sal,$ssn,$city,$state)=split;
	if($sal >= $input){ #output query results to screen
		$f_ssn=sprintf("%3s-%2s-%4s",substr($ssn,0,3),substr($ssn,3,2),substr($ssn,-4));
		print "$accounts{$num} $sal $f_ssn $city\n";
	}
}
close(PAYROLL); #dont forget to close the file

