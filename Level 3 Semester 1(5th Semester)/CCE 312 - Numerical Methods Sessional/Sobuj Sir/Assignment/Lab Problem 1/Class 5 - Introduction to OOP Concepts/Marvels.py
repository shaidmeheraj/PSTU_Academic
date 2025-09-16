# class Avengers:
#     def fight(self):
#         print("We are fighting")

# #object create
# ironman = Avengers()
# Hulk = Avengers()

# Hulk.fight()

#method
# class Avenger:
#     def introduce(self, name):
#         print(f"I am {name}")

# ironman = Avenger()
# ironman.introduce("meheraj")

#default constractor 

# class Avenger:
#     def __init__(self):
#         print("A new avengers ")

# captain = Avenger()

# #parameterized constractor
# class Avenger:
#     def __init__(self, name, power):
#         self.name = name
#         self.power = power
    
#     def show(self):
#         print(f"{self.name} has power: {self.power}")

# captain = Avenger("Meheraj", "boom")

# captain.show()



#inheritence
class Hero:
    def Fly(self):
        print("Protecting the earth")

class ironman(Hero):
    def Fly(self):
        print("Flying in the suit")

tony = ironman()
tony.Fly()
