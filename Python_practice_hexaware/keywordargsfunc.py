#caller does not need to remember the order of parameters
def student(firstname, lastname):
    print(firstname, lastname)
 
 
# Keyword arguments
student(firstname='Hexa', lastname='Practice')
student(lastname='Practice', firstname='Hexa')
