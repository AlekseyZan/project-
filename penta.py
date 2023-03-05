import turtle
turtle.bgcolor("black")
colors = ['red', 'green', 'purple', 'blue', 'orange',"pink",'aqua']
t = turtle.Turtle()

t.color("red")
t.pensize(1)
t.penup()
def penta():
    for i in range(5):
        t.pencolor(colors[i%7])
        t.lt(144)
        t.fd(40)
        t.pencolor("gold")
    t.write("ОЛЮШКА,",font=("Helvetica",40,'italic'))
    t.right(90)
    t.fd(40)
    t.write("Я ТЕБЯ ЛЮБЛЮ",font=("Helvetica",40,"italic"),move=True)
      
#for i in range(2):

t.begin_fill()

penta()

#t.right(90)
#t.fd(40)
t.end_fill()
    


turtle.done()