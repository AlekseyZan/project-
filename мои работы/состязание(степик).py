n,m = map(int,input().split())
a = []
c = []
for i in range(n):
    a.append(list(map(int, input().split())))
for i in range(n):
    s = 0
    for j in range(m):
        s += a[i][j]
    c.append(s)
print(max(c))   
ind = c.index(max(c))
print(ind)