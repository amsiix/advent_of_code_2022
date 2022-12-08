n=`grep -n move aoc_data_05.txt | head -1 | awk -F: '{print $1}'`
head -"`echo $n - 1 | bc`" aoc_data_05.txt
