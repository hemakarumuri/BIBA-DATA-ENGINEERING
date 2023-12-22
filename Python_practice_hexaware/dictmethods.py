#deleting the itema from a dictionary
my_dict = {'1': 'Geeks', '2': 'For', '3': 'Geeks'} 
my_dict.clear() 
print(my_dict)

#Retriving the value using the keys
d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
print(d.get('Name')) 
print(d.get('Gender'))



d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
print(list(d.items())[1][0])
print(list(d.items())[1][1])

#To get all the items in a dictionary
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car.items()
print(x)


#To access all the keys
d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
print(list(d.keys()))


#To get all the values
d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
print(list(d.values()))

#Mapping values of one dictionary with other
d1 = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
d2 = {'Name': 'Neha', 'Age': '22'} 
d1.update(d2) 
print(d1)


#To remove perticular key value pair
d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
d.pop('Age') 
print(d)



#Removes the last key value pair
d = {'Name': 'Ram', 'Age': '19', 'Country': 'India'} 
d.popitem() 
print(d)
