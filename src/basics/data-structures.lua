--[[ 
Tables in Lua are not a data structure; they are the data structure. 
All structures that other languages offer---arrays, records, lists, queues, sets---are represented with tables in Lua.
More to the point, tables implement all these structures efficiently. 
]]--

-- array
-- creates an array with indices from -5 to 5
a = {}
for i=-5, 5 do
  a[i] = 0
end

-- matrix
mt = {}          -- create the matrix
for i=1,N do
  mt[i] = {}     -- create a new row
  for j=1,M do
    mt[i][j] = 0
  end
end

-- others (examples: linked list, sets, etc) 