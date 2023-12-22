class Father:
    def father_quality(self):
        print("Inside father class")
        print("Father has intelligencr & Deep thinking power")
class Mother:
    def mother_quality(self):
        print("Inside mother class")
        print("Mother is a good home maker")
class Son(Father,Mother):
    def son_quality(self):
        print("Inside child-2 class")
        print("Child wants to be a software engineer")
obj=Son()
obj.father_quality()
obj.mother_quality()
obj.son_quality()