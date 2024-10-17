
user_input = input('How old are you?: ')
name = input("What is you name?: ")

if not name.isdigit():
    print("Hello there", name, end="!\n")
else:
    print("Error: invalid entry. You must enter alphabetical values")

if user_input.isdigit():
    age = int(user_input)
    print("You will be", age + 1, "years old next year.")
    if age >= 18:
        print("You are an adult", end="!\n")
    else:
        print("You are a minor", end="!!\n")
else:
    print("Invalid entry: Please provide a numeric value.")
    exit


