import turtle
s = turtle.Screen()
turtle.tracer(0)
turtle.speed(40)
turtle.bgcolor("black")
s.screensize(400,400)
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

#def animation():
    #turtle.hideturtle()
    #turtle.clear()
    #turtle.lt(0.5)
    #turtle.fd(0.01)
    #circles()
    #s.update()

while True:
    
    turtle.clear()
    circles()
    s.update()
    turtle.fd(1)
    
    
    
    
turtle.done()