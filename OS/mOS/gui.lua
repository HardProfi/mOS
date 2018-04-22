local cpm = require("component")
local gpu = cpm.gpu
local term = require("term")
local Ws,Hs = gpu.getResolution()
gpu.setBackground(0xa5a5a5)
local page = 1
local args = {...}

if args[1] == "desktop" then 
page = 2
end




while true do
  if page == 1 then
    print("e")
  end
end
