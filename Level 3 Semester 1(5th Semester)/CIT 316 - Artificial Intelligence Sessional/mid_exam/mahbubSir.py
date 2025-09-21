from sympy import symbols, Implies, And, Or, Not, Equivalent
from sympy.logic.boolalg import truth_table

p, q, r = symbols('p q r')
expr = Implies(And(Implies(p, q), Implies(q, r)), Implies(p, r))

print("Truth Table:")
print("p  q  r  Result")
print("-----------------")
for row in truth_table(expr, [p, q, r]):
    if isinstance(row, tuple) and len(row) == 2:
        values, result = row
    elif isinstance(row, (list, tuple)) and len(row) == 4:
        values = row[:3]
        result = row[3]
    else:
        raise ValueError(f"Unexpected row format: {row}")
    print(f"{values[0]}  {values[1]}  {values[2]}  {result}")
results_list = []
for row in truth_table(expr, [p, q, r]):
    if isinstance(row, tuple) and len(row) == 2:
        results_list.append(row[1])
    elif isinstance(row, (list, tuple)) and len(row) == 4:
        results_list.append(row[3])
    else:
        raise ValueError(f"Unexpected row format: {row}")
all_results = results_list
if all(all_results):
    print("\nThe expression is a TAUTOLOGY (always true).")
elif not any(all_results):
    print("\nThe expression is a CONTRADICTION (always false).")
else:
    print("\nThe expression is CONTINGENT (true for some assignments, false for others).")
