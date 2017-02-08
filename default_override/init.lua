-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into doc/lua_api.txt

local path = minetest.get_modpath("default_override")

-- Definitions made by this mod that other mods can use too
default_override = {}

-- Load files
dofile(path.."/functions.lua")
dofile(path.."/overrides/node_override.lua")
dofile(path.."/overrides/craftitems_override.lua")
dofile(path.."/nodes.lua")
dofile(path.."/tools.lua")
dofile(path.."/craftitems.lua")
dofile(path.."/crafting.lua")
dofile(path.."/mapgen.lua")
