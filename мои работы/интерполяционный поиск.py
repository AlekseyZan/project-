import random
n = 40
arr = list()
for i in range(n):
    number = random.randint(1,40)
    arr.append(number)

to_search = random.randint(1,40)
answer = -1
#///////////////////////////////////
arr.sort()
lt = 0
right = len(arr)-1
while(lt<=right and 
        to_search >=arr[lt] and
         to_search <= arr[right]):

    part1 = float(right - lt) / (arr[right] - arr[lt])
    part2 = to_search - arr[lt]
#Поскольку индекс должен быть целым числом
#Мы преобразуем part1*part2 в целое число
    index = lt + int(part1*part2)
    if arr[index] == to_search:
        answer = index
        break
    if arr[index] <to_search:
        lt = index + 1
    else:
        right = index - 1


#///////////////////////////////////
print(arr)
print(to_search)
print("-----------")

if answer != -1:
    print(f"Элемент в списке был, его индекс: {answer}")
else:
    print("Элемента в списке не было")