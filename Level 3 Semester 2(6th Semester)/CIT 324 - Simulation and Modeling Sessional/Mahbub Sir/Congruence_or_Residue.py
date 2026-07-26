def lcg(n, seed, a, c, m):
    print("\nLinear Congruential Generator (LCG)\n")
    
    x = seed
    numbers = []

    for i in range(n):
        x = (a * x + c) % m
        numbers.append(x)
        print(f"X{i+1} = {x}")

    return numbers


# -----------------------------
# User Input
n = int(input("Enter how many random numbers (n): "))
seed = int(input("Enter seed value: "))
a = int(input("Enter multiplier (a): "))
c = int(input("Enter increment (c): "))
m = int(input("Enter modulus (m): "))

# Run
result = lcg(n, seed, a, c, m)

print("\nGenerated Numbers:")
print(result)