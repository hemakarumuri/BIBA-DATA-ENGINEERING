#simple if statement
x = 3
if x == 4:
  print("Yes")
else:
  print("No")
  
print(".......................................")
  
#if else statement
var1 = 100
if var1:
  print("1 - Got a true expression value")
  print(var1)
else:
  print("1 - Got a false expression value")
  print(var1)
 
var2 = 0
if var2:
  print("2 - Got a true expression value")
  print(var2)
else:
  print("2 - Got a false expression value")
  print(var2)
 
print("Good bye!")

print(".......................................")

#elif statements
var = 100
if var == 200:
   print("1 - Got a true expression value")
   print(var)
elif var == 150:
   print("2 - Got a true expression value")
   print(var)
elif var == 100:
   print("3 - Got a true expression value")
   print(var)
else:
   print("4 - Got a false expression value")
   print(var)

print("Good bye!")
print(".......................................")

#Nested if
num = 15
if num >= 0: 
    if num == 0: 
        print("Zero") 
    else: 
        print("Positive number") 
else: 
    print("Negative number") 