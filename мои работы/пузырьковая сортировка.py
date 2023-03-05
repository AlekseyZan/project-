s = list(map(int,input().split()))
m = len(s)
for i in range(m - 1):
    for j in range(m - i - 1):
        if s[j]>s[j+1]:
            s[j],s[j+1] = s[j+1],s[j]
print(s)