-- mods/default_override/mapgen.lua

-- Ores
function default_override.register_ores()
	-- Blob ores
	-- These first to avoid other ores in blobs

	-- Clay
	-- This first to avoid clay in sand blobs


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -1000,
		y_max          = -15,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -1000,
		y_max          = -15,
	})

	minetest.register_ore({
		ore_type        = "scatter",
		ore             = "default_override:stone_with_redstone",
		wherein         = {"default:stone"},
		clust_scarcity  = 8 * 8 * 8,
		clust_size      = 5,
		y_min           = -1000,
		y_max           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	minetest.register_ore({
		ore_type        = "scatter",
		ore             = "default_override:stone_with_lapis",
		wherein         = {"default:stone"},
		clust_scarcity  = 8 * 8 * 8,
		clust_size      = 5,
		y_min           = -1000,
		y_max           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	minetest.register_ore({
		ore_type        = "scatter",
		ore             = "default_override:stone_with_emerald",
		wherein         = {"default:stone"},
		clust_scarcity  = 1 * 3 * 2,
		clust_size      = 2,
		y_min           = -1000,
		y_max           = -13,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})
end

default_override.register_ores()
--minetest.clear_registered_biomes()

minetest.register_biome({
	name = "underground",
	--node_dust = "",
	--node_top = "",
	--depth_top = ,
	--node_filler = "",
	--depth_filler = ,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = -31000,
	y_max = -13,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "over_grassland",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	node_filler = "default:dirt",
	depth_top = 1,
	depth_filler = 1,

	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",

	node_riverbed = "default:sand",
	depth_riverbed = 2,
	y_min = 10000,
	y_max = 31000,
	heat_point = 50,
	humidity_point = 35,
})
