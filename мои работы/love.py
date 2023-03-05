import turtle
turtle.bgcolor("black")
t = turtle.Turtle()
t.color("white")
t.pensize(5)

def arrow():
    t.lt(135)
    t.fd(20)
    t.back(10)
    t.right(90)
    t.fd(-40)
    t.back(40)
    t.fillcolor("orange")
    t.begin_fill()
    
    t.lt(25)
    t.fd(40)
    t.back(40)
    t.right(40)
    t.fd(40)
    t.lt(120)
    t.fd(40)
    t.end_fill()
    t.back(28)
    t.right(95)
    t.back(-340)
    t.right(15)

def arrow2():
    t.penup()
    t.goto(0,5)
    t.pendown()
    t.fillcolor("orange")
    t.begin_fill()
    t.right(22)
    t.back(140)
    for i in range(25):
        t.circle(5+i)
        t.fd(1)

    t.end_fill()

def curve():
    for i in range(200):
        t.speed(400)
        t.right(1)
        t.fd(1)

def heart():
    arrow()
    t.penup()
    t.goto(0,-75)
    t.pendown()
    t.fillcolor("red")
    t.begin_fill()
    t.lt(140)
    t.fd(113)
    curve()
    t.lt(120)
    curve()
    t.fd(112)
    t.end_fill()
    arrow2()

def text():
    t.pencolor("yellow")
    t.penup()
    t.goto(-40,40)
    t.pendown()
    t.write("ОЛЮШКА",font=("Helvetica",25,"bold"))
    t.penup()
    t.goto(-40,-140)
    t.pendown()
    t.pencolor("lime")
    t.write("Я ОЧЕНЬ СИЛЬНО",font=("Helvetica",25,"bold"))
    t.penup()
    t.goto(-40,-200)
    t.pendown()
    t.pencolor("fuchsia")
    t.write("ТЕБЯ ЛЮБЛЮ",font=("Helvetica",25,"bold"))
    

heart()    
text()

turtle.done()