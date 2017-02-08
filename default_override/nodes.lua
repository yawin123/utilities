-- mods/default_override/nodes.lua

minetest.register_node("default_override:stone_with_redstone", {
	description = "Redstone Ore",
	tiles = {"default_stone.png^default_mineral_redstone.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {cracky=2},
	drop = "default_override:redstone_dust 5",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:stone_with_lapis", {
	description = "Lapis Lazuli Ore",
	tiles = {"default_stone.png^default_mineral_lapis.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {cracky=2},
	drop = {
		max_items = 2,
		items = {
			{items = {'dye:blue 5'},rarity = 16},
			{items = {'dye:blue 4'},rarity = 12},
			{items = {'dye:blue 3'},rarity = 8},
			{items = {'dye:blue 2'},rarity = 6},
			{items = {'dye:blue 1'}},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:stone_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^default_mineral_emerald.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	drop = "default_override:emerald"
})



minetest.register_node("default_override:bedrock", {
	description = "Bedrock",
	tiles = {"default_bedrock.png"},
	stack_max = 64,
	groups = {cracky=9},
	drop = "",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:lapisblock", {
	description = "Lapis Lazul Block",
	tiles = {"default_lapis_block.png"},
	stack_max = 64,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:emeraldblock", {
	description = "Emerald Block",
	tiles = {"default_emerald_block.png"},
	stack_max = 64,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:redstoneblock", {
	description = "Redstone Block",
	tiles = {"default_redstone_block.png"},
	stack_max = 64,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default_override:apple_gold", {
	description = "Golden Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_apple_gold.png"},
	inventory_image = "default_apple_gold.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	stack_max = 64,
	groups = {fleshy=3,dig_immediate=3,flammable=2},
	on_use = minetest.item_eat(8),
	sounds = default.node_sound_defaults(),
})

minetest.register_node("default_override:glowstone", {
	description = "Glowstone",
	tiles = {"default_glowstone.png"},
	is_ground_content = true,
	stack_max = 64,
	groups = {cracky=3,oddly_breakable_by_hand=2},
	drop = 'default_override:glowstone_dust ',--..math.random(1,9),
	light_source = 12,
})

minetest.register_node("default_override:sponge", {
	description = "Sponge",
	drawtype = "normal",
	tiles = {"default_sponge.png"},
	paramtype = 'light',
	sunlight_propagates = true,
	walkable = true,
	pointable = true,
	diggable = true,
	buildable_to = false,
	stack_max = 64,
	groups = {snappy=2, flammable=1},
})

stairs.register_stair_and_slab(
	"gravel",
	"default:gravel",
	{crumbly = 2, falling_node = 1},
	{"default_gravel.png"},
	"Gravel Stair",
	"Gravel Slab",
	default.node_sound_gravel_defaults()
)

stairs.register_stair_and_slab(
	"dirt",
	"default:dirt",
	{crumbly = 3, soil = 1},
	{"default_dirt.png"},
	"Dirt Stair",
	"Dirt Slab",
	default.node_sound_dirt_defaults()
)

stairs.register_stair_and_slab(
	"grass",
	"default:dirt_with_grass",
	{crumbly = 3, soil = 1},
	{"default_grass.png", "default_grass_slab_side.png"},
	"Grass Stair",
	"Grass Slab",
	default.node_sound_dirt_defaults()
)

--[[walls.register("walls:sandstonebrick", "Sandstonebrick Wall", "default_sandstone_brick.png",
		"default:sandstonebrick", default.node_sound_stone_defaults())
]]--
