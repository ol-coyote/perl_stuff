#!/usr/bin/perl

#a_leapyears3 a_leapyears4 a_leapyears6 a_leapyears7 a_leapyears8 a_leapyears80
$num_files=$#ARGV;
my @counted_lines =();
foreach (@ARGV){
	open(FILEREAD, "$_");
	$count=0;
	while(<FILEREAD>){
		$count++;
	}
	push(@counted_lines,$count);
	close(FILEREAD);
}
print("@counted_lines\n");
