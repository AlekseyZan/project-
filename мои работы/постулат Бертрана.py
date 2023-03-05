def is_plain_number(p):
    if p%2==0 and p!=2 or p==1:
        return False

    d=3
    while d*d<=p:
        if p%d==0:
            return False
        d+=2
    return True

n = int(input())
count = 0
for p in range(n+1,2*n):
    if is_plain_number(p):
        count+=1
print(count)