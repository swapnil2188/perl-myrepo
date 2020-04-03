#!/usr/bin/perl

#Given a Array = (1,2,3,5,4) - Total of any 2 numbers is 5
#Check for Index Values and ignore repeat values - no cant add itself

@array = (1,2,3,5,4);
$l = $#array;

for($i=0; $i<$l; $i++)
{
	for($j=($i+1); $j<=$l; $j++)
	{
		if ($i != $j)
		{
			$k=($array[$i]+$array[$j]);
			if ($k == 5)
			{
				print "$array[$i],$array[$j]\n";
			}		
		}
	}
}
