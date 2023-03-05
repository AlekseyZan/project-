n = int(input())
s = []
for i in range(n):
    s.append(list(map(int,input().split())))
for i in range(len(s)):
    for j in range(len(s)):
        print(s[-1 -j][-1 -i],end=" ")
    print()