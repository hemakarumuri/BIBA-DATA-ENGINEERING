print("List Iteration") 
l = ["s", "for", "Hexware"] 
for i in l: 
    print(i) 
    
print(".................................")
    
print("\nTuple Iteration") 
t = ("Hexware", "for", "Hexware") 
for i in t: 
    print(i) 
    
print(".................................")
    
print("\nString Iteration") 
s = "Hexware"
for i in s: 
    print(i,end=' ') 
print('\n')
    
print(".................................")
    
print("\nDictionary Iteration") 
d = dict() 
d['xyz'] = 123
d['abc'] = 345
for i in d: 
    print("%s  %d" % (i, d[i])) 
    
print(".................................")
    
print("\nSet Iteration") 
set1 = {1, 2, 3, 4, 5, 6} 
for i in set1: 
    print(i)
    
print(".................................")

#using len() in range() method
list = ["Hexware", "for", "Hexware"] 
for index in range(len(list)): 
    print(list[index]) 
    
print(".................................")   
    



#pass statement
for letter in 'HexwareforHexware': 
    pass
print('Last Letter :', letter) 

