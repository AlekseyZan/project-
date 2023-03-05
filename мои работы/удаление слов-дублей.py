s = list(input().split())
x = []
result = []
for i in s:
    if i.lower() not in x:
        x.append(i.lower())
        result.append(i)
print(*result)