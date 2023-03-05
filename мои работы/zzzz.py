import turtle
turtle.tracer(2)
turtle.bgcolor('black')
t = turtle.Turtle()
s = turtle.Screen()
t.pencolor('red')
t.hideturtle()
t.pensize(2)
def penta():
    for x in range(10):
        for i in range(5):
            t.fd(100)
            t.pencolor("red")
            t.rt(145)
        t.pencolor("gold")    
        t.fd(10)
        t.pencolor("aqua")
        t.rt(270)
        s.update()
for i  in range(10):
    penta()
    t.fd(200)
    t.lt(1)  
    penta()
    s.update()
turtle.done()