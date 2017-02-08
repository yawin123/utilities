local path = minetest.get_modpath("commands")

minetest.register_privilege("admin","Dios en la tierra");

dofile(path.."/info.lua")
dofile(path.."/timeset.lua")
dofile(path.."/gm.lua")
dofile(path.."/kits.lua")
