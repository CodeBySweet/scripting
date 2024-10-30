
## Problem: Write a program that takes a string and counts the frequency of each character. 
## The program should:
## Create a dictionary where the keys are the characters, and
## The values are the number of times each character appears in the string.

string = input("Enter a string: ")
count = 0
freq_dict = {}

for char in string:
    if char in freq_dict:
        count = +1
    else:
        count = string.count(char)
    freq_dict[char] = count
    
print(freq_dict)