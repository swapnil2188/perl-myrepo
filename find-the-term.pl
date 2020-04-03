#!/usr/bin/perl

print "\nLooking for a Pattern in File - Whitespaces ignored in a word or sentence\n";
print "\nEnter a String: ";

$string = (<STDIN>);
chomp($string);
$string1 = $string;
$string =~ s/\s+//;		#Removing Whitespaces from inside a string

#print "$string\t$string1\n";

open (IN, "<testdata");

for $line (<IN>)
{
	#print "$line\n";
	if (grep /$string|$string1/i, $line)	#Checking for a pattern inside the file
	{
		print "$line\n";
	}
}
close(IN);
