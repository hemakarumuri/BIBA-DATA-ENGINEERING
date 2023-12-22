s = {'a', 'e', 'g', 'h'}
 

s.add('f')
s.add('l')
print('Set after adding elements:', s)
 
# Discarding element from the set
s.discard('g')
print('\nSet after deletion:', s)
 
# Removing element from the set
s.remove('e')
print('\nSet after removing the element:', s)
 
# Popping elements from the set
print('\nPopped element', s.pop())
print('Set after popping the element:', s)
 
s.clear()
print('\nSet after clear:', s)

s = {'a', 'e', 'g', 'h'}
s1=s.copy()
print(s1)


x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}

z = x.difference(y)
z1=x.intersection(y)
z2=x.union(y)

print(z)
print(z1)
print(z2)
#checks whether sets have disjoint or not i.e,common elements present or not
s = x.isdisjoint(y)
print(s)

s=x.issubset(y)
print(s)

#updating the set
x.update(y)
print(x)