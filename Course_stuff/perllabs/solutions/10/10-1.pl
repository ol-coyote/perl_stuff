#!/usr/bin/perl
#
#	Exercise 10-1
#
     
use MyDBUtils;

$dbh = connectToDB;

$sql = <<'END_SQL';
CREATE TABLE customer (
	id        VARCHAR(8) PRIMARY KEY,
	name      VARCHAR(24),
	city      VARCHAR(24),
	state     CHAR(2),
	zipcode   VARCHAR(10),
	balance   DECIMAL(10,2),
	credlimit DECIMAL(10,2));
END_SQL

$dbh->do($sql);
     
$dbh->disconnect;

