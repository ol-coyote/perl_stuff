#!/usr/bin/perl
#
# Small shell in perl
# Hoping to use when I'm trying to break out
# Dangerous AF: DO NOT USE on a production system!

while(1){
	chomp($code=<STDIN>);
	eval(system($code));
}
