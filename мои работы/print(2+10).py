import random
n = 5
arr = list()
for i in range(n):
    number = random.randint(0,40)
    arr.append(number)
for i in range(n):
    for j in range(n-1):
        lt = arr[j]
        right = arr[j+1]
        if lt>right:
            arr[j] = right
            arr[j+1] = lt

print("No sorted")
print(arr)

