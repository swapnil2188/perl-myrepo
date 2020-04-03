#!/usr/bin/perl

%hash = ('n1' => 4, 'n9' => 2, 'n5' => 10);

@array = values %hash;
#print "@array\n";
print "$array[0]\n";
print "$array[1]\n";
print "$array[2]\n";

foreach my $values (values %hash)
{
	print "$values\n";
}
