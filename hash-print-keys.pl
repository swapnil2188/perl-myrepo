#!/usr/bin/perl

%hash1 = ('a' => 4, 'b' => 2, 'c' => 10);

@array1 = keys %hash1;
#print "@array1\n";

print "$array1[0]\n";
print "$array1[1]\n";
print "$array1[2]\n";

foreach my $keys(keys %hash1)
{
	print "$keys\n";
}
