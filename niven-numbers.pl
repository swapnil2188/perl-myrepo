#!/usr/bin/perl

#A niven number is a non-negative number that is divisible by the sum of its digits.

print "Printing first 99 NIVEN numbers\n";

for $i (10..99)
{
	@array = split(//, $i);
	$sum = $array[0] + $array[1];
	if (($i % $sum) == 0)
	{
		print "$i\n";
	}
}
