#!/usr/bin/perl
#
#	connect.pl
#
#   Skeleton program for connecting to database using 
#   connectToDB subroutine in MyDBUtils.pm
#

use MyDBUtils;
     
$dbh = connectToDB;
  
# Do some processing - For demonstration purposes,
#  we will list the data sources (databases) available 
#  via the database handle.

@ds = $dbh->data_sources();
print "\nAVAILABLE DATA SOURCES:\n\n";
print "@ds\n";

$dbh->disconnect;

