colours = ['red', 'blue', 'green', 'white']

for x in colours:
    print(x)

#while loop

angle = 0
while angle<90:
    print("testing angle: ", angle)
    angle += 30

protocols = ['ok', 'ok', 'bad', 'ok']

#enumerate means when index and value want to understand
for index, val in enumerate(protocols):
    if val == 'bad':
        print(index)
        if(val == 'bad'):
            print("shei")

# all comment -> control+backslash(/)

#range function   
for i in range(1, 6):
    print(i)