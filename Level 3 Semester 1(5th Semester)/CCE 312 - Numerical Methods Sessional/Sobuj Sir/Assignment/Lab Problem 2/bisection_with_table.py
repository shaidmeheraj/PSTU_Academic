import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Define the function
def f(x):
    return x * np.exp(x) - np.sin(8 * x) - 1

# Parameters
max_iterations = 50      # Maximum number of steps
tolerance = 1e-6         # Acceptable error for stopping
a = -0.5                 # Lower guess
b = 1                    # Upper guess

# Check if root is bracketed
if f(a) * f(b) > 0:
    print("Error: f(a) and f(b) must have opposite signs.")
    exit()

# Store iteration data
data = []

# Bisection loop
for i in range(max_iterations):
    c = (a + b) / 2
    fc = f(c)
    data.append([i + 1, a, b, c, fc])

    if abs(fc) < tolerance:
        break

    if f(a) * fc < 0:
        b = c
    else:
        a = c

# Create a DataFrame
df = pd.DataFrame(data, columns=["Iteration", "a", "b", "c (mid)", "f(c)"])

# Display the table
print("\nTabular Format (Using pandas):\n")
print(df.to_string(index=False))

# Final result
print("\n✅ Approximate root found at x =", round(c, 8))
