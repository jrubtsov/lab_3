#!/bin/bash
# Author : Julia Rubtsov
# Date: 9/20/2019
echo "Input filename: "
read filename
echo "Enter regex: "
read regex
grep $regex $filename

echo "Number of phone numbers in file: "
grep -c "^[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}$" "regex_practice.txt"
echo "Number of emails in file: "
grep -c "[0-z]@\{1\}" "regex_practice.txt" 
echo "List of all the phone numbers in the "303" area code: "
grep "^303" "regex_practice.txt"
echo "List of emails: "
grep "@geocities.com" "regex_practice.txt"  >> "email_results.txt" 
