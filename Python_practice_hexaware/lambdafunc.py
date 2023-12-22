
str1 = 'HexaforHexa'
 
upper = lambda string: str1.upper()
print(upper(str1))


#using list
str1 = 'HexaforHexa'
 
upper = lambda string: string.upper()
print(upper(str1))

#lambda using if-else stmt
str1 = 'HexaforHexa'
 
upper = lambda string: string.upper()
print(upper(str1))


#lambda using filter()
li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(filter(lambda x: (x % 2 != 0), li))
print(final_list)


#lambda using map()
li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(map(lambda x: x*2, li))
print(final_list)


#Using lambda() Function with reduce()
from functools import reduce
li = [5, 8, 10, 20, 50, 100]
sum = reduce((lambda x, y: x + y), li)
print("sum=",sum)










