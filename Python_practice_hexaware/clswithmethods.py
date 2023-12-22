class Dog:
    attr="mammal"
    def __init__(self,name):
        self.name=name
    def speak(self):
        print("My name is {}".format(self.name))
R=Dog("Rodger")
T= Dog("Tommy")
R.speak()
T.speak()