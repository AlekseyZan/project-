n = int(input())
s = []
for i in range(n):
    s.append(list(map(int,input().split())))
count = 0
for i in range(n):
    for j in range(n):
        if s[i][j] != s[j][i]:
            count+=1
if count > 0:
    print("No")
else:
    print("Yes")
            