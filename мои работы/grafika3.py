import turtle
colors = ['red', 'yellow', 'green', 'purple', 'blue', 'orange',"pink",'aqua']
t= turtle.Pen()
t.speed(90)
for x in range(140):
    t.pencolor(colors[x%8])
    #t.width(x/40 + 1)
    t.circle(1+x)
    t.fd(2)
    t.lt(0.1)

    
turtle.done()
