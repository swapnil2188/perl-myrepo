#!/usr/bin/perl

use Data::Dumper;

@array = (1,2,3,4,5,1,2,3,4,5,6,7,8);

my %hash;

foreach (@array)
{
	$hash{$_}++;
}
print Dumper(\%hash);
print "\n";
