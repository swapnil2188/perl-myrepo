#!/usr/bin/perl

%h = ("Swap" => 31, "Anjali" => 26, "Shobha" => 52, "Papa" => 56);

while (($key, $value) = each %h)
{
	print "$key -> $value\n";
}
