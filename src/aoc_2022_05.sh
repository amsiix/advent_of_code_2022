n=`grep -n move ../data/aoc_data_05.txt | head -1 | awk -F: '{print $1}'`
head -"`echo $n - 1 | bc`" ../data/aoc_data_05.txt
