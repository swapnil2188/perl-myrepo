#!/usr/bin/perl

print "Enter the String: \n";

$string = (<STDIN>);
chomp ($string);
$string1 = $string;
$string =~ s/\s+//g;
#print "$string\t $string1\n";

open (IN, "<testdata");

for $line (<IN>)
{
	if ( grep /$string|$string1/i, $line )
	{
		print "$line";
	}
}
close (IN);
