#!/usr/bin/perl

@veg = ("corn", "cauliflower", "spinach");
%foods = ( "fruits" => ["apples", "oranges", "kiwi"],
           "veggies" => \@veg);

$foods{"meats"} = ["chicken", "pork", "beef"];

while (($key, $val) = each(%foods)) {
    $i = 0;
    while ($i < scalar(@$val)) {
        print $val->[$i], "\n";
        $i++;
    }
    print "#" x 12, "\n";
}



