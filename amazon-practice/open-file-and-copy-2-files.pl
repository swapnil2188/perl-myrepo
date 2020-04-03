#!/usr/bin/perl

open (DATA1, "<f1.txt");
@lines = <DATA1>;

foreach my $lines (@lines)
{
	print "$lines";
}
close(DATA1);
