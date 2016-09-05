#!/usr/bin/python3

print("This program takes input(s) and finds the average")

total = 0
i = 0

x = input("Input a number (<Enter> to exit): ")

if len(x) == 0:
    exit()

while len(x) > 0:
    try:
        total += float(x)
        i += 1
    except:
        print("Not exceptable input")
    x = input("Input a number (<Enter> to exit): ")

print("Average:",total/i)
garbage = input("Press <Enter> to end program")
