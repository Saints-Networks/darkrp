if Schema or SCHEMA then return end
local version = "1.00"
MsgC(Color(0, 153, 204), "[StarF4 V"..version.."]: Created by Extra for DarkRP initialising..\n")

if SERVER then
  AddCSLuaFile("starwars_hud/cl_f4.lua")
  AddCSLuaFile("starwars_hud/cl_lang.lua")
  AddCSLuaFile("cl_config.lua")  
  AddCSLuaFile("starwars_hud/derma/dstarframe.lua") 
elseif CLIENT then
  include("starwars_hud/cl_f4.lua")
  include("starwars_hud/cl_lang.lua")    
  include("cl_config.lua")  
  include("starwars_hud/derma/dstarframe.lua")   
end

------------------------
--FAST DL
if SERVER then
resource.AddFile( "resource/fonts/laconic_regular.ttf" )

local dermas = file.Find("materials/starhud/derma/*", "GAME")
local buttons = file.Find("materials/starhud/derma/button/*", "GAME")
local icons = file.Find("materials/starhud/derma/icons/*", "GAME")
local scroll = file.Find("materials/starhud/derma/scroll/*", "GAME")
print("[StarF4 V"..version.."]: Sorting FastDL..")
  for k,v in pairs(dermas) do
    resource.AddFile("materials/starhud/derma/"..v)
  end
  for k,v in pairs(buttons) do
    resource.AddFile("materials/starhud/button/"..v)
  end
  for k,v in pairs(icons) do
    resource.AddFile("materials/starhud/icons/"..v)
  end
  for k,v in pairs(scroll) do
    resource.AddFile("materials/starhud/scroll/"..v)
  end  
end