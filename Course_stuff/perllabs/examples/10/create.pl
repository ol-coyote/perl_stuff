#!/usr/bin/perl
#
#	create.pl
#
     
use MyDBUtils;

$dbh = connectToDB;

$sql = <<'END_SQL';
CREATE TABLE product (
	id      VARCHAR(8) PRIMARY KEY,
	descrip VARCHAR(40),
	price   DECIMAL(10,2),
	unit    VARCHAR(20),
	qty     INTEGER
);
END_SQL

$dbh->do($sql);
     
$dbh->disconnect;

