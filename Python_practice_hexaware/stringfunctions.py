# working of upper() function 
text = input("Enter string: ")
  
# upper() function to convert 
# string to upper case 
print("\nConverted String:") 
print(text.upper()) 
  
# lower() function to convert 
# string to lower case 
print("\nConverted String:") 
print(text.lower()) 

#islower()
print("Text completely is in lowercase or not:",text.islower())

#isupper()
print("Text completely is in uppercase or not:",text.isupper())
  
#isnumeric()
print("Text completely numeric or not:",text.isnumeric())

#isdecimal()
print("Text have digits or not:",text.isdigit())


#isdecimal()
print("Text have decimal number or not:",text.isdecimal())
  
# converts the first character to  
# upper case and rest to lower case  
print("\nConverted String:") 
print(text.title()) 
  
#swaps the case of all characters in the string 
# upper case character to lowercase and viceversa 
print("\nConverted String:") 
print(text.swapcase()) 
  
# convert the first character of a string to uppercase 
print("\nConverted String:") 
print(text.capitalize()) 
  
# original string never changes 
print("\nOriginal String") 
print(text)


#Returns count of all characters
print("Count is:",len(text))

#Joining with other characters
str='#'.join(text)
print(str)

#checks whether the string starts with perticular character or not
print(text.startswith('h'))


#Remove spaces at the beginning and at the end of the string
x = text.strip()
print(x)