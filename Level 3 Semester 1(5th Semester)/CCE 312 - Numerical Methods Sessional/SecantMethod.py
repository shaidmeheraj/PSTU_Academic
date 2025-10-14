"""
Real-Life Problem: Finding Vapor Pressure Temperature using Secant Method

Problem: In chemical engineering, we often need to find the temperature at which
a liquid will vaporize at a given pressure. We'll use the Antoine equation:

log10(P) = A - B/(C + T)

Where:
- P is vapor pressure (mmHg)
- T is temperature (°C)
- A, B, C are substance-specific constants

For water: A = 8.07131, B = 1730.63, C = 233.426

Question: At what temperature does water have a vapor pressure of 500 mmHg?
"""

import math

def antoine_equation(T, target_pressure=500):
    """
    Antoine equation for water vapor pressure
    Returns the difference between calculated and target pressure
    """
    A = 8.07131
    B = 1730.63
    C = 233.426
    
    # Calculate pressure at temperature T
    log_P = A - B/(C + T)
    P = 10 ** log_P
    
    # Return difference (we want this to be zero)
    return P - target_pressure

def secant_method(f, x0, x1, target_pressure, tolerance=1e-6, max_iterations=100):
    """
    Secant Method for finding roots
    
    Parameters:
    - f: function to find root of
    - x0, x1: initial guesses
    - target_pressure: the pressure we're solving for
    - tolerance: acceptable error
    - max_iterations: maximum number of iterations
    """
    print(f"Finding temperature for vapor pressure = {target_pressure} mmHg")
    print(f"\nIteration | x0 (°C) | x1 (°C) | f(x1) | Error")
    print("-" * 60)
    
    for i in range(max_iterations):
        # Calculate function values
        f_x0 = f(x0, target_pressure)
        f_x1 = f(x1, target_pressure)
        
        # Check if denominator is too small
        if abs(f_x1 - f_x0) < 1e-12:
            print("Warning: Division by very small number")
            break
        
        # Secant method formula
        x2 = x1 - f_x1 * (x1 - x0) / (f_x1 - f_x0)
        
        # Calculate error
        error = abs(x2 - x1)
        
        print(f"{i+1:9d} | {x0:7.4f} | {x1:7.4f} | {f_x1:9.4f} | {error:.4e}")
        
        # Check convergence
        if error < tolerance:
            print(f"\nConverged! Temperature = {x2:.4f}°C")
            return x2
        
        # Update values for next iteration
        x0 = x1
        x1 = x2
    
    print(f"\nMax iterations reached. Best estimate: {x1:.4f}°C")
    return x1

# Example 1: Water vapor pressure at 500 mmHg
print("=" * 70)
print("PROBLEM 1: At what temperature does water boil at 500 mmHg pressure?")
print("=" * 70)
temp1 = secant_method(antoine_equation, 70, 90, target_pressure=500)
print(f"\nAnswer: Water boils at {temp1:.2f}°C when pressure is 500 mmHg")

# Example 2: Water vapor pressure at 760 mmHg (normal boiling point)
print("\n\n" + "=" * 70)
print("PROBLEM 2: Verify normal boiling point (760 mmHg = 1 atm)")
print("=" * 70)
temp2 = secant_method(antoine_equation, 90, 110, target_pressure=760)
print(f"\nAnswer: Water boils at {temp2:.2f}°C at 1 atm (should be ~100°C)")

# Example 3: High altitude cooking (lower pressure)
print("\n\n" + "=" * 70)
print("PROBLEM 3: Boiling point at high altitude (Denver: ~630 mmHg)")
print("=" * 70)
temp3 = secant_method(antoine_equation, 85, 100, target_pressure=630)
print(f"\nAnswer: Water boils at {temp3:.2f}°C in Denver")

print("\n" + "=" * 70)
print("PRACTICAL IMPLICATIONS:")
print("=" * 70)
print(f"• At sea level (760 mmHg): water boils at {temp2:.1f}°C")
print(f"• At high altitude (630 mmHg): water boils at {temp3:.1f}°C")
print(f"• At reduced pressure (500 mmHg): water boils at {temp1:.1f}°C")
print("\nThis is why cooking takes longer at high altitudes!")