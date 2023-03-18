import turtle
turtle.bgcolor('black')
t = turtle.Turtle()
screen = turtle.Screen()
turtle.tracer(0)
t.hideturtle()



def drw():
    for i in range(10):
        t.pensize(1)
        t.pencolor("lightblue")
        t.circle(75)
        t.fd(75)
        t.lt(77)
        t.pensize(1.5)
        t.begin_fill()
        t.circle(100)
        t.fd(100)
        t.lt(88)
        t.pensize(2)
        t.pencolor("gold")
        t.circle(125)
        t.fd(125)
        t.lt(99)

        t.pensize(2)
        t.pencolor("aqua")
        t.fillcolor("lime")
        t.begin_fill()
        t.circle(10)
        t.fd(75)
        t.rt(266)
        t.end_fill()
        t.pensize(2.5)
        t.pencolor("red")
        t.fillcolor("yellow")
        t.begin_fill()
        t.circle(25)
        t.fd(100)
        t.rt(380)
        t.end_fill()
        t.pensize(3)
        t.pencolor("blue")
        t.circle(50)
        t.fd(125)
        t.rt(180)
    
    





while True:
    t.clear()
    drw()
    screen.update()
    t.fd(0.05)
    
turtle.dome()    