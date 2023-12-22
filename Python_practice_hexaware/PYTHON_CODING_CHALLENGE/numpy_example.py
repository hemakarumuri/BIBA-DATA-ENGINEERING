#importing numpy module
import numpy as np 
  
# Creating array object 
arr = np.array( [[ 5, 3, 1], [ -1, 4, 8],[6,-2,9]] ) 
print("Using numpy module")
# Printing type of arr object 
print("Array is of type: ", type(arr))  
# Printing array dimensions (axes) 
print("No. of dimensions: ", arr.ndim)  
# Printing shape of array 
print("Shape of array: ", arr.shape)  
# Printing size (total number of elements) of array 
print("Size of array: ", arr.size) 
# Printing type of elements in array 
print("Array stores elements of type: ", arr.dtype) 
