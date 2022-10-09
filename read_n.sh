#! /bin/bash
# Using the read command to read the line-break (\n) separated records of dataset.
read_n() {
    while read line
    do
      echo "Record is : $line"
    done < $1
}
read_n brandirectory-ranking-global-2022.csv
