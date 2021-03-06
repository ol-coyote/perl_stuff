#!/usr/bin/perl
#
#  Exercise 6-11a
#

sub compareByCategory {
	$categoryA = (split(':', $a))[0];
	$categoryB = (split(':', $b))[0];
	return $categoryA cmp $categoryB;
}

sub compareByBrand {
	$brandA = (split(':', $a))[1];
	$brandB = (split(':', $b))[1];
	return $brandA cmp $brandB;
}

sub compareByDesc {
	$descA = (split(':', $a))[2];
	$descB = (split(':', $b))[2];
	return $descA cmp $descB;
}

sub compareByPrice {
	$priceA = (split(':', $a))[3];
	$priceB = (split(':', $b))[3];
	return $priceA <=> $priceB;
}

sub compareByRating {
	$ratingA = (split(':', $a))[4];
	$ratingB = (split(':', $b))[4];
	return $ratingA <=> $ratingB;
}

sub compareByWeight {
	$weightA = (split(':', $a))[5];
	$weightB = (split(':', $b))[5];
	return $weightA <=> $weightB;
}


open(DATAFILE, "products") || die "Can't open products file\n";
@lines = <DATAFILE>;
close DATAFILE;

$sortByCategory = 0;

if ($#ARGV >= 0) {			# if there is at least one command arg
	if ($ARGV[0] eq "-c") {
		@lines = sort compareByCategory @lines;
		$sortByCategory = 1;	
	} elsif ($ARGV[0] eq "-b") {
		@lines = sort compareByBrand @lines;		
	} elsif ($ARGV[0] eq "-d") {
		@lines = sort compareByDesc @lines;		
	} elsif ($ARGV[0] eq "-p") {
		@lines = sort compareByPrice @lines;		
	} elsif ($ARGV[0] eq "-r") {
		@lines = sort compareByRating @lines;		
	} elsif ($ARGV[0] eq "-w") {
		@lines = sort compareByWeight @lines;		
	}
}

print "Category           Brand Name         Description                  ";
print "Price   Rating  Weight\n";
print "--------           ----------         -----------                  ";
print "-----   ------  ------\n";

if ($sortByCategory) {
	($saveCategory) = split(":", $lines[0]);
	$totalWeight = 0;
	$totalRating = 0;
	$totalPrice = 0;
	$numItems = 0;
}

foreach $rec (@lines) {
	($cat, $brand, $desc, $price, $rating, $weight) = split(":", $rec);

	if ($sortByCategory && $cat ne $saveCategory) {
		$avgPrice  = $totalPrice / $numItems;
		$avgRating = $totalRating / $numItems;
		$avgWeight = $totalWeight / $numItems;
				 
		print "-" x 90, "\n";
		printf("%-18.18s %-18.18s %-25.25s  \$%8.2f   %3.1f %5d\n\n", 
			"", "", "Averages for $saveCategory", $avgPrice, $avgRating, $avgWeight);
			
		$totalWeight = 0;
		$totalRating = 0;
		$totalPrice = 0;
		$numItems = 0;			
	}
	
	printf("%-18.18s %-18.18s %-25.25s  \$%8.2f   %3.1f %5d\n", 
		$cat, $brand, $desc, $price, $rating, $weight);
		
	if ($sortByCategory) {
		$numItems++;
		$totalWeight += $weight;
		$totalRating += $rating;
		$totalPrice  += $price;	
		$saveCategory = $cat;	
	}
}

if ($sortByCategory) {
		$avgPrice  = $totalPrice / $numItems;
		$avgRating = $totalRating / $numItems;
		$avgWeight = $totalWeight / $numItems;
				 
		print "-" x 90, "\n";
		printf("%-18.18s %-18.18s %-25.25s  \$%8.2f   %3.1f %5d\n\n", 
			"", "", "Averages for $saveCategory", $avgPrice, $avgRating, $avgWeight);
}			
