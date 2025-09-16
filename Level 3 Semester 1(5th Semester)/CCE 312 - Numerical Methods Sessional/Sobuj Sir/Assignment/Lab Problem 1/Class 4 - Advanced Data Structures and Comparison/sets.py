test_set = {"apple", "banana", "papaya"}
print(test_set)

# set -> duplicated remove + sorted
test = {2, 3, 5, 1, 4, 3, 5}
print(test)

#by default false=0, true=1
test_sett = {"apple", "banana", 1, True, 2, 0}
print(test_sett)

test_set.add("Orange")

#append
test_set.update(test_sett)
print(test_set)

#remove
test_set.discard("banana")

#clear

#Union (|)
jungle_set1 = {"banana", "apple", "orange"}
jungle_set2 = {"grape", "kiwi"}
print(jungle_set1.union(jungle_set2))

#insersect (&)
print(jungle_set1.intersection(jungle_set2))