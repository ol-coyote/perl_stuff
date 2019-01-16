#!/usr/bin/perl
#
# Output /etc/passwd in a human-readable format
#
$fname="/etc/passwd";
open(A,"<",$fname);
printf("%-16s\t%-6s\t%-6s\t%-12s\n","LOGIN", "UID", "GUID", "SHELL");
while(<A>){
	@lines=split(":",$_);
	chomp(@lines);	
	printf("%-16s\t%-6d\t%-6d\t%-12s\n",@lines[0],@lines[2],@lines[3],@lines[6]);
}
