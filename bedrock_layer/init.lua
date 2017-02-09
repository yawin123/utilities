local bedrock_layer = {}

bedrock_layer.layer = -1000
bedrock_layer.node = {name = "default_override:bedrock"}

minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= bedrock_layer.layer and minp.y <= bedrock_layer.layer then
		local vm, edgemin, edgemax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=edgemin, MaxEdge=edgemax})
		local c_bedrock = minetest.get_content_id("default_override:bedrock")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, bedrock_layer.layer, z)
				data[p_pos] = c_bedrock
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)
