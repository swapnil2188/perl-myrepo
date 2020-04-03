#!/usr/bin/perl
use Data::Dumper;

open (IN, "<logfile") or die $!;
@lines = <IN>;
close(IN);

chomp @lines;

for my $line (@lines)
{
	if (grep /Failed/, $line)
	{
		if (grep /root/, $line)
		{
			@line1 = split('\s+', $line);
			$ip = "@line1[10]\n";
			push @line2, "$ip";
		}
	}
}
print "@line2";
my %hash;
for (@line2)
{
	$hash{$_}++;					#increment Value of key->pair by 1 for a given key/IP here      
}                                                       #$_ is a default variable - since we want to go thru all Keys 
print Dumper(\%hash);
