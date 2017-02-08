-- mods/default_override/crafting.lua

minetest.register_craft({
	output = 'default:stick 4',
	recipe = {
		{'group:wood'},
		{'group:wood'},
	}
})

minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'default:charcoal_lump'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'default:pick_gold',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:shovel_gold',
	recipe = {
		{'default:gold_ingot'},
		{'default:stick'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_gold',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot'},
		{'default:gold_ingot', 'default:stick'},
		{'', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_gold',
	recipe = {
		{'default:gold_ingot'},
		{'default:gold_ingot'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'default_override:pick_emerald',
	recipe = {
		{'default_override:emerald', 'default_override:emerald', 'default_override:emerald'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default_override:shovel_emerald',
	recipe = {
		{'', 'default_override:emerald', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default_override:axe_emerald',
	recipe = {
		{'default_override:emerald', 'default_override:emerald', ''},
		{'default_override:emerald', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default_override:axe_emerald',
	recipe = {
		{'', 'default_override:emerald', 'default_override:emerald'},
		{'', 'default:stick', 'default_override:emerald'},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default_override:sword_emerald',
	recipe = {
		{'', 'default_override:emerald', ''},
		{'', 'default_override:emerald', ''},
		{'', 'default:stick', ''},
	}
})

--minetest.register_craft({
--	output = 'default:flint_and_steel',
--	recipe = {
--		{'default:steel_ingot', ''},
--		{'', 'default:flint'},
--	}
--})

--minetest.register_craft({
--	output = "default:pole",
--	recipe = {
--		{'','','default:stick'},
--		{'','default:stick','farming:string'},
--		{'default:stick','','farming:string'},
--	}
--})

--minetest.register_craft({
--	output = "default:pole",
--	recipe = {
--		{'', '', 'default:stick'},
--		{'', 'default:stick', 'default:string'},
--		{'default:stick', '', 'default:string'},
--	}
--})

minetest.register_craft({
	output = 'default:rail 15',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:stick', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
	}
})

--minetest.register_craft({
--	output = "default:gold_nugget 9",
--	recipe = {{"default:gold_ingot"}},
--})

--minetest.register_craft({
--	output = 'dye:white 3',
--	recipe = {
--		{'default:bone'},
--	}
--})

minetest.register_craft({
	output = 'default_override:lapisblock',
	recipe = {
		{'dye:blue', 'dye:blue', 'dye:blue'},
		{'dye:blue', 'dye:blue', 'dye:blue'},
		{'dye:blue', 'dye:blue', 'dye:blue'},
	}
})

minetest.register_craft({
	output = 'dye:blue 9',
	recipe = {
		{'default_override:lapisblock'},
	}
})

minetest.register_craft({
	output = "default_override:emeraldblock",
	recipe = {
		{'default_override:emerald', 'default_override:emerald', 'default_override:emerald'},
		{'default_override:emerald', 'default_override:emerald', 'default_override:emerald'},
		{'default_override:emerald', 'default_override:emerald', 'default_override:emerald'},
	}
})

minetest.register_craft({
	output = 'default_override:emerald 9',
	recipe = {
		{'default_override:emeraldblock'},
	}
})

minetest.register_craft({
	output = "default_override:glowstone",
	recipe = {
		{'default_override:glowstone_dust', 'default_override:glowstone_dust'},
		{'default_override:glowstone_dust', 'default_override:glowstone_dust'},
	}
})

minetest.register_craft({
	output = 'default_override:glowstone_dust 4',
	recipe = {
		{'default_override:glowstone'},
	}
})


minetest.register_craft({
	output = "default_override:redstoneblock",
	recipe = {
		{'default_override:redstone_dust','default_override:redstone_dust','default_override:redstone_dust'},
		{'default_override:redstone_dust','default_override:redstone_dust','default_override:redstone_dust'},
		{'default_override:redstone_dust','default_override:redstone_dust','default_override:redstone_dust'},
	}
})

minetest.register_craft({
	output = 'default_override:redstone_dust 9',
	recipe = {
		{'default_override:redstoneblock'},
	}
})

--minetest.register_craft({
--	output = 'default_override:redstone_dust',
--	recipe = {{"mesecons:wire_00000000_off"}},
--})

--minetest.register_craft({
--	output = "mesecons:wire_00000000_off",
--	recipe = {{'default_override:redstone_dust'}},
--})

minetest.register_craft({
	output = "default_override:apple_gold",
	recipe = {
		{"default_override:gold_nugget", "default_override:gold_nugget", "default_override:gold_nugget"},
		{"default_override:gold_nugget", 'default:apple', "default_override:gold_nugget"},
		{"default_override:gold_nugget", "default_override:gold_nugget", "default_override:gold_nugget"},
	}
})

minetest.register_craft({
	output = "default_override:sugar",
	recipe = {
		{"default:papyrus"},
	}
})

minetest.register_craft({
	output = "beds:bed",
	recipe = {
		{"group:wool", 'group:wool', "group:wool"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = "stairs:slab_grass 6",
	recipe = {
		{"default:grass_1", "default:grass_1", "default:grass_1"},
		{"default:dirt", "default:dirt", "default:dirt"},
	}
})

minetest.register_craft({
	output = "stairs:slab_grass 3",
	recipe = {
		{"default:grass_1", "default:grass_1", "default:grass_1"},
		{"stairs:slab_dirt", "stairs:slab_dirt", "stairs:slab_dirt"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "default:sandstone 4",
	recipe = {"group:sand", "group:sand", "group:sand", "group:sand"}
})
--[[
minetest.register_craft({
	output = "stairs:slab_dirt_with_grass",
	recipe = {
		{"default:dirt_with_grass", "default:dirt_with_grass", "default:dirt_with_grass"},
	}
})]]--

--
-- Cooking recipes
--

--minetest.register_craft({
--	type = "cooking",
--	output = "default:fish",
--	recipe = "default:fish_raw",
--	cooktime = 2,
--})

minetest.register_craft({
	type = "cooking",
	output = "default_override:charcoal_lump",
	recipe = "group:tree",
})

minetest.register_craft({
	type = "cooking",
	output = "default:steel_ingot",
	recipe = "default:stone_with_iron",
})

minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "default:stone_with_gold",
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {"farming:wheat"}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour 4",
	recipe = {"farming:wheat", "farming:wheat", "farming:wheat", "farming:wheat"}
})

--
-- Fuels
--

minetest.register_craft({
	type = "fuel",
	recipe = "default_override:charcoal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:coal_lump",
	burntime = 40,
})


--
--Temporary
--
--minetest.register_craft({
--	output = "default:string",
--	recipe = {{"default:paper", "default:paper"}},
--})
