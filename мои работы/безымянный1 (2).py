pets = {
    1:
        {
            "Мухтар": {
                "Вид питомца": "Собака",
                "Возраст питомца": 1,
                "Имя владельца": "Павел"
            },
        },
    2:
        {
            "Каа": {
                "Вид питомца": "желторотый питон",
                "Возраст питомца": 19,
                "Имя владельца": "Саша"
            },
        },
}
def create():
    name=input('Введите имя питомца ')
    rod=input('Введите вид питомца ')
    age=int(input('Введите возраст питомца '))
    print ()
    user=input('Введите ваше имя ')
    prop=(['Вид питомца',rod],['Возраст питомца',age],['Имя владельца',user])
    prop_dict=dict(prop)
    pets[len(pets)+1]={name:prop_dict}
    print ('Поздравляем, ваш питомец в базе под ID',len(pets))

def read():
    
    ID=int(input('Введите ID питомца'))
    if ID in pets.keys():
        for key in pets[ID].keys():
            x=(key)
        print ('Это',pets[ID][x]['Вид питомца'],
           'по кличке',x,'.',
           'Возраст питомца:',pets[ID][x]['Возраст питомца'],get_suffix(ID),
           'Имя владельца:',pets[ID][x]['Имя владельца'],'.')
    else:
        print ('НЕТ ТАКОГО ID')

def update():
    ID=int(input('Введите ID питомца'))
    if ID in pets.keys():
        name=input('Введите имя питомца')
        rod=input('Введите вид питомца')
        age=int(input('Введите возраст питомца'))
        user=input('Введите ваше имя')
        prop=(['Вид питомца',rod],['Возраст питомца',age],['Имя владельца',user])
        prop_dict=dict(prop)
        pets[ID].update({name:prop_dict})
    else:
        print ('НЕТ ТАКОГО ID') 
        

def delete():
    ID=int(input('Введите ID питомца'))
    if ID in pets.keys():
        del pets[ID]
    else:
        print ('НЕТ ТАКОГО ID')

def get_suffix(ID):
    for key in pets[ID].keys():
            x=(key)
    if pets[ID][x]['Возраст питомца']%10 == 1 and pets[ID][x]['Возраст питомца'] != 11: #список условий для год, годы, лет
        return 'год'
    elif 1<pets[ID][x]['Возраст питомца']%10<5 and pets[ID][x]['Возраст питомца']!=12 and pets[ID][x]['Возраст питомца']!=13 and pets[ID][x]['Возраст питомца']!=14:
        return 'года'
    else:
        return 'лет'

print('Добро пожаловать в базу!!!')
print('введите любую команду из: add, read, update, delete, stop')
com=()
while com != 'stop':
    com=input()
    if com== 'add':
        create()
    elif com== 'read':
        read()
    elif com== 'update':
        update()
    elif com== 'delete':
        delete()
    elif com != 'add'and com != 'stop' and com != 'read' and com != 'update' and com != 'delete':
        print('НЕТ ТАКОЙ КОМАНДЫ')
    print('введите любую команду из: add, read, update, delete, stop')
print ('До новых встреч!')