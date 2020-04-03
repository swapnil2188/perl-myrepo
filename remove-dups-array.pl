#!/usr/bin/perl

#TO REMOVE DUPES FROM A ARRAY CONVERT IT INTO HASH AND PRINT THE KEYS OF THAT HASH

use Data::Dumper;

@array = (1, 2, 1, 2, 3, 4, 5, 6, 6);

%hash;

foreach (@array)
{
	 $hash{$_}++;
}
print Dumper (\%hash);
print "\n";

@array1 = keys %hash;		#MOVE THE KEYS OF HASH TO ARRAY AND USE IT HOWEVER
print "Printing all the KEYS from Hash\n\n";
print "@array1\n";
