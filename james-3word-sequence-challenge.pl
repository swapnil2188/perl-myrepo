#!/usr/bin/perl

#./james-3word-sequence-challenge.pl pg2009-darwin.txt | sort -k 5rn  | head -100

use Data::Dumper;		#Converts Perl DataStructures into strings that can be printed

$file = "$ARGV[0]\n";		#Read file from commandline into default ARGV array
open(IN, "<$file") or die $!;	#Open File for read

$/ = undef;			#set input record separator to undefined-so entire file is read as string
$line = <IN>;			#Read entire file - join all lines into one big string

@array = split(/\s+/, $line);	#Split line on spaces and add to array
$len = $#array;	

for ($i=0; $i<$len; $i++)
{
#	print "$array[$i] $array[$i+1] $array[$i+2]\n";
	push (@array1, "$array[$i] $array[$i+1] $array[$i+2]"); #Add 3 Words as one array item	
}							      #Note - We jump by 1 index only		
my %hash;
for (@array1)
{
	$hash{$_}++;			#write to the default Variable in PERL $_
}
print Dumper(\%hash);			#Print it in a Perl Data Structure Format
close(IN);
