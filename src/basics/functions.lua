print(8 * 9, 9 / 8)
a = math.sin(3) + math.cos(10)
print(os.date())

print "Hello World"
print("Hello World")

print [[a multi-line
  message]]
print([[a multi-line
  message]])

function f(values)
  print("f", values)
  for i, value in pairs(values) do
    print(i, value)
  end
end

f { x = 10, y = 20 }
f({ x = 10, y = 20 })


count = 0
function incCount(n)
  n = n or 1
  count = count + n
end

incCount()
print(count)

-- multiple results
s, e = string.find("hello Lua users", "Lua")
print(s, e) -->  7      9

function multipleReturn()
  return 1, 2, 3
end

print(multipleReturn())

a, b, c = multipleReturn()
print(a, b, c)

function unpack(t, i)
  i = i or 1
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1)
  end
end

print(unpack { 10, 20, 30 }) --> 10   20   30
a, b = unpack { 10, 20, 30 } -- a=10, b=20, 30 is discarded


function printStuff(...)
  printResult = ""
  local args = { ... }
  for i, v in ipairs(args) do
    printResult = printResult .. tostring(v) .. "\t"
  end
  printResult = printResult .. "\n"
  print(printResult)
end

print("printStuff")
printStuff(1, 2, 3)

-- "named" arguments
function rename(arg)
  return print(arg.old, arg.new)
end

rename { old = "temp.lua", new = "temp1.lua" }


a = { p = print }
a.p("Hello World") --> Hello World

foo = function(x) return 2 * x end


-- closures
names = { "Peter", "Paul", "Mary" }
grades = { Mary = 10, Paul = 7, Peter = 8 }
table.sort(names, function(n1, n2)
  return grades[n1] > grades[n2]     -- compare the grades
end)
for key, value in ipairs(names) do
  print(key, value)
end

function newCounter ()
  local i = 0
  return function ()   -- anonymous function
           i = i + 1
           return i
         end
end

c1 = newCounter()
print(c1())  --> 1
print(c1())  --> 2


-- non global functions
Lib = {}
Lib.foo = function (x,y) return x + y end
Lib.goo = function (x,y) return x - y end

Lib = {
  foo = function (x,y) return x + y end,
  goo = function (x,y) return x - y end
}

Lib = {}
function Lib.foo (x,y)
  return x + y
end
function Lib.goo (x,y)
  return x - y
end

print(Lib.foo(1,2))


-- local funcs
local f = function (...)
  print("f")
end
local function f (...)
  print("f")
end