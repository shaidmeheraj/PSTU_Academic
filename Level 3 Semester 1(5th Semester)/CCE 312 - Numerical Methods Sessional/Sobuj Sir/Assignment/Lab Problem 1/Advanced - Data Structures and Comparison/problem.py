input_a = input()
A = set(map(int,input_a.split()))


input_b = input()
B = set(map(int, input_b.split()))

make_union = A.union(B)
make_intersection = A.intersection(B)
make_difference = A.difference(B)

print("set A: ", A)
print("set B: ", B)
print("Union A & B: ", make_union)
print("Intersection A & B: ", make_intersection)
print("Difference A & B: ", make_difference)
