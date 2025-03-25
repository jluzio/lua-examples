function list_iter(t)
  local i = 0
  local n = #t
  return function()
    i = i + 1
    if i <= n then return t[i] end
  end
end

t = { 10, 20, 30 }
iter = list_iter(t)      -- creates the iterator
while true do
  local element = iter() -- calls the iterator
  if element == nil then break end
  print(element)
end

-- stateless iters
function _iter (a, i)
  i = i + 1
  local v = a[i]
  if v then
    return i, v
  end
end

function _ipairs (a)
  return _iter, a, 0
end

a = {"one", "two", "three"}
for i, v in _ipairs(a) do
  print(i, v)
end
