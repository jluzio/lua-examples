a = "hello" .. "world"

t = {}
t.n = 0
t.n = t.n + 1
print(t.n)

x, y = 1, 2
x, y = y, x -- switch
print(x .. "-" .. y)

a = {}
i, j = 1, 2
a[i] = 11
a[j] = 22
a[i], a[j] = a[j], a[i] -- switch
print(a[i], a[j])


a, b, c = 0, 1
print(a, b, c)           --> 0   1   nil
a, b = a + 1, b + 1, b + 2 -- value of b+2 is ignored
print(a, b)              --> 1   2
a, b, c = 0
print(a, b, c)           --> 0   nil   nil

a, b, c = 0, 0, 0
print(a,b,c)           --> 0   0   0

function generateValue()
  return 1, 2 -- return multiple values
end
a,b = generateValue()
print(a, b)           --> 1 2
