# whether x is even or odd
 
def evenOdd(x):
    """Function to check if the number is even or odd using docstring"""
    #using docstring
     
    if (x % 2 == 0):
        print("even")
    else:
        print("odd")
 
 
# Driver code to call the function
print(evenOdd.__doc__)
evenOdd(5)
