class Animal:
    def display(self):
        print("Animal make different sounds.")

class Dog(Animal):
    def display(self):
        super().display()
        print("Dog barks")


y = Dog()
y.display()