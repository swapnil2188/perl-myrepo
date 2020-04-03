#!/usr/bin/perl

%hash = ('n1' => 4, 'n9' => 2, 'n5' => 10);

#PRINT both keys and value using WHILE only
while (($key, $value) = each %hash)
{
	print "$key => $value\n";
}
