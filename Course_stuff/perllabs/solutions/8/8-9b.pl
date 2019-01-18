#!/usr/bin/perl
#
#  Exercise 8-9b
#


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
	print "Do you want to delete $file? (y/n> ";
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
