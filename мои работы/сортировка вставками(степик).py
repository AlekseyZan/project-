n = int(input())
arr = list(map(int,input().split()))
for i in range(n):
    val = arr[i]
    j = i-1
    if j<0:
        continue
    while val < arr[j] and j>=0:
        arr[j+1] = arr[j]
        j -=1
    arr[j+1] = val
print(*arr)