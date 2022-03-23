#!/usr/bin/env lua

--
-- program that finds the average of numerical inputs
--
print("This program takes input(s) and finds the average")

-- variable that holds the total of the inputs
total = 0
-- variable that holds the number of inputs
i = 0

-- user input number
print("Input a number (<Enter>) to exit: ")
x = io.read()

-- If no input exit
if #x == 0 then
  os.exit()
end

-- function to try to add to the total
function add()
  total = total + x
  i = i + 1
  return true
end

-- while user inputs values, attempt to add them to the total
while #x > 0 do
  local err = pcall(add)
  if not(err) then
    print("Not exceptable input")
  end
  print("Input a number (<Enter>) to exit): ")
  x = io.read()
end

--output the average
print("Average: ",total/i)
print("Press <Enter> to end program")
_ = io.read()
