#!/usr/bin/perl

use Data::Dumper;

#SAMPLE LINE
#line = "Feb  6 20:11:56 router sshd[7156]: Failed password for root from 36.156.24.95 port 44362 ssh2"

open (IN, "<logfile") or die "cannot open file\t", $!;

while (<IN>)
{
	chomp $_;
	if ( grep /Failed/, $_)
	{
		if ( grep /root/, $_)
		{
			#print "$_\n";
			my @array = split( /\s+/, $_);
			$ip = "$array[10]\n";
			push (@array1, "$ip");
		}

	}

}
my %hash;

foreach (@array1)
{
	$hash{$_}++;
}
print Dumper(\%hash);
print "\n";

