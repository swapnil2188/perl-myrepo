#!/usr/bin/perl

%hash = ('c' => 4, 'a' => 2, 'g' => 1, 'b' => 3);

print "Sort Keys Alphabetically - Default\n";

foreach my $key (sort keys %hash)
{
	print "$key: $hash{$key}\n";
}

print "Sort Keys Numerically - Numeric Sort\n";

foreach my $key (sort {$a <=> $b} keys %hash)
{
	print "$key: $hash{$key}\n";
}

print "Sort Values Numerically - Ascending\n";

foreach my $value (sort{$hash{$a} cmp $hash{$b}} keys %hash)
{
	print "$value:$hash{$value}\n";
}

print "Sort Values Numerically - Descending\n";

foreach my $value (sort {$hash{$b} cmp $hash{$a}} keys %hash)
{
	print "$value:$hash{$value}\n";
}
