n, m = map(int, input().split())
a = []
b = []
count = 0
for i in range(n):
    a.append(list(map(int, input().split())))  
    b.append(max(a[i]))                             
count = b.count(max(b))                         
if count > 1:                                   
    sum = 0                                         
    while count != 0:                               
        s = 0                                        
        for i in a[b.index(max(b))]:                                         
            s += i
        if s > sum:                                     
            sum = s                                        
            indeks = b.index(max(b))                        
        count -= 1                                                                                        
        b[b.index(max(b))] = 0                          
                                                        
    print(indeks)                                      
else:                                           
    print(b.index(max(b)))