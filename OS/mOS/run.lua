local fs = require("filesystem")
local cp = require("computer")
local string = require("string")
local ep = require("component").eeprom
local io = require("io")
local shell = require("shell")
local os = require("os")

if fs.exists("/mOS/pass.sc") == false then
local pass = string.reverse(cp.address())
local file = fs.open("/mOS/pass.sc","w")
file:write(pass)
file:close()
ep.setData(pass)
else
local file = io.open("/mOS/pass.sc","r")
local pass = file:read("a")


if ep.getData() == pass then
shell.execute("gui.lua")
else
print("Вы пытались запустить mOS не офицальном устройстве")
os.sleep(2)
shell.execute("shutdown")
end
end
