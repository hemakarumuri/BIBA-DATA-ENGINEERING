# importing the module
import json
 
# Opening JSON file
with open('data.json') as json_file:
    data = json.load(json_file)
 
    # Print the type of data variable
    print("Type:", type(data))
 
    # Print the data of dictionary
    print("\nPeople1:", data['employee'])
    #print("\nPeople2:", data['people2'])
