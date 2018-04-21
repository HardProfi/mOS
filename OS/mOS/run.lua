local fs = require("filesystem")
local cp = require("computer")
local string = require("string")
local ep = require("component").eeprom

if fs.exists("/mOS/pass.sc") == false then
local pass = string.reverse(cp.address())
local file = fs.open("/mOS/pass.sc","w")
file:write(pass)
file:close()
ep.setData(pass)
end
