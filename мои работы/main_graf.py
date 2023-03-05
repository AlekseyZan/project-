import turtle

turtle.bgcolor('black')


turtle.speed(0)
screen = turtle.Screen()
screen.tracer(0)
def grafic():
    turtle.pencolor("red")
    for x in range(15):
       turtle.circle(10+x)
       turtle.lt(90)
       
def circle():
    turtle.pencolor("aqua")
    turtle.fillcolor("yellow")
    turtle.begin_fill()
    for i in range(5):
        turtle.pencolor('green')
        turtle.circle(40)
        turtle.right(90)
    turtle.end_fill()
def write():   
    turtle.pencolor("red")
    turtle.write('love',font=('Helvetica',40,'italic')
    )


def curve():
    for i in range(200):
        turtle.speed(400)
        turtle.right(1)
        turtle.fd(1)

def heart():
    
    turtle.penup()
    turtle.goto(0,-75)
    turtle.pendown()
    turtle.pencolor("black")
    turtle.pensize(3)
    turtle.fillcolor("red")
    turtle.begin_fill()
    turtle.lt(140)
    turtle.fd(113)
    curve()
    turtle.lt(120)
    curve()
    turtle.fd(112)
    turtle.end_fill()
           
       
while True:
    turtle.speed(400)
    turtle.hideturtle()
    for i in range(10):
        #turtle.clear()
        turtle.right(135+i)
        turtle.fd(1-i)
        
        grafic()
        #circle()
        #heart()
        
       
        
        screen.update()
           
turtle.done()
