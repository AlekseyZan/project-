import turtle
screen = turtle.Screen()
turtle.tracer(0)
turtle.speed(90)
def sunshine():
    turtle.color('red', 'yellow')
    turtle.begin_fill()
    while True:
        turtle.fd(200)
        turtle.lt(170)
        if abs(turtle.pos()) < 1:
            break
    turtle.end_fill()

def write():
        
        turtle.lt(1)
        turtle.write('LOVE',font=('Helvetica',40,'italic'))
        



    

while True:
    
    turtle.clear()
    
    turtle.hideturtle()
    turtle.lt(1)
    sunshine() 
    write()  
    screen.update()

turtle.done()