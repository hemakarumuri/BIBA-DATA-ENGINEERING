file = open("H:\Hexaware\VS code\Python_practice_hexaware\geek.txt", "r")
 
# This will print every line one by one in the file
for each in file:
    print (each)
    
    
f=open("H:\Hexaware\VS code\Python_practice_hexaware\geek.txt","r")
print(f.read())

f=open("H:\Hexaware\VS code\Python_practice_hexaware\geek.txt","r")
print(f.read(5))



with open("H:\Hexaware\VS code\Python_practice_hexaware\geek.txt") as file:  
    data = file.read() 
 
print(data)


#Using split function
with open("H:\Hexaware\VS code\Python_practice_hexaware\geek.txt", "r") as file:
    data = file.readlines()
    for line in data:
        word = line.split()
        print (word)
