class Father:
    def quality(self):
        print("Inside father calss")
        print("Father has intelligencr & Deep thinking power")
class Son(Father):
    def aim(self):
        print("Inside child class")
        print("Child wants to be a civil servant")
obj=Son()
obj.quality()
obj.aim()