
import inquirer

questions = [ inquirer.List(
    "operator", 
    message="Please choose an operator: ", 
    choices=["+", "-", "*", "/", "//", "**", "%"], 
    default="+"
    ),
    inquirer.Text("num1", message="Enter first number"),
    inquirer.Text("num2", message="Enter second number"),
]

answers = inquirer.prompt(questions)

if answers['operator'] == '+':
    result = int(answers['num1']) + int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '-':
    result = int(answers['num1']) - int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '*':
    result = int(answers['num1']) * int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '/':
    result = int(answers['num1']) / int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '//':
    result = int(answers['num1']) // int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '**':
    result = int(answers['num1']) ** int(answers['num2'])
    print("Answer:", result)
elif answers['operator'] == '%':
    result = int(answers['num1']) % int(answers['num2'])
    print("Answer:", result)