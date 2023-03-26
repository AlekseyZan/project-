import turtle
turtle.tracer(0)
t = turtle.Turtle()
color = ["red","blue","orange","fuchsia","gold","yellow","green"]
screen = turtle.Screen()
turtle.bgcolor("black")
t.pencolor("gold")
def circle():
    for i in range(150):
        #t.clear()
        t.pencolor(color[i%7])
        t.circle(10+i)
        t.fd(3)
        t.lt(15)
        screen.update()
        t.fd(10)

while True:
    circle()
turtle.done()