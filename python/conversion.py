
def conversion(num):
    # binary
    binary_num = bin(num)
    # octal
    octal_num = oct(num)
    # hexadecimal
    hex_num = hex(num)
    
    print("<--------------------->")
    print(" Binary number:",binary_num,"\n","Octal number:",octal_num,"\n","Hexadecimal number:",hex_num)
    print("<--------------------->")
    
decimal_num = int(input("Please enter number to convert: "))
conversion(decimal_num)