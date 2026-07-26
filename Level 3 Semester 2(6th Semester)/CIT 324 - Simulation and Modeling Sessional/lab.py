import numpy as np
import matplotlib.pyplot as plt

def a_random_walk(total_step:int):
    expt = []
    x = y = 0 
    for _ in range(total_step):
        r_num = np.random.randint(0,11)
        if r_num in [0,1,2,3,4]:
            y +=1 
        elif r_num in [5,6,7]:
            x -=1 
        elif r_num in [8,9]:
            x +=1 
        expt.append([x,y])
    return np.matrix(expt)
ans = a_random_walk(100)


plt.title("--A 2D Random Walk--")
plt.axhline(y=0,linestyle="--",color="y")
plt.axvline(x=0,linestyle="--",color="y")
plt.plot(ans[:,0],ans[:,1])
plt.scatter(ans[0:1,0:1].item(),y=ans[0:1,1:2].item(),s=100,label="Start",c="red")
plt.scatter(ans[-1,0:1].item(),y=ans[-1,1:2].item(),s=100,label="end",c="y")
plt.legend()
plt.show()