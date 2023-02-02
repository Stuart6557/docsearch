#!/bin/bash

# Write a bash script to search a directory passed as the first argument to the
# script for the number of lines in every .txt file in the directory that contain
# the word "vista." Explain how your code works

# This script takes a directory path as its first argument, searches for all .txt
# files in that directory, and outputs the number of lines in each file that
# contain the word "vista." Here is the code:

# Check if the first argument is a directory
if [ ! -d "$1" ]; then
  echo "Error: $1 is not a directory"
  exit 1
fi

# Loop through all .txt files in the directory
for file in "$1"/*.txt; do
  # Check if the file exists and is readable
  if [ -f "$file" ] && [ -r "$file" ]; then
    # Count the number of lines that contain the word "vista"
    count=$(grep -c "vista" "$file")
    # Output the file name and the count
    echo "$file: $count"
  fi
done

# Explanation:

# * The first line specifies the interpreter for the script.
# * The script checks if the first argument passed to it is a directory using
# the -d option of the if statement. If it is not a directory, an error message
# is displayed and the script exits with a status code of 1.
# * The script then uses a for loop to loop through all files in the directory
# that end with .txt.
# Within the loop, the script checks if the file exists and is readable using
# * the -f and -r options of the if statement.
# * If the file exists and is readable, the script uses the grep command to
# count the number of lines in the file that contain the word "vista." The -c
# option tells grep to print only a count of the number of matching lines,
# rather than the lines themselves.
# * The script then outputs the file name and the count separated by a colon (:).
# * The script repeats the same process for each .txt file in the directory.