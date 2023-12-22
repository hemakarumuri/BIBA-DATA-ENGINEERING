from datetime import date,datetime
#Returns in a date format
my_date = date(2001, 12, 24) 
print("Date passed as argument is", my_date) 

#returns today date
today = date.today() 
print("Today's date is", today) 

#returns today date year
print("Current year:", today.year) 

#returns today date month
print("Current month:", today.month) 

#returns today date day
print("Current day:", today.day)

#from datetime import datetime 
date_time = datetime.fromtimestamp(1887639468) 
print("Datetime from timestamp:", date_time) 


import time # This is required to include time module.
ticks = time.time()
print ("Number of ticks since 12:00am, January 1, 1970:", ticks)

print ("local time=",time.localtime())

localtime = time.localtime(time.time())
print ("Local current time :", localtime)


localtime = time.asctime( time.localtime(time.time()) )
print ("Local current time :", localtime)
