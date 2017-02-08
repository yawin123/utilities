-- mods/default_override/nodes_override.lua

minetest.override_item("default:stone", {
	is_ground_content = true,
	stack_max = 64,
})

minetest.override_item("default:cobble", {
	stack_max = 64,
})

minetest.override_item("default:stonebrick", {
	stack_max = 64,
})

minetest.override_item("default:stone_block", {
	stack_max = 64,
})

minetest.override_item("default:mossycobble", {
	stack_max = 64,
})

minetest.override_item("default:desert_stone", {
	stack_max = 64,
})

minetest.override_item("default:desert_cobble", {
	stack_max = 64,
})

minetest.override_item("default:desert_stonebrick", {
	stack_max = 64,
})

minetest.override_item("default:desert_stone_block", {
	stack_max = 64,
})

minetest.override_item("default:sandstone", {
	stack_max = 64,
})

minetest.override_item("default:sandstonebrick", {
	stack_max = 64,
})

minetest.override_item("default:sandstone_block", {
	stack_max = 64,
})

minetest.override_item("default:obsidian", {
	stack_max = 64,
})

minetest.override_item("default:obsidianbrick", {
	stack_max = 64,
})

minetest.override_item("default:obsidian_block", {
	stack_max = 64,
})

minetest.override_item("default:dirt", {
	stack_max = 64,
})


minetest.override_item("default:dirt_with_grass", {
	stack_max = 64,
})

minetest.override_item("default:dirt_with_grass_footsteps", {
	stack_max = 64,
})

minetest.override_item("default:dirt_with_dry_grass", {
	stack_max = 64,
})

minetest.override_item("default:dirt_with_snow", {
	stack_max = 64,
})

minetest.override_item("default:sand", {
	stack_max = 64,
})

minetest.override_item("default:desert_sand", {
	stack_max = 64,
})

minetest.override_item("default:silver_sand", {
	stack_max = 64,
})

minetest.override_item("default:gravel", {
	stack_max = 64,
})

minetest.override_item("default:clay", {
	stack_max = 64,
})

minetest.override_item("default:snow", {
	stack_max = 64,
})

minetest.override_item("default:snowblock", {
	stack_max = 64,
})

minetest.override_item("default:ice", {
	stack_max = 64,

	--on_destruct = function(pos)
	--	minetest.set_node(pos, {name = "default:water_source"})
	--end,
})

minetest.override_item("default:tree", {
	stack_max = 64,
})


minetest.override_item("default:wood", {
	stack_max = 64,
})

minetest.override_item("default:sapling", {
	stack_max = 64,
})

minetest.override_item("default:leaves", {
	stack_max = 64,
})

minetest.override_item("default:apple", {
	stack_max = 64,
})


minetest.override_item("default:jungletree", {
	stack_max = 64,
})

minetest.override_item("default:junglewood", {
	stack_max = 64,
})

minetest.override_item("default:jungleleaves", {
	stack_max = 64,
})

minetest.override_item("default:junglesapling", {
	stack_max = 64,
})

minetest.override_item("default:pine_tree", {
	stack_max = 64,
})

minetest.override_item("default:pine_wood", {
	stack_max = 64,
})

minetest.override_item("default:pine_needles",{
	stack_max = 64,
})

minetest.override_item("default:pine_sapling", {
	stack_max = 64,
})

minetest.override_item("default:acacia_tree", {
	stack_max = 64,
})

minetest.override_item("default:acacia_wood", {
	stack_max = 64,
})

minetest.override_item("default:acacia_leaves", {
	stack_max = 64,
})

minetest.override_item("default:acacia_sapling", {
	stack_max = 64,
})

minetest.override_item("default:aspen_tree", {
	stack_max = 64,
})

minetest.override_item("default:aspen_wood", {
	stack_max = 64,
})

minetest.override_item("default:aspen_leaves", {
	stack_max = 64,
})

minetest.override_item("default:aspen_sapling", {
	stack_max = 64,
})

minetest.override_item("default:stone_with_coal", {
	stack_max = 64,
})

minetest.override_item("default:coalblock", {
	stack_max = 64,
})


minetest.override_item("default:stone_with_iron", {
	stack_max = 64,
	drop="stone_with_iron",
})

minetest.override_item("default:steelblock", {
	description = "Iron Block",
	stack_max = 64,
})

minetest.override_item("default:stone_with_copper", {
	stack_max = 64,
})

minetest.override_item("default:copperblock", {
	stack_max = 64,
})

minetest.override_item("default:bronzeblock", {
	stack_max = 64,
})

minetest.override_item("default:stone_with_mese", {
	stack_max = 64,
})

minetest.override_item("default:mese", {
	stack_max = 64,
})

minetest.override_item("default:stone_with_gold", {
	stack_max = 64,
	drop="default:stone_with_gold",
})

minetest.override_item("default:goldblock", {
	stack_max = 64,
})


