import collections
def create():
    last = collections.deque(pets,maxlen=1)[0]
def get_pet(ID):
    
rod = input("Какой у вас питомец? ")
age = int(input("Какой возраст вашего питомца? "))
name = input("Как зовут вашего питомца? ")
user = input("Как ваше имя? ")
if age==1 or age==21 or age==31 or age==41 or age==51:
    age = str(age)+" "+"год"
if 2<=age<=4 or 22==age<=24 or 32==age<=34 or 42==age<=44 or 52==age<=54:
    age = str(age)+' '+"года"
else:
    age = str(age)+' ' +'лет'
id1 ={1:name}
id2 = {2:rod,3:age,4:user}
id1.update(id2)
pets = {}
pets.update(id1)

print("Это",id2[2],"по кличке",id1[1],". Его возраст:",id2[3],"Владельца зовут",id2[4])
