#insering values into the list
fruits = ['apple', 'banana', 'cherry']
fruits.append("orange")
print(fruits)

#insering a list  into another list
a = ["apple", "banana", "cherry"]
b = ["Ford", "BMW", "Volvo"]
a.append(b)
print(a)
print(b)

#insering values into the list at specific position
fruits = ['apple', 'banana', 'cherry']
fruits.insert(1, "orange")
print(fruits)

#copying a list into another list
fruits = ['apple', 'banana', 'cherry', 'orange']
x=[]
x = fruits.copy()
print("list x=",x)
fruits.append("kiwi")
print("list x=",x)
print(fruits)

#counting the items in the list
fruits = ['apple', 'banana', 'cherry']
x = fruits.count("cherry")
print("x=",x)


#finding index of an item
fruits = ['apple', 'banana', 'cherry']
x = fruits.index("cherry")
print(x)


#sorting the values in the list
Lst = [50, 70, 30, 20, 90, 10, 50]
Lst.sort()
print(Lst)


#reversing the list
Lst = [50, 70, 30, 20, 90, 10, 50]
Lst.reverse()
print(Lst)

#Removes a specific element
l = [50, 70, 30, 20, 90, 10, 50]
l.remove(20)
print(l)

#Removes an element at specific location
l = [50, 70, 30, 20, 90, 10, 50]
l.pop(1)
print(l)


#extending one list into another list
l1=[10,20,30,40]
l2=[40,60,70,70,90]
l1.extend(l2)
print(l1)

#clearing the list elements
l1=[10,20,30,40]
l1.clear()
print(l1)