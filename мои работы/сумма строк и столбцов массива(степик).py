n,m = map(int, input().split())
a = []
for i in range(n):
    a.append([*(map(int,input().split()))])
for i in range(n):
    sumst = 0
    for z in range(m):
        sumst+=a[i][z]
    print(sumst,end= ' ')
print()
for i in range(m):
    sumstk = 0
    for z in range(n):
        sumstk+=a[z][i]
    print(sumstk,end= ' ')