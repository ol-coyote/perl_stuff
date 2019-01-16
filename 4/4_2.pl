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

=pod
% usage:
$ perl 4_2.pl 
LOGIN           	UID   	GUID  	SHELL       
root            	0     	0     	/bin/bash   
daemon          	1     	1     	/usr/sbin/nologin
bin             	2     	2     	/usr/sbin/nologin
sys             	3     	3     	/usr/sbin/nologin
=cut
