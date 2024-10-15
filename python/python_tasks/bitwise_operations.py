
# Create a program that takes two integers as input and performs all 
# bitwise operations (&, |, ^, ~, <<, >>) on them.

print('''Choose a bitwise operator: 
      1) & 
      2) |
      3) ^ 
      4) ~ 
      5) << 
      6) >>
      ''')
# Take input for the operator
choice = input('Type chosen operator (for ~ provide 1 number): ')

# We need to handle ~ operator separately, since it requires only one operand
if choice == '~':
    num = input('Enter a number: ')
    result = ~int(num)
    print('The result is: ', result)
elif choice == '&' or choice == '|' or choice == '^' or choice == '<<' or choice == '>>':
# For all the other operators take two numbers
    num1 = input('Enter first number: ')
    num2 = input('Enter second number: ')
# Perform the operation based on the chosen operator
    if choice == '&':
        result = int(num1) & int(num2)
    elif choice == '|':
        result = int(num1) | int(num2)
    elif choice == '^':
        result = int(num1) ^ int(num2)
    elif choice == '<<':
        result = int(num1) << int(num2)
    elif choice == '>>':
        result = int(num1) >> int(num2)
    print('The result is: ', result)
else:
    print('Provided operator is invalid, please provide valid operator.')
        


