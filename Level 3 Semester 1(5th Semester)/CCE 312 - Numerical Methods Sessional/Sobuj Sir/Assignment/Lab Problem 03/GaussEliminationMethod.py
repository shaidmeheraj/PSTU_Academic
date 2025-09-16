import numpy as np

def gauss_elimination(a, b):
    n = len(b) #3
    aug = np.hstack([a.astype(float), b.reshape(-1,1).astype(float)])
    #astype mean type conversion, reshape(-1, 1) mean 1X3 to 3X1 matrix

    for i in range(n):
        max_row = np.argmax(abs(aug[i:, i])) + i
        aug[[i, max_row]] = aug[[max_row, i]]

        for j in range(i + 1, n):
            ratio = aug[j][i] / aug[i][i]
            aug[j, i:] = aug[j, i:] - ratio * aug[i, i:]

    # Back Substitution
    x = np.zeros(n)
    for i in range(n - 1, -1, -1):
        x[i] = (aug[i, -1] - np.dot(aug[i, i+1:n], x[i+1:n])) / aug[i, i]

    return x


#2x + 3y -  z =  5  
#4x + 4y - 3z =  3  
#-2x + 3y -  z = -1

A = np.array([[2, 3, -1],
              [4, 4, -3],
              [-2, 3, -1]])
B = np.array([5, 3, -1])

solution = gauss_elimination(A, B)
print("Solution: ")
print("x = ", solution[0])
print("y =", solution[1])
print("z =", solution[2])