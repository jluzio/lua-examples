local count = 0
function Entry (b) count = count + 1 end
dofile("src/basics/data.lua")
print("number of entries: " .. count)

local authors = {}      -- a set to collect authors
function Entry (b) authors[b[1]] = true end
dofile("src/basics/data.lua")
for name in pairs(authors) do print(name) end