minetest.override_item("default:stone_with_diamond", {
	stack_max = 64,
})

minetest.override_item("default:diamondblock", {
	stack_max = 64,
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


minetest.override_item("default:dry_shrub", {
	stack_max = 64,
})


minetest.override_item("default:junglegrass", {
	stack_max = 64,
})


minetest.override_item("default:grass_1", {
	stack_max = 64,
})

for i = 2, 5 do
	minetest.override_item("default:grass_" .. i, {
		stack_max = 64,
	})
end


minetest.override_item("default:dry_grass_1", {
	stack_max = 64,
})

for i = 2, 5 do
	minetest.override_item("default:dry_grass_" .. i, {
		stack_max = 64,
	})
end
minetest.override_item("default:bush_stem", {
	stack_max = 64,
})

minetest.override_item("default:bush_leaves", {
	stack_max = 64,
})

minetest.override_item("default:acacia_bush_stem", {
	stack_max = 64,
})

minetest.override_item("default:acacia_bush_leaves", {
	stack_max = 64,
})

minetest.override_item("default:coral_brown", {
	stack_max = 64,
})

minetest.override_item("default:coral_orange", {
	stack_max = 64,
})

minetest.override_item("default:coral_skeleton", {
	stack_max = 64,
})

minetest.override_item("default:water_source", {
	stack_max = 64,
})

minetest.override_item("default:river_water_source", {
	stack_max = 64,
})

minetest.override_item("default:lava_source", {
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

minetest.override_item("default:bookshelf", {
	stack_max = 64,
})

minetest.override_item("default:sign_wall_wood", {
	stack_max = 64,
})

minetest.override_item("default:sign_wall_steel", {
	stack_max = 64,
})

minetest.override_item("default:ladder_wood", {
	stack_max = 64,
})

minetest.override_item("default:ladder_steel", {
	stack_max = 64,
})

minetest.override_item("default:fence_wood", {
	stack_max = 64,
})

minetest.override_item("default:fence_acacia_wood", {
	stack_max = 64,
})

minetest.override_item("default:fence_junglewood", {
	stack_max = 64,
})

minetest.override_item("default:fence_pine_wood", {
	stack_max = 64,
})

minetest.override_item("default:fence_aspen_wood", {
	stack_max = 64,
})

minetest.override_item("default:glass", {
	stack_max = 64,
})

minetest.override_item("default:obsidian_glass", {
	stack_max = 64,
})

minetest.override_item("default:brick", {
	stack_max = 64,
})

minetest.override_item("default:meselamp", {
	stack_max = 64,
})

--[[local function get_chest_neighborpos(pos, param2, side)
	if side == "right" then
		if param2 == 0 then
			return {x=pos.x-1, y=pos.y, z=pos.z}
		elseif param2 == 1 then
			return {x=pos.x, y=pos.y, z=pos.z+1}
		elseif param2 == 2 then
			return {x=pos.x+1, y=pos.y, z=pos.z}
		elseif param2 == 3 then
			return {x=pos.x, y=pos.y, z=pos.z-1}
		end
	else
		if param2 == 0 then
			return {x=pos.x+1, y=pos.y, z=pos.z}
		elseif param2 == 1 then
			return {x=pos.x, y=pos.y, z=pos.z-1}
		elseif param2 == 2 then
			return {x=pos.x-1, y=pos.y, z=pos.z}
		elseif param2 == 3 then
			return {x=pos.x, y=pos.y, z=pos.z+1}
		end
	end
end

local function hacky_swap_node(pos,name, param2)
	local node = minetest.env:get_node(pos)
	local meta = minetest.env:get_meta(pos)
	if node.name == name then
		return
	end
	node.name = name
	node.param2 = param2 or node.param2
	local meta0 = meta:to_table()
	minetest.env:set_node(pos,node)
	meta = minetest.env:get_meta(pos)
	meta:from_table(meta0)
end

minetest.register_node(":default:chest", {
	description = "Chest",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
	paramtype2 = "facedir",
	stack_max = 64,
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local param2 = minetest.env:get_node(pos).param2
		local meta = minetest.env:get_meta(pos)
		if minetest.env:get_node(get_chest_neighborpos(pos, param2, "right")).name == "default:chest" then
			minetest.env:set_node(pos, {name="default_override:chest_right",param2=param2})
			local p = get_chest_neighborpos(pos, param2, "right")
			meta:set_string("formspec",
					"size[9,11.5]"..
					"list[nodemeta:"..p.x..","..p.y..","..p.z..";main;0,0;9,3;]"..
					"list[current_name;main;0,3;9,3;]"..
					"list[current_player;main;0,7;9,3;9]"..
					"list[current_player;main;0,10.24;9,1;]")
			meta:set_string("infotext", "Large Chest")
			hacky_swap_node(p, "default_override:chest_left", param2)
			local m = minetest.env:get_meta(p)
			m:set_string("formspec",
					"size[9,11.5]"..
					"list[current_name;main;0,0;9,3;]"..
					"list[nodemeta:"..pos.x..","..pos.y..","..pos.z..";main;0,3;9,3;]"..
					"list[current_player;main;0,7;9,3;9]"..
					"list[current_player;main;0,10.24;9,1;]")
			m:set_string("infotext", "Large Chest")
		elseif minetest.env:get_node(get_chest_neighborpos(pos, param2, "left")).name == "default:chest" then
			minetest.env:set_node(pos, {name="default_override:chest_left",param2=param2})
			local p = get_chest_neighborpos(pos, param2, "left")
			meta:set_string("formspec",
					"size[9,11.5]"..
					"list[current_name;main;0,0;9,3;]"..
					"list[nodemeta:"..p.x..","..p.y..","..p.z..";main;0,3;9,3;]"..
					"list[current_player;main;0,7;9,3;9]"..
					"list[current_player;main;0,10.24;9,1;]")
			meta:set_string("infotext", "Large Chest")
			hacky_swap_node(p, "default_override:chest_right", param2)
			local m = minetest.env:get_meta(p)
			m:set_string("formspec",
					"size[9,11.5]"..
					"list[nodemeta:"..pos.x..","..pos.y..","..pos.z..";main;0,0;9,3;]"..
					"list[current_name;main;0,3;9,3;]"..
					"list[current_player;main;0,7;9,3;9]"..
					"list[current_player;main;0,10.24;9,1;]")
			m:set_string("infotext", "Large Chest")
		else
			meta:set_string("formspec",
					"size[9,8.5]"..
					"list[current_name;main;0,0;9,3;]"..
					"list[current_player;main;0,4;9,3;9]"..
					"list[current_player;main;0,7.24;9,1;]")
			meta:set_string("infotext", "Chest")
		end
		local inv = meta:get_inventory()
		inv:set_size("main", 9*3)
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for i=1,inv:get_size("main") do
			local stack = inv:get_stack("main", i)
			if not stack:is_empty() then
				local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
				minetest.env:add_item(p, stack)
			end
		end
		meta:from_table(meta2:to_table())
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

minetest.register_node("default_override:chest_left", {
	tiles = {"default_chest_top_big.png", "default_chest_top_big.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side_big.png^[transformFX", "default_chest_front_big.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
	drop = "default:chest",
	sounds = default.node_sound_wood_defaults(),
	on_destruct = function(pos)
		local m = minetest.env:get_meta(pos)
		if m:get_string("infotext") == "Chest" then
			return
		end
		local param2 = minetest.env:get_node(pos).param2
		local p = get_chest_neighborpos(pos, param2, "left")
		if not p or minetest.env:get_node(p).name ~= "default_override:chest_right" then
			return
		end
		local meta = minetest.env:get_meta(p)
		meta:set_string("formspec",
				"size[9,8.5]"..
				"list[current_name;main;0,0;9,3;]"..
				"list[current_player;main;0,4;9,3;9]"..
				"list[current_player;main;0,7.24;9,1;]")
		meta:set_string("infotext", "Chest")
		hacky_swap_node(p, "default:chest")
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for i=1,inv:get_size("main") do
			local stack = inv:get_stack("main", i)
			if not stack:is_empty() then
				local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
				minetest.env:add_item(p, stack)
			end
		end
		meta:from_table(meta2:to_table())
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

minetest.register_node("default_override:chest_right", {
	tiles = {"default_chest_top_big.png^[transformFX", "default_chest_top_big.png^[transformFX", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side_big.png", "default_chest_front_big.png^[transformFX"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
	drop = "default:chest",
	sounds = default.node_sound_wood_defaults(),
	on_destruct = function(pos)
		local m = minetest.env:get_meta(pos)
		if m:get_string("infotext") == "Chest" then
			return
		end
		local param2 = minetest.env:get_node(pos).param2
		local p = get_chest_neighborpos(pos, param2, "right")
		if not p or minetest.env:get_node(p).name ~= "default_override:chest_left" then
			return
		end
		local meta = minetest.env:get_meta(p)
		meta:set_string("formspec",
				"size[9,8.5]"..
				"list[current_name;main;0,0;9,3;]"..
				"list[current_player;main;0,4;9,3;9]"..
				"list[current_player;main;0,7.24;9,1;]")
		meta:set_string("infotext", "Chest")
		hacky_swap_node(p, "default:chest")
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local meta = minetest.env:get_meta(pos)
		local meta2 = meta
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for i=1,inv:get_size("main") do
			local stack = inv:get_stack("main", i)
			if not stack:is_empty() then
				local p = {x=pos.x+math.random(0, 10)/10-0.5, y=pos.y, z=pos.z+math.random(0, 10)/10-0.5}
				minetest.env:add_item(p, stack)
			end
		end
		meta:from_table(meta2:to_table())
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})
]]--
