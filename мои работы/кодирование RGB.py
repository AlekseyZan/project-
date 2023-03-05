r = int(input())
g = int(input())
b = int(input())

r = hex(r)
g = hex(g)
b = hex(b)

#r = r[2:4].zfill(2).upper()

print(("#" + r[2:4].zfill(2).upper() + g[2:4].zfill(2).upper() + b[2:4].zfill(2).upper()),sep="")