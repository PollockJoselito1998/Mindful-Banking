#!/usr/bin/perl
#
# File:  Mindful Banking.pl
#
# Author:  Michael Hart
#
# Purpose:  This Perl program is a demonstration of a basic
# "Mindful Banking" program.

use strict;
use warnings;

# variables for user input and system compute
my $account_balance;
my $current_balance;
my $total_deposit;
my $total_withdrawal;
my $deposit_amount;
my $withdrawal_amount;

# print welcome message
print "Welcome to Mindful Banking!\n\n";

# prompt user for account balance
print "Please enter your current account balance:  ";
$account_balance = <STDIN>;

# initialize variables
$current_balance = $account_balance;
$total_deposit = 0;
$total_withdrawal = 0;

# loop until user chooses to exit
while (1) {
	print "\nMenu:\n";
	print "  Deposit (D)\n";
	print "  Withdraw (W)\n";
	print "  Check Balance (C)\n";
	print "  Exit (E)\n";
	print "Enter your selection:  ";
	
	my $choice = <STDIN>;

	if($choice =~ /D/) {
		print "Enter amount of deposit:  ";
		$deposit_amount = <STDIN>;
		chomp($deposit_amount);

		$current_balance += $deposit_amount;
		$total_deposit += $deposit_amount;

		print "\nDeposit of \$$deposit_amount successful.\n";	
	} elsif($choice =~ /W/) {
		print "Enter amount of withdrawal:  ";
		$withdrawal_amount = <STDIN>;
		chomp($withdrawal_amount);

		if($withdrawal_amount > $current_balance) {
			print "\nError:  Withdrawal amount exceeds balance.\n";
		} else {
			$current_balance -= $withdrawal_amount;
			$total_withdrawal += $withdrawal_amount;

			print "\nWithdrawal of \$$withdrawal_amount successful.\n";	
		}
	} elsif($choice =~ /C/) {
		print "\nYour current balance is \$$current_balance.\n";
		print "Total deposits:  \$$total_deposit\n";
		print "Total withdrawals: \$$total_withdrawal\n\n";
	} elsif($choice =~ /E/) {
		print "\nThank you for using Mindful Banking!\n";

		exit(0);
	} else {
		print "\nError:  Invalid choice.\n";
	}
}