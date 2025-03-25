-- math
print(math.abs(-10))

-- table
print(table.unpack({1, 3, 2}))

list = {1, 3, 2}
table.sort(list, function (a, b)
  return b >= a
end)
print(table.unpack(list))

print(#list)

table.insert(list, 40)
print(table.unpack(list))

-- string
print(string.lower "aAaAaAa")

s = "hello world"
i, j = string.find(s, "hello")
print(i, j)                      --> 1    5
print(string.sub(s, i, j))       --> hello
print(string.find(s, "world"))   --> 7    11
i, j = string.find(s, "l")
print(i, j)                      --> 3    3
print(string.find(s, "lll"))     --> nil

s = string.gsub("Lua is cute", "cute", "great")
print(s)         --> Lua is great
s = string.gsub("all lii", "l", "x")
print(s)         --> axx xii
s = string.gsub("Lua is great", "perl", "tcl")
print(s)         --> Lua is great

-- patterns
s = "Deadline is 30/05/1999, firm"
date = "%d%d/%d%d/%d%d%d%d"
print(string.sub(s, string.find(s, date)))   --> 30/05/1999

-- captures
pair = "name = Anna"
_, _, key, value = string.find(pair, "(%a+)%s*=%s*(%a+)")
print(key, value)  --> name  Anna

-- io
--[[
    t = io.read("*all")         -- read the whole file
    t = string.gsub(t, ...)     -- do the job
    io.write(t)                 -- write the file
]]--
--[[
    t = io.read("*number")         -- read a number
]]--


-- os
print(os.time{year=2000, month=1, day=1, hour=0})
date_val = os.date("*t", 906000490)
print(date_val.year)
print(os.date("%x", 906000490)) --> 09/16/1998
print(os.getenv("TMP"))    --> /home/lua

-- debug
print(debug.traceback())

