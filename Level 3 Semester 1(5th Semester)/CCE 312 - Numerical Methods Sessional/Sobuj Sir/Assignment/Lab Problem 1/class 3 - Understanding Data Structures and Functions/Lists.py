jony_the_waiter_snack = ["Chips", "soda", "cake"]
print("Snacks : ", jony_the_waiter_snack)

# append
jony_the_waiter_snack.append("cookies")
print("After adding: ", jony_the_waiter_snack)

#remove
jony_the_waiter_snack.remove("soda")
print("After removing: ", jony_the_waiter_snack)

jony_the_waiter_snack.append("biscuit")
#sort (case sensetive - Big hand letter priority first)
jony_the_waiter_snack.sort()
print("After sorting : ", jony_the_waiter_snack)

#first item
print("First Item: ", jony_the_waiter_snack[0])

#last item
print("Last Item: ", jony_the_waiter_snack[-1])

#replace
jony_the_waiter_snack[1] = "chanachur"
print("After replacing in index : ", jony_the_waiter_snack)

#insert
jony_the_waiter_snack.insert(1, "Mojo")
print("Replacing: ", jony_the_waiter_snack)

#delete
del jony_the_waiter_snack[2]
print("After deleting : ", jony_the_waiter_snack)

#pop
last_snack = jony_the_waiter_snack.pop()
print("Last item : ", last_snack)

#nested list
party_bag = [
    ["chips", "cookies"],
    ["cake", "juice"],
    ["soda", "pizza"]
]

for bag in party_bag:
    for item in bag:
        print(item)
    
#sum
table1 = ["fish", "meat"]
table2 = ["rice", "vegetable"]

table = table1+table2
print("after all insert: ", table)