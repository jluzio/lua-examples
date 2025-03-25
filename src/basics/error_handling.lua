local status, err = pcall(function () error({code=121}) end)
print(err.code)  -->  121

function foo(a)
  if not a then error('nil a') end
  print(a[i])    -- potential error: `a' may not be a table
end

status, err = pcall(function() foo() end)
print(status, err)
print(debug.traceback())