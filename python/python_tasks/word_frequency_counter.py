
## Problem: Write a Python program that counts how many times each word appears 
## in a given sentence. It should return the count in the form of a dictionary, where:
## The keys are the words, and
## The values are the number of times each word appears.

# Take user's inputt
sentence = input("Enter a sentence: ")
# Create a string that contains all the non-word characters that you want to avoid
unwanted_chars = ",.!;:'\"@#$%^&*()?=_+-[]\{\}~/`<>0123456789"
# Variable to hold the frequency count of the string 
count = 0
# Create an empty dictionary to store the result
word_count_dict = {}


# Loop through unwanted_chars, use replace to avoid non-word character
for char in unwanted_chars:
    sentence = sentence.replace(char, "")
# Use lower() to avoid case sensetivity, and use split() to get individual words
list = sentence.lower().split()  
# Loop through the list to count word frequencies
for word in list:
    count = list.count(word)
    word_count_dict[word] = count

print("Frequency of the words:", word_count_dict)