#!/usr/bin/perl

#$ perl 4_3.pl data/a_leapyears3 data/a_leapyears4 data/a_leapyears6 data/a_leapyears7 data/a_leapyears8 data/a_leapyears80
$num_files=$#ARGV;
my @counted_lines =();
foreach (@ARGV){
	open(FILEREAD, "$_") || die "error: $!";
	$count=0;
	while(<FILEREAD>){
		$count++;
	}
	push(@counted_lines,$count);
	close(FILEREAD);
}
print("@counted_lines\n");
