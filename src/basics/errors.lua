print "enter a number:"
n = assert(io.read("*number"), "invalid input")

local file, msg
repeat
  print "enter a file name:"
  local name = io.read()
  if not name then return end   -- no input
  file, msg = io.open(name, "r")
  if not file then print(msg) end
until file

file = assert(io.open("no-file", "r"))
--> stdin:1: no-file: No such file or directory

-- Notice how the error message, which is the second result from io.open, goes as the second argument to assert. 