#to read multiple inputs and map them into integer type
a=list(map(int,input().split()))
print(a)


l = ['sat', 'bat', 'cat', 'mat']
# map() can listify the list of strings individually
test = list(map(list, l))
print(test)