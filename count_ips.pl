#!/usr/bin/perl
use Data::Dumper;

#SAMPLE LINE
#line = "Feb  6 20:11:56 router sshd[7156]: Failed password for root from 36.156.24.95 port 44362 ssh2"

open(IN, "<logfile") or die $!; 		#open a Filehandle for read

while(<IN>) 					#While loop Filehandle input	
{
	chomp $_;				#The chomp() function will remove(usually any newline character 
						#from end of string.
	#print "$_";				#$_ - Default Variable
	if (grep /Failed/, $_)				#Check - grep for match in current line $_
	{
		if (grep /root/, $_)			#Check - grep for match
		{	
			my @array = split( /\s+/, $_);	#Split each line by space and add to array
			$ip = "$array[10]\n";		#10th index as ip
			push (@array1, "$ip");		#Add IPs/elements to empty array
		}		
	}
}

my %hash;						#declare empty hash	

for (@array1)						#Run thru for loop and add elements of array to hash
{
	$hash{$_}++;					#increment Value of key->pair by 1 for a given key/IP here	
}							#$_ is a default variable - since we want to go thru all Keys  	
print Dumper(\%hash);					#Print the hash for unique IPs
close(IN);
