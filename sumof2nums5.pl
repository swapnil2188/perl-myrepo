#!/usr/bin/perl

#Given a LIST = [1,2,3,5,4] - Total of any 2 numbers is 5
#Check for Index Values and ignore repeat values - no cant add itself

@array = (1,2,3,5,4);							
$len = $#array;							#length of Array (NOT no. of elements in it)

for ($i=0; $i<$len; $i++)					#less than length	
{
	for ($j= ($i + 1); $j<=$len; $j++)	#less than equal to len as need to consider last number
	{	
		if ($i != $j)					#Dont add number to itself
		{
			#print "$i\t+\t$j\t\t\t\t$array[$i]\t+\t$array[$j]\n";
			$k = (($array[$i])+($array[$j]));		#Sum
			if ($k == 5)
			{
				print "($array[$i]),($array[$j])\=\t5\n";	#Print the number
			}
		}
	}
}

