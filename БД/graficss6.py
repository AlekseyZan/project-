import turtle
turtle.bgcolor("black")
t = turtle.Turtle()
t.speed(90)
t.pensize(3)
t.pencolor("aqua")
for x in range(40):
    t.fd(5+x)
    t.right(90)
    for i in range(5):
        t.fd(40)
        t.lt(90)
        t.fd(40)
        t.lt(90)
t.goto(0,0)
t.goto(-40,-200)
t.pencolor("gold")
for x in range(40):
    t.fd(5+x)
    t.right(90)
    for i in range(5):
        t.fd(40)
        t.lt(90)
        t.fd(40)
        t.lt(90)
t.goto(0,0)
t.goto(200,-40)
t.pencolor("gold")
for x in range(40):
    t.fd(5+x)
    t.right(90)
    for i in range(5):
        t.fd(40)
        t.lt(90)
        t.fd(40)
        t.lt(90)
t.goto(0,0)
t.goto(200,40)
t.pencolor("gold")
for x in range(40):
    t.fd(5+x)
    t.right(90)
    for i in range(5):
        t.fd(40)
        t.lt(90)
        t.fd(40)
        t.lt(90)        
turtle.done()
