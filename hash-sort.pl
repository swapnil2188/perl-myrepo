#!/usr/bin/perl

%hash = ('c1' => 4, 'a2' => 2, 'a1' => 1, 'b1' => 3, 'b2' => 2);

print "\nNOTE - Keys are Strings here hence use 'cmp' EQUITY Operator\n";
print "\nNOTE - Values are Numbers here hence use '<=>' EQUALITY Operator\n";
print "\nDEFAULT - Alphabetic Sort using Keys\n";

foreach $keys (sort keys %hash)
{
	print "$keys:$hash{$keys}\n";
}

print "\nNumeric SORT using Keys - (cmp)\n";

foreach $keys (sort {$a cmp $b} keys %hash)
{
	print "$keys:$hash{$keys}\n";
}

print "\nIMPORTANT*** NOTE - Here the keys Variable is actually Keys and NOT values\n";
print "\nNumeric SORT using Values - ASCENDING (<=>)\n";

foreach $keys (sort {$hash{$a} <=> $hash{$b}} keys %hash)
{
	print "$keys:$hash{$keys}\n";
}

print "\nNumeric SORT using Values - DESCENDING (<=>)\n";

foreach $keys (sort {$hash{$b} <=> $hash{$a}} keys %hash)
{
	print "$keys:$hash{$keys}\n";
}
