file = open('H:\Hexaware\VS code\Python_practice_hexaware\geek.txt','w')
file.write("This is the write command")
file.write("It allows us to write in a particular file")
file.close()


with open("file.txt", "w") as f: 
    f.write("Hello World!!!")
