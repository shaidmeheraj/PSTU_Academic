test_tuple = ("apple", "banana", "mango")
print(test_tuple)

#length
print(len(test_tuple))

#append way
test_list = list(test_tuple)
test_list.append("cherry")

test_tuple = tuple(test_list)

print(test_tuple)

#unpacking
fruits = ("apple", "mango", "papaya", "banana", "cherry")

(green, *yellow, red) = fruits

print(red)
print(yellow)

friends = ("Fahim", "masum", "anan")
mytuple = friends * 2
print(mytuple)
