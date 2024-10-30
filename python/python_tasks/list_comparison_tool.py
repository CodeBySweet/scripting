
## Problem: Create a program that:
## Accepts two lists of numbers from the user.
## Finds the intersection (common elements) and difference 
## (elements that are in one list but not the other) between the two lists.
## Prints the results.

# Take user input, use split to get elements one by one
first_list = input("Enter the first list (separated by spaces): ").split()
second_list = input("Enter the second list (separated by spaces): ").split()

# Convert list into set
f_set = set(first_list)
s_set = set(second_list)

# Print created sets to verify
print("First set:", f_set)
print("Second set:", s_set)

# Store difference and intersection results
diff_result = f_set.difference(s_set)
inter_result = f_set.intersection(s_set)

# Print the results  
print("The difference between two sets:", diff_result)
print("The intersections between two sets", inter_result)
    
    


