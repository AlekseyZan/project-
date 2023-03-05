# -*- coding: utf-8 -*-
"""
Created on Fri Jan 12 14:35:14 2018
@author: Administrator
"""
 
from turtle import *
import turtle as T
from random import *
 
def ground():
    T.hideturtle()
    T.speed(10)
    for i in range(400):
        T.pensize(randint(5,10))
        x=randint(-400,340)
        y=randint(-280,-1)
        r=-y/280
        g=-y/280
        b=-y/280
        T.pencolor(r,g,b)
        T.penup()
        T.goto(x,y)
        T.pendown()
        T.fd(randint(40,40))
 
def snow():
    T.hideturtle()
    T.speed(10)
    T.pensize(2)
    for i in range(40):
        r=random()
        g=random()
        b=random()
        T.pencolor(r,g,b)
        T.penup()
        T.setx(randint(-340,340))
        T.sety(randint(1,90))
        T.pendown()
        dens=randint(8,12)
        snowsize=randint(10,14)
        for j in range(dens):
            T.fd(snowsize)
            T.backward(snowsize)
            T.right(360/dens)
 
def main():
    T.setup(800, 600, 0, 0)
    T.tracer(False)
    T.bgcolor("black")
    snow()
    ground()
    T.tracer(True)
    T.mainloop()
main()