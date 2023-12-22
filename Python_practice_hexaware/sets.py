
var = {"Geeks", "for", "Geeks"}
type(var)
print(var)

#changing list into set
myset = set(["a", "b", "c"])
print(myset)

#set with different data type values
myset = {"Geeks", "for", 10, 52.7, True}
print(myset)


#frozen set creation
normal_set = set(["a", "b","c"])
print(normal_set)
normal_set.add("d")
print(normal_set)
# A frozen set
frozen_set = frozenset(["e", "f", "g"])    #cannot be modified
print(frozen_set)
#frozen_set.add("h")
print(frozen_set)