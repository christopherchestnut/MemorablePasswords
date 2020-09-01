#!/bin/bash

# source list for words used in Generation
WORD_LIST=google-10000-english-usa-no-swears-medium.txt
CHARACTER_LIST='@!#'
WORD_COUNT=3

shuf -n $WORD_COUNT $WORD_LIST |
# change first character to uppercase
sed 's/.*/\u&/' |
# merge the words into a single string
awk '{print}' ORS='' | 
# replace the first instance of the letter o to the number 0
sed 's/o/0/1' | 
# replace the first instance of the letter i to the number 1
sed 's/i/1/1' | 
# replace the first instance of the letter e to the number 3
sed 's/e/3/1' | 
# replace the first instance of the letter a to the symbol @
sed 's/a/@/1' | 
# replace the first instance of the letter y to the symbol 7
#sed 's/y/7/1' | 
# add a random number between 1 and 9 to the end of the password
echo "$(cat -)$((1 + RANDOM % 9))" |
# add a random symbol to the beginning of the string
#echo "${CHARACTER_LIST:$(( RANDOM % ${#CHARACTER_LIST} )):1}$(cat -)" |
# add a random symbol to the end of the string
echo "$(cat -)${CHARACTER_LIST:$(( RANDOM % ${#CHARACTER_LIST} )):1}"