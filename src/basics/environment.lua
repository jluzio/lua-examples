newGlobalVar = "test"

print("_G")
for n in pairs(_G) do print(n) end

print("_ENV")
for n in pairs(_ENV) do print(n) end

print("_G == _ENV", _G == _ENV)

print(_G["newGlobalVar"])
print(_ENV["newGlobalVar"])
