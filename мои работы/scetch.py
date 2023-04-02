import turtle
t = turtle.Turtle()
turtle.bgcolor("black")
t.speed(180)
turtle.tracer(0)
screen = turtle.Screen()
color = ["aqua","red","blue","yellow","pink","gold","white","lightblue"]
while True:
    for i in range(50):
        t.pencolor(color[i%7])
        t.clear()
        t.fd(100)
        t.rt(77)
        t.lt(150)
        screen.update()
        t.fd(0.05)
turtle.done()