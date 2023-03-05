from turtle import *
import turtle 
turtle.bgcolor('black')
screen = turtle.Screen()
screen.tracer(0)
painting = turtle.Turtle()
painting.speed(50)
painting.pensize(2)
color = ['red','blue','gold','aqua','violet','yellow','lightblue','fuchsia','lime','orange','white']

for x in range(500):
    #screen.clear()
    painting.pencolor(color[x%11])
    painting.fd(5+x)
    painting.lt(160)
    screen.update()
    painting.lt(150)
    
turtle.done()