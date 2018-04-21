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
ep.setData("pass")
shell.execute("reboot")
else
local file = io.open("/mOS/pass.sc","r")
local pass = file:read("a")
if string.reverse(cp.address()) == pass then
shell.execute("gui.lua")
else
print("Вы запустили mOS не оригиналном устройстве")
os.sleep(5)
shell.execute("reboot")
end
end
