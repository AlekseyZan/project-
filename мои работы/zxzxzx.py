import turtle
turtle.bgcolor("black")

t = turtle.Turtle()
t.pencolor("aqua")
t.speed(180)
def dom():
    t.fd(100)
    t.rt(90)
    t.fd(100)
    t.rt(45)
    t.fd(100)
    t.rt(90)
    t.fd(100)
    t.rt(45)
    t.fd(100)
    t.rt(90)
    t.fd(50)
for i in range(35):
    dom()
    t.fd(2)
    t.lt(10)
t.penup()
t.lt(90)
t.fd(100)
t.pendown()
for i in range(35):
    t.pencolor("gold")
    dom()
    t.fd(2)
    t.lt(10)
t.penup()    
t.lt(90)
t.fd(100)
t.pendown()
for i in range(35):
    t.pencolor("blue")
    dom()
    t.fd(2)
    t.lt(10)
t.penup()
t.lt(90)
t.fd(100)
t.pendown()
for i in range(35):
    t.pencolor("fuchsia")
    dom()
    t.fd(2)
    t.lt(10)
turtle.done()