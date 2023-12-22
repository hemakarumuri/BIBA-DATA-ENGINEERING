class Father:
    def father_quality(self):
        print("Inside father class")
        print("Father has intelligencr & Deep thinking power")
class Son1(Father):
    def son1_quality(self):
        print("Inside child-1 class")
        print("Child wants to be a civil servant")
class Son2(Father):
    def son2_quality(self):
        print("Inside child-2 class")
        print("Child wants to be a software engineer")
obj=Son1()
obj.father_quality()
obj.son1_quality()
obj2=Son2()
obj2.father_quality()
obj2.son2_quality()