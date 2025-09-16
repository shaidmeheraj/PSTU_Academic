# Using the function f(x) = x³ - 4x - 9 
# in the interval [2, 3], 
# the code will:

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def f(x):
    return 3*x - np.cos(x) - 1

def bisection(a, b, tol=1e-6, max_iter=100):
    if f(a) * f(b) >=0:
        print("Bisection method fails. f(a) and f(b) must have opposite signs")
        return None
    
    iterations = []
    print(f"{'Iter':<5}{'a':<10}{'b':<10}{'c':<10}{'f(c)':<15}{'Error':<10}")
    print("-"*60)

    for i in range(1, max_iter+1):
        c = (a + b) / 2
        fc = f(c)
        error = abs(b - a) / 2

        iterations.append([i, a, b, c, fc, error])
        print(f"{i:<5}{a:<10.6f}{b:<10.6f}{c:<10.6f}{fc:<15.6f}{error:<10.6f}")

        if abs(fc) < tol or error < tol:
            break

        if f(a) * fc < 0:
            b = c
        else:
            a = c

    # Display table using pandas
    df = pd.DataFrame(iterations, columns=['Iteration', 'a', 'b', 'c', 'f(c)', 'Error'])
    print("\nTabular format:\n")
    print(df)

    # Plotting
    x_vals = np.linspace(a-1, b+1, 400)
    y_vals = f(x_vals)

    plt.figure(figsize=(8, 5))
    plt.plot(x_vals, y_vals, label='f(x)', color='blue')
    plt.axhline(0, color='black', linewidth=0.5)
    plt.axvline(c, color='red', linestyle='--', label=f'Root ≈ {c:.6f}')
    plt.title('Bisection Method Root Finding')
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.legend()
    plt.grid(True)
    plt.show()

    return c

# Call the function with initial guesses a and b
root = bisection(0, 1)
print(f"\nApproximate root: {root:.6f}")