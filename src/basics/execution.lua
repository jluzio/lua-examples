f = load("i = i + 1") -- string -> chunk (function)
i = 0
f(); print(i)   --> 1
f(); print(i)   --> 2

--dofile("src/basics/load_test.lua") -- same as f = loadfile() and f()
require("src/basics/load_test") -- same as dofile, but avoids dup work, has different path finding
print(load_test_func())
