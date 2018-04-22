local cpm = require("component")
local gpu = cpm.gpu
local term = require("term")
local Ws,Hs = gpu.getResolution()
gpu.setBackground(0xa5a5a5)
gpu.fill(1,Hs-7,Ws,8," ")
