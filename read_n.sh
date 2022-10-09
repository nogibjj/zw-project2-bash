#! /bin/bash
# Using the read command to read the line-break (\n) separated records of dataset.
read_n() {
    while read line
    do
      echo "The Brand information is : $line"
    done < $1
}
read_n brandirectory-ranking-global-2022.csv
