#!/usr/bin/perl

#Q -  Given an Array of Size N in which Every number is Between 1 and N, determine if there are any duplicates
#Solution - Convert the Array into and Hash and Print the Hash to show the Numbers with there occurences
 
use Data::Dumper;

@array = (1,2,3,5,6,11,3,4,1,2,13,2);

my %hash;

for (@array)
{
	$hash{$_}++;
}
print Dumper(\%hash);
