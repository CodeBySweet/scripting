

firstname = input("What your name? ")
lastname = input("What your last name? ")

if firstname and lastname:
    print("Full name:", firstname, lastname)
elif firstname or lastname:
    if firstname:
        print("First name:", firstname)
    if lastname:
        print("Last name:", lastname)
    