-- mods/default_override/craftitems_override.lua

minetest.override_item("default:stick", {
	stack_max = 64,
})

minetest.override_item("default:paper", {
	stack_max = 64,
})

minetest.override_item("default:book", {
	stack_max = 64,
})

minetest.override_item("default:book_written", {
	stack_max = 1,
})

minetest.override_item("default:coal_lump", {
	stack_max = 64,
})

minetest.override_item("default:iron_lump", {
	stack_max = 64,
})

minetest.override_item("default:copper_lump", {
	stack_max = 64,
})

minetest.override_item("default:mese_crystal", {
	stack_max = 64,
})

minetest.override_item("default:gold_lump", {
	stack_max = 64,
})

minetest.override_item("default:diamond", {
	stack_max = 64,
})

minetest.override_item("default:clay_lump", {
	stack_max = 64,
})

minetest.override_item("default:steel_ingot", {
	stack_max = 64,
})

minetest.override_item("default:copper_ingot", {
	stack_max = 64,
})

minetest.override_item("default:bronze_ingot", {
	stack_max = 64,
})

minetest.override_item("default:gold_ingot", {
	stack_max = 64,
})

minetest.override_item("default:mese_crystal_fragment", {
	stack_max = 64,
})

minetest.override_item("default:clay_brick", {
	stack_max = 64,
})

minetest.override_item("default:obsidian_shard", {
	stack_max = 64,
})

minetest.override_item("default:flint", {
	stack_max = 64,
})

minetest.override_item("farming:hoe_wood", {
	on_use = function(itemstack, user, pointed_thing)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		return farming.hoe_on_use(itemstack, user, pointed_thing, 30)
	end,
})

minetest.override_item("farming:hoe_stone", {
	on_use = function(itemstack, user, pointed_thing)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		return farming.hoe_on_use(itemstack, user, pointed_thing, 90)
	end,
})

minetest.override_item("farming:hoe_steel", {
	on_use = function(itemstack, user, pointed_thing)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		return farming.hoe_on_use(itemstack, user, pointed_thing, 200)
	end,
})

minetest.override_item("farming:hoe_diamond", {
	on_use = function(itemstack, user, pointed_thing)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		return farming.hoe_on_use(itemstack, user, pointed_thing, 500)
	end,
})

--minetest.override_item("farming:bread", {
--	on_use = "",
--	on_place = minetest.item_eat(5),
--})
