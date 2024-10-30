import ast

## Problem: Write a Python program that flattens a list of lists. For example, 
## if the input is [[1, 2], [3, 4], [5]], the output should be [1, 2, 3, 4, 5].

# Take user's input
input1 = input("Enter the first list (separated by spaces): ")
# Use ast.literal_eval() to evaluate the input string to convert it into list of lists
nested_list = ast.literal_eval(input1)
# Empty list to hold the flattened result
flat_list = []
# Use extend() to flatten list of lists
for lists in nested_list:
    flat_list.extend(lists)

print(flat_list)
