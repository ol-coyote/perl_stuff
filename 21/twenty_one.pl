#!/usr/bin/perls
use strict;
use warnings;
use List::Util qw(sum);
use Scalar::Util qw(looks_like_number);
my $stats_file = "stats.txt";

#subroutine for handling user input from the commandline
#Checks to determine if input is numeric, and between the ranges of 0<x<=10
#prompts user to reenter input until it meets those conditions and returns the value
sub process_input{
	my ($games_to_play);
	my $len =$#ARGV+1;
	if ($len <= 0 || $len >1){
		print "%usage; perl twenty_one.pl <number of games to play between 1-10>\n";
		exit 0;
	} else { 
		chomp($games_to_play=$ARGV[0]);
		if(looks_like_number($games_to_play) && ($games_to_play <=10) &&($games_to_play >0)){
			return $games_to_play;
		} else {

			while(1){
				print"Enter the number of games to play between 1-10 as an integer:";
				chomp($games_to_play=<STDIN>);
				if(looks_like_number($games_to_play) && ($games_to_play <=10) &&($games_to_play >0)){
					
					return $games_to_play;
				}
			}
		}
	}
}

# Subroutine for reading from the stats file
#if no file is found it creates one and initializes the stats
#otherwise it returns the two players stats
sub readin_file{
	
	my (@curr_stats);
	my $tempstr="";
	if (! -e $stats_file){
		open(FILEIN, ">",$stats_file) || die "Error: $!";
		foreach(1..2){	
			$tempstr = "$_:0:0:0:0";
			print FILEIN "$tempstr\n";
			
			push(@curr_stats, $tempstr);		
		}
		close(FILEIN);	
		
		return @curr_stats;
	} else {
		open(FILEIN, "<",$stats_file) || die "Error: $!";
		while(<FILEIN>){	
			push(@curr_stats,$_);
					
		}
		close(FILEIN);	
		return @curr_stats;
	}	
}


# Subroutine for writing to the stats file
#this is called to write the stats after a game is played
sub write_file{
	open(FILEIN, ">",$stats_file) || die "Error: $!";
	foreach(@_){
		chomp($_);
		print FILEIN "$_\n";
	}
	close(FILEIN);

}

# String format for output of player stats before exiting.
sub print_stats{
	printf"Player record:Win-Loss-Tie-Games Played\n";	
	foreach(@_){
		chomp(my @temp =split(":",$_));		
		printf("Player $temp[0] record: $temp[1]-$temp[2]-$temp[3]-$temp[4]\n");
		
	}
		
}

#subroutine for summing the values of the players hand.
sub get_total{
	return $_[0]+$_[1];
}

#subroutine for getting a random number to meet the requirement 2 <= x <= 11
sub get_rand_num{
	my $min=2; #per specs set the minimum to 2
	my $max=12; #had to set max at 12, otherwise it wouldn't return a max of 11.
	return $min + int(rand($max-$min));

}


#subroutine returns each dealt hand and totals for each hand
sub deal{
	my (@ary);
	my ($temp,$card1,$card2);	
	foreach(1..2){
		$card1=get_rand_num;
		$card2=get_rand_num;			
		$temp=sprintf("%d:%d:%d:%d\n",$_,$card1,$card2,get_total($card1,$card2));
		push(@ary,$temp);
	}
	return @ary;
}	

#subrouting to print the score tally 
sub tally_score{
	my (@temp);
	my ($player,$card1,$card2,$total);
	
	foreach(@_){
		($player,$card1,$card2,$total)=split(":",$_);
		printf("Player %d dealt: Card 1: %d\tCard 2: %d\tTotal: %d\n",$player,$card1,$card2,$total);
		push(@temp,"$player:$total");	
	}
	return @temp;
}

#subroutine to compare values of the totals
sub cmp_cards{
	$a=$_[0];
	$b=$_[1];
	return $a <=> $b;

}

#subroutine for getting the final score
sub score_game{
	my ($p1,$p1s)=split(":",$_[0]);
	my ($p2,$p2s)=split(":",$_[1]);
	my $total=cmp_cards($p1s,$p2s);
	return $total;
}

#subroutine to update player wins
sub update_win{
	my @temp=split(":",$_[0]);
	$temp[1]+=1;
	$temp[4]+=1;
	return join(":",@temp)
}

#subroutine to update player loss
sub update_loss{
	my @temp=split(":",$_[0]);

	$temp[2]+=1;
	$temp[4]+=1;
	return join(":",@temp)
}

#subroutine to update player tie
sub update_tie{
	my @temp=split(":",$_[0]);
	$temp[3]+=1;
	$temp[4]+=1;
	return join(":",@temp)
}

#subroutine used to get updated stats
sub update_stats{
	my ($p1,$p2);
	my @players = readin_file();
	my(@updated_stats);
	my(@temp);
	if($_[0]==-1){ #player 1 loss
		print("Player 2 wins!\n\n");
		$p1=update_loss($players[0]);
		$p2=update_win($players[1]);
		push(@updated_stats,$p1);
		push(@updated_stats,$p2);
		return @updated_stats;	
	} elsif($_[0]== 1) { #player 1 win
		print("Player 1 wins!\n\n");
		$p2=update_loss($players[1]);
		$p1=update_win($players[0]);
		push(@updated_stats,$p1);
		push(@updated_stats,$p2);
		return @updated_stats;
	} else { #tie
		print("It was a tie!\n\n");
		$p1=update_tie($players[0]);
		$p2=update_tie($players[1]);

		push(@updated_stats,$p1);
		push(@updated_stats,$p2);
		return @updated_stats;
	}
}


my $numgames=process_input();
my (@updated_stats);
while($numgames-- > 0){
	my @hand=deal(); #game hand
	my @score=tally_score(@hand); #score tally 
	my $winner=score_game(@score);
	@updated_stats =update_stats($winner);
	write_file(@updated_stats);
}
print_stats(@updated_stats);
