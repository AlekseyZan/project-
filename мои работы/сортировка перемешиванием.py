import random
n = 5 # количество элементов списка
arr = list()
for i in range(n):
    number = random.randint(1,40)
    arr.append(number)
print("Not sorted:")
print(arr)
print("---------")
lt_index = 0
right_index = n-1
while lt_index<=right_index:
    for i in range(lt_index,right_index,+1):
        lt = arr[i]
        right = arr[i+1]
        if lt > right: # сортировка по возрастанию(по убыванию lt<right)
            arr[i] = right
            arr[i+1] = lt
    right_index -=1
    for i in range(right_index,lt_index,-1):
        right = arr[i]
        lt = arr[i-1]
        if lt > right: # сортировка по возрастанию(по убыванию lt<right)
            arr[i] = lt
            arr[i-1] = right
    lt_index +=1

print("Sorted:")
print(arr)


        


