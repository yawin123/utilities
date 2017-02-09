-- mods/default_override/craftitems_override.lua

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