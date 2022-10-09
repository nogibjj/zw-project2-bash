#! /bin/bash
# Neat the values from each record.
neat() {
    while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6 rec_column7 rec_column8 rec_column9 rec_column10 rec_column11 rec_column12 rec_column13 rec_column14
    do
      echo "Brand: $rec_column1"
      echo "Founded By: $rec_column2"
      echo "Found year: $rec_column3"
      echo "Country: $rec_column4"
      echo "Founder: $rec_column5"
      echo "Industry: $rec_column6"
      echo "Website: $rec_column7"
      echo "Rank in 2022: $rec_column8"
      echo "Rank in 2021: $rec_column9"
      echo "Brand value (M) in 2022: $rec_column10"
      echo "Brand value (M) in 2021: $rec_column11"
      echo "Brand value change: $rec_column12"
      echo "2022 Rating: $rec_column13"
      echo "2021 Rating: $rec_column14"
      echo ""
    done < <(tail -n +2 $1)
}
neat brandirectory-ranking-global-2022.csv