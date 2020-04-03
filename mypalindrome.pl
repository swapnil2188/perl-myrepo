#!/usr/bin/perl

print "\nEnter a String:\t";

$palindrome = (<STDIN>);
chomp($palindrome);

@palindrome = split( //, $palindrome);
@backwards = reverse(@palindrome);

$len=@palindrome;

for ($i=0; $i<$len; $i++)
{
	if ($palindrome[$i] ne $backwards[$i])
	{
		$pali = "";
		last;
	}
	else
	{
		$pali = "true";
	}	

}
if ($pali)
{
	print "\n$palindrome is a palindrome\n";
}
else
{
	print "\n$palidrome is NOT a palindrome\n";
}
