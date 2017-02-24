-- mods/default_override/nodes_override.lua

minetest.override_item("default:stone_with_iron", {
	drop = "default:stone_with_iron",
})

minetest.override_item("default:cactus", {
	drawtype = "nodebox",
	tiles = {"default_cactus_top.png", "default_cactus_bottom.png", "default_cactus_side.png","default_cactus_side.png","default_cactus_side.png","default_cactus_side.png"},
	stack_max = 64,
	groups = {snappy=1,choppy=3,flammable=2},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-7/16, -8/16, -7/16,  7/16, 8/16,  7/16}, -- Main Body
			{-8/16, -8/16, -7/16,  8/16, 8/16, -7/16}, -- Spikes
			{-8/16, -8/16,  7/16,  8/16, 8/16,  7/16}, -- Spikes
			{-7/16, -8/16, -8/16, -7/16, 8/16,  8/16}, -- Spikes
			{7/16,  -8/16,  8/16,  7/16, 8/16, -8/16}, -- Spikes
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
		},
	},
		
			
})

minetest.override_item("default:papyrus", {
	description = "Sugarcane",
	inventory_image = "default_sugar_cane.png",
	wield_image = "default_sugar_cane.png",
	is_ground_content = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-7/16, -8/16, -7/16,  7/16, 8/16,  7/16}, -- Main Body
			{-8/16, -8/16, -7/16,  8/16, 8/16, -7/16}, -- Spikes
			{-8/16, -8/16,  7/16,  8/16, 8/16,  7/16}, -- Spikes
			{-7/16, -8/16, -8/16, -7/16, 8/16,  8/16}, -- Spikes
			{7/16,  -8/16,  8/16,  7/16, 8/16, -8/16}, -- Spikes
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-7/16, -8/16, -7/16, 7/16, 8/16, 7/16},
		},
	},
	stack_max = 64,
})

minetest.override_item("default:chest",{
	stack_max = 64,
	can_dig = function(pos,player)
		return true
	end,
	on_dig = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory("main");

		for i,stack in ipairs(inv:get_list("main")) do
			local x = math.random(-4, 4)/10
			local z = math.random(-4, 4)/10
			pos.x = pos.x + x
			pos.z = pos.z + z
			minetest.env:add_item(pos, stack)
			stack:clear()
			inv:set_stack("main", i, stack)
			pos.x = pos.x - x
			pos.z = pos.z - z
		end

		minetest.env:add_item(pos, minetest.get_node(pos))
		minetest.remove_node(pos)
		return
	end,
})

minetest.override_item("default:chest_locked", {
	stack_max = 64,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos)

		if has_locked_chest_privilege(meta, clicker) then
			return true;
		end

		return false;
	end,
	on_dig = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory("main");

		for i,stack in ipairs(inv:get_list("main")) do
			local x = math.random(-4, 4)/10
			local z = math.random(-4, 4)/10
			pos.x = pos.x + x
			pos.z = pos.z + z
			minetest.env:add_item(pos, stack)
			stack:clear()
			inv:set_stack("main", i, stack)
			pos.x = pos.x - x
			pos.z = pos.z - z
		end

		minetest.env:add_item(pos, minetest.get_node(pos))
		minetest.remove_node(pos)
		return
	end,
})