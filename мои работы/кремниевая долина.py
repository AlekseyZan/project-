CRACKER = 'anton'


def cyber_securuty(data, index=0, pos=0):
    if index > data[index:].find(CRACKER[pos]) + index:
        return False
    else:
        index = data[index:].find(CRACKER[pos]) + index
    pos += 1
    if pos == len(CRACKER):
        return True
    return cyber_securuty(data, index, pos)

    n = int(input())
    for i in range(n):
        len = input()
        cyber_securuty(len)