n = int(input())
s = []
summ = 0
for i in range(n):
    s.append(list(map(int,input().split())))
for i in range(n):
    for j in range(n):
        if s[i]==s[j]:
            summ+=s[i][j]
print(summ)
 