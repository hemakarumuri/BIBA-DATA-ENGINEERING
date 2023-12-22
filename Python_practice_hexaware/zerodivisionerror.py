marks = 10000
a = marks / 0
print(a)



x = 5
y = "hello"
try:
    z = x + y
except TypeError:
    print("Error: cannot add an int and a str")
