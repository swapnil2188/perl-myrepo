#!/usr/bin/perl

@a=(1,1);
$n=10;
$i=1;

while ($i<$n)
{
	$m = ($a[$i] + $a[$i-1]);
	push (@a, "$m");
	$i++; 
}
print "@a\n";
