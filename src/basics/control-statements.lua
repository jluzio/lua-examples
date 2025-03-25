a, b = 1, 2

if a < 0 then a = 0 end

if a < b then print(a) else print(b) end

line = 1
if line > 10 then
  print("showpage()")
  line = 0
end

if op == "+" then
  r = a + b
elseif op == "-" then
  r = a - b
elseif op == "*" then
  r = a * b
elseif op == "/" then
  r = a / b
else
  print("invalid operation")
end

local i = 1
a = { "a", "b" }
while a[i] do
  print(a[i])
  i = i + 1
end

-- print the first non-empty line
local lines = { '', '', 'not empty' }
local ln = 0
function io_read()
  --return io.read()
  ln = ln + 1
  return lines[ln]
end

repeat
  line = io_read()
until line ~= ""
print(line)


for i = 10, 1, -1 do print(i) end
for i = 1, 10 do print(i) end

-- print all values of array `a'
a = {3, 2, 1}
for i, v in ipairs(a) do print(v) end


local i = 1
a = {1, 3, 5, 7}
while a[i] do
  print(a[i])
  if a[i] == 5 then break end
  i = i + 1
end