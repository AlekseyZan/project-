import turtle
turtle.bgcolor('black')
geekyTurtle = turtle.Turtle()

geekyTurtle.speed(400)
for x in range(15):
    for i in range(5):
        geekyTurtle.fillcolor("aqua")
        geekyTurtle.pencolor("aqua") 
        geekyTurtle.begin_fill()
        geekyTurtle.fd(140)
        geekyTurtle.right(90)
        geekyTurtle.fd(40)
        geekyTurtle.right(90)
        geekyTurtle.right(144)
        geekyTurtle.end_fill()
geekyTurtle.penup()
geekyTurtle.goto(-40,40) 
geekyTurtle.pendown()
for x in range(15):
    for i in range(5):
        geekyTurtle.fillcolor("red")
        geekyTurtle.begin_fill()
        geekyTurtle.pencolor("red") 
        geekyTurtle.fd(140)
        geekyTurtle.right(90)
        geekyTurtle.fd(40)
        geekyTurtle.right(90)
        geekyTurtle.right(144)
        geekyTurtle.end_fill()
        for j in range(10):
            geekyTurtle.fd(10)
geekyTurtle.penup()
geekyTurtle.goto(-40,40) 
geekyTurtle.pendown()
for x in range(15):
    for i in range(5):
        geekyTurtle.pencolor("aqua") 
        geekyTurtle.fd(140)
        geekyTurtle.right(90)
        geekyTurtle.fd(40)
        geekyTurtle.right(90)
        geekyTurtle.right(144)
geekyTurtle.penup()
geekyTurtle.goto(-40,40) 
geekyTurtle.pendown()
for x in range(15):
    for i in range(5):
        geekyTurtle.pencolor("red") 
        geekyTurtle.fd(140)
        geekyTurtle.right(90)
        geekyTurtle.fd(40)
        geekyTurtle.right(90)
        geekyTurtle.right(144)
        for j in range(10):
            geekyTurtle.fd(10)

turtle.done()