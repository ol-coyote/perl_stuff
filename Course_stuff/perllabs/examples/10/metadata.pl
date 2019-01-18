#!/usr/bin/perl
#
#	metadata.pl	
#
     
use MyDBUtils;

$dbh = connectToDB;

#  Show tables

$sth = $dbh->table_info('', '', '%');
$rows = $sth->dump_results;

#  Show column information for product table

$sth = $dbh->column_info(undef, 'test', "product", "%");
$rows = $sth->dump_results;
    
$dbh->disconnect;

