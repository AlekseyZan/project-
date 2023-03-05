n = int(input())
s = [n for n in input().split()]
for i in range (len(s)):
    s[-1],s[i] = s[i],s[-1]
print(*s)

