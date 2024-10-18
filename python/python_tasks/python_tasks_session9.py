print("====================================== Task 1 ======================================")

# 1. Basic Output and String Manipulation
# Write a Python program that prints the following:ß
# Your name
# Your favorite number
# A sentence formed by concatenating two strings, e.g., "Hello " + "world!"

name = input("Enter your name: ")
fav_number = input("Enter your favorite number: ")
print(name + " " + fav_number, "is your favorite number")

print("====================================== Task 2 ======================================")

# 2. Simple Input and Data Type Conversion
# Write a program that asks the user for their age using input(), 
# then prints it as an integer, float, and string.

age_str = input("What is your age?: ")
age_int = int(age_str)
age_float = float(age_str)
print("String:", age_str, "\nInteger:", age_int, "\nFloat:", age_float)

print("====================================== Task 3 ======================================")

# 3. Using sep= and end= Parameters
# Write a program that prints three items (your first name, last name, and age) on a single 
# line but separates them with instead of spaces using sep=.
# Print the numbers 1 to 5, all on one line, using end= to avoid new lines.

name = "Anna"
last_name = "White"
age = 25
print("Full name:",name,last_name,"\n","Age:",age,sep=" ")

i = 0
while i < 5:
    i += 1
    print(i, end="")
    
print("\n====================================== Task 4 ======================================")

# 4. Arithmetic and Boolean Operators
# Create a simple calculator that can:
# Add, subtract, multiply, and divide two numbers.
# Check whether a number is positive or negative using a Boolean operator (>, <, ==).

print("""Choose one arithmetic operators:
             1. +
             2. -
             3. *
             4. /
          """)
arth_opr = input("Enter arithmetic operator: ")
arg1 = int(input("Enter first number: "))
arg2 = int(input("Enter second number: "))
result = 0

# Check if a arg1 and agr1 are positive or negative numbers
if arg1 > 0:
    print(arg1, "is a positive number")
elif arg1 < 0:
    print(arg1, "is a negative number")
else:
    print("First number is zero")
  
if arg2 > 0:
    print(arg2, "is a positive number")
elif arg2 < 0:
    print(arg2, "is a negative number")
else:
    print("Second number is zero")
    
# Function to perform basic arithmetic operations
def calculator(arg1,arg2): 
    if arth_opr == "+":
        result = arg1 + arg2
        print("Result: ", result)
    elif arth_opr == "-":
        result = arg1 - arg2
        print("Result: ", result)
    elif arth_opr == "*":
        result = arg1 * arg2
        print("Result: ", result)
    elif arth_opr == "/":
        result = arg1 / arg2
        print("Result: ", result)
    else:
        print("Invalid entry! Please provide a valid value!")
        
    # Check if result is positive or negative
    if result > 0:
        print(result, "is a positive number")
    elif result < 0:
        print(result, "is a negative number")
    else:
        print("Result is zero")
        
calculator(arg1,arg2)
    
print("====================================== Task 5 ======================================")

# 5. Number System Conversion
# Write a program that converts a decimal number to binary, octal, and hexadecimal. 
# Use Python's built-in functions like bin(), oct(), and hex().

print("""
      Choose from the following:
      1. bin to convert number to binary
      2. oct to convert number to octal
      3. hex to convert number to hex
      """)
func_name = input("Enter a function: ")
num = int(input("Enter a number: "))

if func_name == "bin":
    print("Binary number of", num, "is", bin(num))
elif func_name == "oct":
    print("Octal number of", num, "is", oct(num))
elif func_name == "hex":
    print("Octal number of", num, "is", hex(num))
else:
    print("Invalid entry! Please provide a valid number!")

print("====================================== Task 6 ======================================")

# 6. Logical Operators with Conditionals
# Write a program that asks the user for their age and checks whether they are:
# A child (under 12)
# A teenager (between 13 and 19)
# An adult (20 and above)

age = int(input("What is your age? "))

if age >= 20:
    print("You are an adult")
elif age >= 13 and age <= 19:
    print("You are a teenager")
else:
    print("You are a child")

print("====================================== Task 7 ======================================")

# 7.Guess the Number Game
# Create a simple number guessing game where the user has to guess a random number 
# between 1 and 10. Use if-elif-else statements to give feedback 
# like "too low", "too high", or "correct!"

print("""
      ========= WELCOME TO A GUESSING GAME =========
          Please enter a number between 1 and 10.
                        Good Luck!
      ==============================================
      """)
secret_number = 4

while True:
    user_input = int(input("Enter a number: "))
    if user_input == secret_number:
        print("Correct! You won!")
        break
    elif user_input > secret_number and user_input <= 10:
        print("Hint: provided number is too high!")
    elif user_input < secret_number and user_input >= 1:
        print("Hint: provided number is too low!")
    else:
        print("Please provide a number between 1 and 10")