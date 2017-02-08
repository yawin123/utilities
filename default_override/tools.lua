-- mods/default_override/tools.lua

minetest.register_tool("default_override:pick_gold", {
	description = "Gold Pickaxe",
	inventory_image = "default_tool_goldpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_tool("default_override:shovel_gold", {
	description = "Gold Shovel",
	inventory_image = "default_tool_goldshovel.png",
	wield_image = "default_tool_goldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("default_override:axe_gold", {
	description = "Gold Axe",
	inventory_image = "default_tool_goldaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("default_override:sword_gold", {
	description = "Gold Sword",
	inventory_image = "default_tool_goldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("default_override:pick_emerald", {
	description = "Emerald Pickaxe",
	inventory_image = "default_tool_emeraldpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_tool("default_override:shovel_emerald", {
	description = "Emerald Shovel",
	inventory_image = "default_tool_emeraldshovel.png",
	wield_image = "default_tool_emeraldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("default_override:axe_emerald", {
	description = "Emerald Axe",
	inventory_image = "default_tool_emeraldaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("default_override:sword_emerald", {
	description = "Emerald Sword",
	inventory_image = "default_tool_emeraldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- Fishing Pole
minetest.register_tool(":default:pole", {
	description = "Fishing Rod",
    groups = {},
    inventory_image = "default_tool_fishing_pole.png",
    stack_max = 1,
    liquids_pointable = true,
	on_use = function (itemstack, user, pointed_thing)
		if pointed_thing and pointed_thing.under then
			local node = minetest.env:get_node(pointed_thing.under)
			if string.find(node.name, "default:water") then
				if math.random(1, 100) < 15 then
					local inv = user:get_inventory()
					if inv:room_for_item("main", {name="default:fish_raw", count=1, wear=0, metadata=""}) then
						inv:add_item("main", {name="default:fish_raw", count=1, wear=0, metadata=""})
					end
				end
				itemstack:add_wear(66000/65) -- 65 uses
				return itemstack
			end
		end
		return nil
	end,
})

--Shears
minetest.register_tool(":default:shears", {
	description = "Shears",
	inventory_image = "default_tool_shears.png",
	wield_image = "default_tool_shears.png",
	stack_max = 1,
	max_drop_level=3,
	tool_capabilities = {
	        full_punch_interval = 0.5,
	        max_drop_level=1,
	        groupcaps={
				leaves={times={[1]=0,[2]=0,[3]=0}, uses=283, maxlevel=1},
				wool={times={[1]=0.2,[2]=0.2,[3]=0.2}, uses=283, maxlevel=1},
				snappy={times={[1]=0.2,[2]=0.2,[3]=0.2}, uses=283, maxlevel=1},
        	}
    }
})
