import turtle
turtle.bgcolor("black")
t = turtle.Turtle()
s = turtle.Screen()
t.speed(80)
t._tracer(0)
colors = ['red', 'yellow', 'green', 'purple', 'blue', 'orange',"pink",'aqua','fuchsia']

def circle():
    for i in range(75):
        t.pensize(1+(i%5))
        t.circle(10+i)
        t.pencolor(colors[i%9])
        t.fd(10)
        t.rt(15)

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

def graf():
    for i in range(35):
        
        t.pensize(3)
        t.pencolor(colors[i%8])
        dom()
        t.fd(2)
        t.lt(10)
        

def circles():
    turtle.fillcolor("violet")
    turtle.begin_fill()
    for x in range(5):
        for i in range(2):
            turtle.fd(10)
            turtle.lt(80)
            turtle.fillcolor('yellow')
            turtle.begin_fill()
            turtle.circle(40,90)
            turtle.lt(90)
            turtle.circle(40,90)
            turtle.end_fill()
            turtle.fillcolor("orange")
            turtle.begin_fill()
            turtle.circle(40,90)
            turtle.lt(90)
            turtle.circle(40,90)
            turtle.end_fill()
    turtle.end_fill() 

        
while True:
    t.clear()
    graf()
    circles()
    
    s.update()
    t.fd(0.02)



turtle.done()