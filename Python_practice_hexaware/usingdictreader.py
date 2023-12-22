#Import the csv module
import csv
with open('H:\Hexaware\VS code\salarydata.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
       print(row)


