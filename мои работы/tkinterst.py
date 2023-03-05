
import turtle,time
turtle.tracer(0)
s = turtle.Screen()
t = turtle.Turtle()
t.pencolor('yellow')
t.hideturtle()
turtle.bgcolor('black')
t.speed(1)
def cube():
    for i in range(5):
        #t.fillcolor('gold')
        #t.begin_fill()
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        t.fd(100)
        t.lt(145)
        
        s.update()
        t.fd(5)
        t.lt(1)

def pent():
    for m in range(5):
        cube()
        t.fd(5)
       

def pent2():
    for c in range(5):
        t.pencolor('pink')
        t.pensize(2)
        t.fd(100)
        t.rt(115)
        t.fd(100)
      
for j in range(250):
    turtle.tracer(0)
    turtle.clear()
    pent()
    #pent2()
    t.pencolor('red')
    t.fd(100)
    t.left(270)
    #time.sleep(0.5)
    pent()
    #pent2()
    for z in range(10):
        t.pencolor('blue')
        t.circle(20)
        t.fd(z+1)
    t.fd(50)
    t.rt(270)
    
    s.update()
s.update()
turtle.done()