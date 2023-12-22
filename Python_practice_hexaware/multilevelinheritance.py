class Grandfather:
    def gf_quality(self):
        print("Inside Grand father calss")
        print("Grand Father was a honest person")

class Father(Grandfather):
    def father_quality(self):
        print("Inside father class")
        print("Father has intelligencr & Deep thinking power")
class Son(Father):
    def aim(self):
        print("Inside child class")
        print("Child wants to be a civil servant")
obj=Son()
obj.gf_quality()
obj.father_quality()
obj.aim()