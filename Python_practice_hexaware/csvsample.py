import csv
file = open('H:\Hexaware\VS code\salarydata.csv')
type(file)
csvreader = csv.reader(file)
print(csvreader)
header = []
header = next(csvreader)
print(header)

rows = []
with open("H:\Hexaware\VS code\salarydata.csv", 'r') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)
print(header)
print(rows)


#using with statement
with open('H:\Hexaware\VS code\salarydata.csv') as file:
    content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)
