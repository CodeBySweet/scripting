
## Problem: Write a Python program that asks the user for a sentence and 
## returns a dictionary where:
## The keys are the words in the sentence.
## The values are the lengths of each word.

# Take user input
sentence = input("Enter a sentence: ")
# Create an empty dictionary to store the result
word_dict = {}
# Create a string that contains all the non-word characters that you want to avoid
unwanted_chars = ",.!;:'\"@#$%^&*()=_+-[]\{\}~/`<>0123456789"

# Loop through user input, save them to an empty list, then loop throgh the list and 
# save the ruselt into an empty dictionary
for word in sentence:
    # Use replace to avoid non-word character
    for char in unwanted_chars:
        sentence = sentence.replace(char, "")
    list = sentence.split()
    for i in list:
        word_dict[i] = len(i)

print("Word and word lengths:", word_dict)
