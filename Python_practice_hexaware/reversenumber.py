n=int(input("Enter input"))
original_num=n
rev=0
while n>0:
    r=n%10
    n=n//10
    rev=rev*10+r
print("reverse of a given number is: ",rev)