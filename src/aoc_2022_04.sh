cat ../data/aoc_data_04.txt | 
	awk -F, '{print $1, $2}' | 
	awk '
{
	l1 = substr($1, 1, index($1, "-") - 1) + 0; # remember to convert to integer +0 does that in awk! 
	h1 = substr($1, index($1, "-") + 1, 100) + 0; 
	l2 = substr($2, 1, index($2, "-") - 1) + 0; 
	h2 = substr($2, index($2, "-") + 1, 100) + 0; 
	# Count the number of intervals fully contained
	s1 += (l1 >= l2 && h1 <= h2) || (l1 <= l2 && h1 >= h2); 
	# Count the number of intervals that overlap
	s2 += (h1 >= l2 && h2 >= l1)
} 

END{
	print s1, s2
}'
