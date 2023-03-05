n = input()
s = []
Flag = True
for i in n:
    if i in "([{":
        s.append(i)
    elif i in ")]}":
        if not s:
            Flag = False
            break
        x = s.pop()
        if x=="(" and i == ")":
            continue
        if x == "{" and i == "}":
            continue
        if x == "[" and i == "]":
            continue
        Flag = False
        break
if Flag and len(s)==0:
    print("YES")
else:
    print("NO")


