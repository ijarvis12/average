#!/usr/bin/python3

##                                                    ##
## program that finds the average of numerical inputs ##
##                                                    ##
print("This program takes input(s) and finds the average")

# variable that holds the total of the inputs
total = 0
# variable that holds the number of inputs
i = 0

# user input number
x = input("Input a number (<Enter> to exit): ")

# if no input exit
if len(x) == 0:
    exit()

# while user inputs values, attempt to add them to the total
while len(x) > 0:
    try:
        total += float(x)
        i += 1
    except:
        print("Not exceptable input")
    x = input("Input a number (<Enter> to exit): ")

# ouput average
print("Average:",total/i)
garbage = input("Press <Enter> to end program")
