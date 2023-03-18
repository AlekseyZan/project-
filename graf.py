import turtle
turtle.bgcolor('black')
t = turtle.Turtle()
screen = turtle.Screen()
turtle.tracer(0)
t.pencolor('aqua')
def drw():
    t.fd(10)
    t.lt(77)
while True:
    t.clear()
    drw()
    screen.update()
    t.fd(0.05)
turtle.dome()    