s = []
for i in range(5):
    s.append(list(map(int,input().split())))
for i in range(5):
    for j in range(5):
        if s[i][j]==1:
            row = i
            column = j
print(abs(2-row)+abs(2-column))
