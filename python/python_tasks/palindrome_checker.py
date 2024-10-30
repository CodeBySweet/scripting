
## Problem: Write a Python program that checks if a given string is a palindrome 
## (a word or phrase that reads the same forwards and backwards). The program should:
## Ignore spaces and capitalization.
## Print whether the string is a palindrome.

#====================== Method 1 ======================#
## Using slicing to reverse a string
word = input("Please enter a word: ").lower().strip()
reverse_word = word[::-1]

if word.isdigit():
    print("Provided input is a digit, please provide a word")
elif word == reverse_word:
    print("Provided word is a palindrome")
else:
    print("Provided word is not a palindrome")
    
#====================== Method 2 ======================#
## Using range and length of the string
# for char in range(len(word) -1, -1, -1):
#     reverse_word += word[char]

#====================== Method 3 ======================#
## Adding each character in reverse 
# for char in word:
#     reverse_word = char + reverse_word
#     print(reverse_word)
