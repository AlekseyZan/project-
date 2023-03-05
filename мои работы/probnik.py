import turtle

turtle.bgcolor("black")
t = turtle.Turtle()
t.speed(400)
t.pensize(3)
t.pencolor("brown")

def circle():
    for i in range(25):
        t.fd(10)
        t.lt(15)    
        for j in range(20):
            t.pencolor("blue")
            t.fd(15)
            t.penup()
            t.fd(15)
            t.pendown()
            t.pencolor("red")
            t.fd(15)
            t.right(40)
def sunshine():
    t.fillcolor("yellow")
    t.begin_fill()           
    for i in range(10):
        t.lt(90)
        t.fd(40)
        t.back(40)
        t.right(90)
        t.fd(40)
    t.end_fill()

def game():
    t.penup()
    t.goto(400,400)
    t.pendown()
    #t.penup()
    #t.goto(200,200)
    #t.pendown()
    sunshine()
    #t.penup()
    #t.goto(0,0)
    #t.pendown()
    #circle()

def uzor():
    t.penup()
    t.goto(-200,0)
    t.pendown()
    t.pencolor("aqua")
    for x in range(40):
        t.fd(5+x)
        t.right(90)
        for i in range(5):
            t.fd(40+i)
            t.lt(90)
            t.fd(40+i)
            t.lt(90)
    t.penup()
    t.goto(0,0)
    t.goto(-40,-200)
    t.pendown()
    t.pencolor("gold")
    for x in range(40):
        t.fd(5+x)
        t.right(90)
        for i in range(5):
            t.fd(40)
            t.lt(90)
            t.fd(40)
            t.lt(90)
    t.penup()
    t.goto(0,0)
    t.goto(200,-40)
    t.pendown()
    t.pencolor("violet")
    for x in range(40):
        t.fd(5+x)
        t.right(90)
        for i in range(5):
            t.fd(40)
            t.lt(90)
            t.fd(40)
            t.lt(90)
    t.penup()
    t.goto(0,0)
    t.goto(200,40)
    t.pendown()
    t.pencolor("purple")
    for x in range(40):
        t.fd(5+x)
        t.right(90)
        for i in range(5):
            t.fd(40)
            t.lt(90)
            t.fd(40)
            t.lt(90)   

game()                
uzor()



turtle.done()