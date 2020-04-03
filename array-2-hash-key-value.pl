#!/usr/bin/perl

print "\nCONVERT 2 ARRAYS to HASH\n";

@array1 = ('a', 'd', 'v', 'c', 'f');
@array2 = (1, 3, 4, 5, 6);

my %hash;

@hash{@array1} = @array2;

print %hash;
print "\n";

print "Regular sort by key - alpabhetic\n";
foreach $key (sort keys %hash)
{
	print "$key: $hash{$key}\n";
}

print "Numeric sort by key\n";
foreach $key (sort { $a <=> $b } keys %hash)
{
	print "$key: $hash{$key}\n";
}

print "numeric sort by value\n";
foreach $value (sort {$hash{$a} cmp $hash{$b}} keys %hash)
{
	print "$value: $hash{$value}\n";
}

