# Elfs are carrying snacks with the following calorie count
# (the breaks represent a change of elf, and contigous numbers
# are the calorie count for each calorie carried by the same elf)


# What's the highest calorie count being carried

cat ../data/aoc_data_01.txt | awk 'BEGIN{s = 0} {if ($0 ~ /^$/) {print s; s=0} else {s += $0}} END{print s}' | sort -rn  | head -1

# What's the calorie count for the top three calorie carriers
cat ../data/aoc_data_01.txt | awk 'BEGIN{s = 0} {if ($0 ~ /^$/) {print s; s=0} else {s += $0}} END{print s}' | sort -rn  | head -3 | awk '{s+=$0} END{print s}'