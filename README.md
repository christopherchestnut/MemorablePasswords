# MemorablePasswords
Simple command line tool for generating memorable passwords with simple rules, that can be easily communicated but have high entropy.

Basically a WIP, I hope to add more customisation but this demonstrates the concept.

## To Run
in a bash shell run the script ``` bash ./generateMemorableSecurePassword.sh```

## What it does
Takes a list of the top 10000 most common words on google between 5 and 8 characters, with all swear words removed.
* Picks 3 at random
* change first character to uppercase
* replace the first instance of the letter o to the number 0
* replace the first instance of the letter i to the number 1
* replace the first instance of the letter e to the number 3
* replace the first instance of the letter a to the symbol @
* add a random number between 1 and 9 to the end of the password
* add a random symbol to the end of the string

This results in a password between 17 and 26 characters potenially containing numbers and symbols, one or more times, that are easy to communicate to a user on the end of a phone.

the following are still in the script but are commented out atm
* replace the first instance of the letter y to the symbol 7
* add a random symbol to the beginning of the string


## To Do
* Add input parameters to modify the number of key words used and the character replacement parts to make them optional.
* Add a seeding mechanism to make the password choices if sharing with another user all they would need to know was the seed value to determine the password it would generate.
* Add support for other languages
