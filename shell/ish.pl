#!/usr/bin/perl
#
# Small shell in perl
# Hoping to use when I'm trying to break out
#

while(1){
	chomp($code=<STDIN>);
	eval(system($code));
}
