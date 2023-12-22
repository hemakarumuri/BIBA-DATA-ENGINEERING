#importing pandas module
import pandas as pd
#importing csv module
import csv
#reading data from the salarydata.csv file
data= pd.read_csv("H:\Hexaware\VS code\Python_practice_hexaware\Assessment\salarydata.csv")
#printing the data
print(data)
#printing the headers of the csv file
print(data.columns)
#printing only salary column values
print(data.salary)