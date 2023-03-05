# -*- coding: utf-8 -*-
"""
Created on Mon Dec  5 00:00:53 2022

@author: zanko
"""

sp = list(input().split())
r = input()
count = 1
for i in range(len(sp)):
    if r in sp[i]:
        count+=1
        print(count)
    if r not in sp[i] or len(sp)==0:
        print("ErrorValue")
        break
    
