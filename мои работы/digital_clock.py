from tkinter import*
from tkinter.ttk import*
from time import strftime
main = Tk()
main.title('The Digital clock')
def clock():
   tick = strftime('%H:%M:%S ')
   clock_label.config(text = tick)
   clock_label.after(400,clock)
clock_label = Label(main,font = ('sans',80),background = 'orange',foreground = 'white')
clock_label.pack(anchor = 'center')
clock()
mainloop()

                    
    
        
