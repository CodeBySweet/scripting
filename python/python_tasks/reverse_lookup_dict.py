
## Problem: Given a dictionary where the values are names of cities and the keys are postal codes, 
## write a program that:
## Accepts a city name from the user and returns its postal code.
## If the city does not exist in the dictionary, display an appropriate message.

cities = {'60056': 'Mount Prospect', '60124': 'Elgin', '60172': 'Roselle', 
 '60067': 'Skokie', '60018': 'Des Plaines'}

u_input = input("Please enter a city name: ")

for key, value in cities.items():
    if u_input == value:
        print("The postal code for", u_input, "is", key)
    else:
        print("Provided city name is not in the dictionary")
