import turtle 
turtle.bgcolor("black")
turtle.speed(40)

def circle():   
    turtle.circle(40,90)
    turtle.lt(90)
    turtle.end_fill()
    turtle.circle(40,-90)
    turtle.circle(40,-90)
    turtle.lt(90)
    turtle.circle(40,-90)
    turtle.circle(40,90)
for i in range(40):
    turtle.pencolor("aqua")
    turtle.fd(5+i)
    turtle.pencolor("green")
    circle()
    turtle.lt(90)
    turtle.pencolor("red")
    turtle.fd(5+i)
    turtle.lt(90)
    circle()
    
    
     
turtle.done()
