def factorial(numbers):
    if numbers==0:
        return 1 
    return factorial(numbers-1)*numbers
n = int(input())
digit = []
x = factorial(n)
for i in range(factorial(n),0,-1):
    digit.append(factorial(i))  
print(digit)
