#!/usr/bin/perl
#
#  Exercise 8-9c
#


require "ctime.pl";

sub getEmptyFileList {
	opendir(DIRECTORY, ".") || die "Can't open current directory for reading\n";
	@files = readdir(DIRECTORY);
	closedir(DIRECTORY);
	
	@ordinaryFiles = grep(-f, @files);
	@emptyFiles = grep(-z, @ordinaryFiles);
	
	return @emptyFiles;
}

@emptyFiles = getEmptyFileList;

if (scalar(@emptyFiles) == 0) {
	print "There are no empty files\n";
	exit 1;
}

$deleted = 0;
$retained = 0;
@deletedFiles = ();
@retainedFiles = ();

foreach $file (@emptyFiles) {
	@statInfo = stat($file);
	print "\nFile name: $file\n";
	print "Inode: $statInfo[1]  Owner Id: $statInfo[4]\n";
	print "File last accessed: ", ctime($statInfo[8]);
	print "File last modified: ", ctime($statInfo[9]);
	print "\nDo you want to delete this file? (y/n/Y/N)";
	$response = <STDIN>;
	chop $response;
	
	if ($response eq 'y') {
		unlink $file;
		push(@deletedFiles, $file);		
		$deleted++;

	} elsif ($response eq 'n') {
		$retained++;
		push(@retainedFiles, $file);
		
	} else {
		$numFilesProcessed = $deleted + $retained;
		@remainingFiles = @emptyFiles[$numFilesProcessed .. $#emptyFiles];
		$numRemainingFiles = @remainingFiles;
		
		if ($response eq 'Y') {
			unlink @remainingFiles;
			push(@deletedFiles, @remainingFiles);		
			$deleted += $numRemainingFiles;
			last;
						
		} elsif ($response eq 'N') {
			push(@retainedFiles, @remainingFiles);		
			$retained += $numRemainingFiles;
			last;					
		}
	}
}

print "$deleted files deleted: @deletedFiles\n";
print "$retained files retained: @retainedFiles\n";
