local shell = require("shell")
local fs = require("filesystem")
 
local function iF(path, name, sulka)
 
if fs.exists(path..name) == true then
fs.remove(path..name)
else
fs.makeDirectory("/test/dir/")
end
 
 
 
shell.execute("wget -q "..sulka.." "..path..name)
end
 
iF("/etc/","motd", "https://raw.githubusercontent.com/HardProfi/mOS/master/OS/etc/motd")
iF("/etc/","profile.lua", "https://raw.githubusercontent.com/HardProfi/mOS/master/OS/etc/profile.lua")
iF("/lib/core/","boot.lua", "https://raw.githubusercontent.com/HardProfi/mOS/master/OS/lib/core/boot.lua")
iF("/mOS/","run.lua","https://raw.githubusercontent.com/HardProfi/mOS/master/OS/mOS/run.lua")
