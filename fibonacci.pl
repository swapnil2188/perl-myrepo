#!/usr/bin/perl

$num = 8;		#Fibonacci Upto 10 nums-so start with 8 as first two are already in starter array
@array=(1,1);					#start with array of 1st fib nums
$i=0;						#start index zero	

while ($i<$num)					#go until less then 10	
{
	$j=($array[$i]+$array[$i+1]);		#add previous number plus next	
	push (@array, "$j");			#push to array
	$i++;					#increment i	
}
print "@array\n";				#print Fibonacci
