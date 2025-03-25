co = coroutine.create(function ()
  print("hi")
end)

print(co)   --> thread: 0x8071d98
print(coroutine.status(co))   --> suspended
coroutine.resume(co)   --> hi
print(coroutine.status(co))   --> dead


co = coroutine.create(function ()
  for i=1,3 do
    print("co", i)
    coroutine.yield()
  end
end)

coroutine.resume(co)    --> co   1
print(coroutine.status(co))   --> suspended
coroutine.resume(co)    --> co   2
coroutine.resume(co)    --> co   3
coroutine.resume(co)    -- prints nothing


co = coroutine.create(function (a,b)
  coroutine.yield(a + b, a - b)
end)
print(coroutine.resume(co, 20, 10))  --> true  30  10


co = coroutine.create (function ()
  print("co", coroutine.yield())
end)
coroutine.resume(co)
coroutine.resume(co, 4, 5)     --> co  4  5
