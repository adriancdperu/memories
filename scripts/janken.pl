#!/usr/bin/perl -w
# SETUP
use strict;
use utf8;
use warnings;
#use diagnostics;

# DEFINITIONS
my @options = qw/ Rock Paper Scissors /;
my ($user_wins,$computer_wins,$draw);

my $computer_choice = int(rand(3));

# WELCOME MESSAGE
print " == Welcome to Jan-ken! == \n$options[0] (0), $options[1] (1), $options[2] (2):";

# READ USER
chomp(my $user_choice = <STDIN>);

# GAME MECHANICS

print "$options[$user_choice] Versus $options[$computer_choice] =>";

if ($computer_choice == 1) {
    if ($user_choice == 1) {
          print "DRAW!\n";
    }
    elsif ($user_choice == 2){
         print "WIN!\n";
    }
    else {
         print "FAILURE!\n";
    }
}
elsif ($computer_choice == 2){
    if ($user_choice == 1) {
        print "FAILURE!\n";
    }
    elsif ($user_choice == 2){
        print "DRAW!\n";
    }
    else{
        print "WIN!\n";
    }
}
else {
    if ($user_choice == 1) {
        print "WIN!\n";
    }
    elsif ($user_choice == 2){
        print "LOSS!\n";
    }
    else{
        print "FAILURE!\n";
    }
}
