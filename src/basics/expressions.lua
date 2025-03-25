print(4 and 5)         --> 5
print(nil and 13)      --> nil
print(false and 13)    --> false
print(4 or 5)          --> 4
print(false or 5)      --> 5

print("Hello " .. "World")  --> Hello World
print(0 .. 1)               --> 01


days = {"Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday"}
print(days[4])  --> Wednesday

a = {x="x", y="y"}
print(a.x)
a.y = nil -- remove y entry
print(a)