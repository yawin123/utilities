-- mods/default_override/craftitems.lua

--
-- Crafting items
--

minetest.register_craftitem("default_override:redstone_dust", {
	description = "Redstone Dust",
	inventory_image = "default_redstone_dust.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:charcoal_lump", {
	description = "Charcoal Lump",
	inventory_image = "default_charcoal_lump.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:gold_nugget", {
	description = "Gold Nugget",
	inventory_image = "default_gold_nugget.png",
	stack_max = 64,
})
minetest.register_craftitem("default_override:emerald", {
	description = "Emerald",
	inventory_image = "default_emerald.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:clay_brick", {
	description = "Clay Brick",
	inventory_image = "default_clay_brick.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:gunpowder", {
	description = "Gunpowder",
	inventory_image = "default_gunpowder.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:bone", {
	description = "Bone",
	inventory_image = "default_bone.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:glowstone_dust", {
	description = "Glowstone Dust",
	inventory_image = "default_glowstone_dust.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:fish_raw", {
	description = "Raw Fish",
    groups = {},
    inventory_image = "default_fish.png",
	on_use = minetest.item_eat(2),
	stack_max = 64,
})

minetest.register_craftitem("default_override:fish", {
	description = "Cooked Fish",
    groups = {},
    inventory_image = "default_fish_cooked.png",
	on_use = minetest.item_eat(4),
	stack_max = 64,
})

minetest.register_craftitem("default_override:sugar", {
	description = "Sugar",
	inventory_image = "default_sugar.png",
	stack_max = 64,
})

minetest.register_craftitem("default_override:string",{
	description = "String",
	inventory_image = "default_string.png",
	stack_max = 64,
})

farming.register_hoe(":farming:hoe_gold", {
	description = "Gold Hoe",
	inventory_image = "farming_tool_goldhoe.png",
	max_uses = 350,
	material = "default:gold_ingot"
})
minetest.override_item("farming:hoe_gold", {
	on_use = function(itemstack, user, pointed_thing)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		return farming.hoe_on_use(itemstack, user, pointed_thing, 350)
	end,
})
