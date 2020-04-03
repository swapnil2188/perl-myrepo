#!/usr/bin/perl

#example  #Input - 4  #Output - 4*3*2*1

print "Enter a number to find Factorial for\n";

$num = $ARGV[0];				#Enter Any number
$fact = 1;					

for ($i=1; $i<=$num; $i++)
{
	#print "$i*$fact\n";
	$fact = ($i*$fact);
}
print "$fact\n";
