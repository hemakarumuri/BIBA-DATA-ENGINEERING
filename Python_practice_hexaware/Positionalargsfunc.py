#if you forget the order of the positions, the values can be used in the wrong places
def nameAge(name, age):
    print("Hi, I am", name)
    print("My age is ", age)
 
 
# You will get correct output because  argument is given in order
print("Case-1:")
nameAge("Suraj", 27)
# You will get incorrect output because argument is not in order
print("\nCase-2:")
nameAge(27, "Suraj")
