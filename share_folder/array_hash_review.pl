#!/usr/bin/perl

%my_hash = ("first" => 123,
            "second" => 9877,
            "last" => "done");

# get a value
print "$my_hash{'second'}\n";  

# add key/value pair
$my_hash{"new"} = "new stuff"; 

# update key/value pair
$my_hash{"last"} = "changed"; 

# remove k/v pair
delete $my_hash{"first"};

#get all values
@vals = values(%my_hash);
print "@vals\n";

#get all keys
#@keys = keys(%my_hash);
#foreach (@keys) {
foreach (keys(%my_hash)) {
    print "$_ : $my_hash{$_}\n";
}

exit 0;
@test = ();
shift(@test) || warn "uh-oh";

@some_stuff = (20..50);
print "@some_stuff\n";

push(@some_stuff, 99);
unshift(@some_stuff, 1);
print "@some_stuff[0]\t@some_stuff[-1]\n";
pop(@some_stuff);
shift(@some_stuff);
print "@some_stuff[0]\t@some_stuff[-1]\n";


foreach $item (@some_stuff) {
    $total += $item;
}
print "total is $total\n";


