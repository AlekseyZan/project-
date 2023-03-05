def hash(num):
    snum = str(num)
    if len(snum) <= 4:
        if len(snum) < 4:
            snum = snum.rjust(4,"0")
        return snum

    result = ""
    for i in range(0,len(snum)-1,2):
       lt = snum[i]
       right = snum[i+1]
       lt = int(lt)
       right = int(right)
       result += str(lt+right)
    return hash(result)
