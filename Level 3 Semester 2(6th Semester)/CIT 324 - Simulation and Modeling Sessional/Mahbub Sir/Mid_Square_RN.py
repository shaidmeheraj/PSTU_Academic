def mid_square_c_style(n, seed):
    print("\nMid-Square Method (C-style logic)\n")
    
    for i in range(1, n + 1):
        # Step 1: Square the seed
        y = (seed * seed) / 100  # remove last 2 digits
        
        # Step 2: Remove leading digits
        z = int(y / 10000)
        
        # Step 3: Extract middle 4 digits
        x = int((y / 10000 - z) * 10000)
        
        # Update seed
        seed = x
        
        # Print result
        print(f"{x:4d}", end=" ")

    print()


# -----------------------------
# User Input
n = int(input("Number of random numbers to be generated (n): "))
seed = int(input("Enter 4-digit seed: "))

# Run
mid_square_c_style(n, seed)