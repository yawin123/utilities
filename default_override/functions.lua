-- mods/default_override/functions.lua

-- Functions
minetest.register_abm({
	label = "Grow cactus",
	nodenames = {"default:cactus"},
	neighbors = {"group:sand"},
	interval = 5,
	chance = 83,
	action = function(...)
		default.grow_cactus(...)
	end
})

local timber_nodenames={"default:papyrus", "default:cactus"}

minetest.register_on_dignode(function(pos, node)
	local i=1
	while timber_nodenames[i]~=nil do
		if node.name==timber_nodenames[i] then
			np={x=pos.x, y=pos.y+1, z=pos.z}
			while minetest.env:get_node(np).name==timber_nodenames[i] do
				minetest.env:remove_node(np)
				minetest.env:add_item(np, timber_nodenames[i])
				np={x=np.x, y=np.y+1, z=np.z}
			end
		end
		i=i+1
	end
end)

function get_nodedef_field(nodename, fieldname)
    if not minetest.registered_nodes[nodename] then
        return nil
    end
    return minetest.registered_nodes[nodename][fieldname]
end

function set_fire(pointed_thing)
		local n = minetest.env:get_node(pointed_thing.above)
		if n.name ~= ""  and n.name == "air" then
			minetest.env:add_node(pointed_thing.above, {name="fire:basic_flame"})
		end
end

--
-- Fire Particles
--

function add_fire(pos)
	local null = {x=0, y=0, z=0}
	pos.y = pos.y+0.19
	minetest.add_particle(pos, null, null, 1.1,
   					1.5, true, "default_fire_particle"..tostring(math.random(1,2)) ..".png")
	pos.y = pos.y +0.01
	minetest.add_particle(pos, null, null, 0.8,
   					1.5, true, "default_fire_particle"..tostring(math.random(1,2)) ..".png")
end

--
-- Bone Meal
--

local n
local n2
local pos

function apple_leave()
	if math.random(0, 10) == 3 then
		return {name = "default:apple"}
	else
		return {name = "default:leaves"}
	end
end

function air_leave()
	if math.random(0, 50) == 3 then
		return {name = "air"}
	else
		return {name = "default:leaves"}
	end
end

function generate_tree(pos, trunk, leaves)
	pos.y = pos.y-1
	local nodename = minetest.env:get_node(pos).name
		
	pos.y = pos.y+1
	if not minetest.env:get_node_light(pos) then
		return
	end

	node = {name = ""}
	for dy=1,4 do
		pos.y = pos.y+dy
		if minetest.env:get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	node = {name = "default:tree"}
	for dy=0,4 do
		pos.y = pos.y+dy
		minetest.env:add_node(pos, node)
		pos.y = pos.y-dy
	end

	node = {name = "default:leaves"}
	pos.y = pos.y+3
	local rarity = 0
	if math.random(0, 10) == 3 then
		rarity = 1
	end
	for dx=-2,2 do
		for dz=-2,2 do
			for dy=0,3 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz

				if dx == 0 and dz == 0 and dy==3 then
					if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.env:add_node(pos, node)
						if rarity == 1 then
							minetest.env:add_node(pos, apple_leave())
						else
							minetest.env:add_node(pos, air_leave())
						end
					end
				elseif dx == 0 and dz == 0 and dy==4 then
					if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.env:add_node(pos, node)
						if rarity == 1 then
							minetest.env:add_node(pos, apple_leave())
						else
							minetest.env:add_node(pos, air_leave())
						end
					end
				elseif math.abs(dx) ~= 2 and math.abs(dz) ~= 2 then
					if minetest.env:get_node(pos).name == "air" then
						minetest.env:add_node(pos, node)
						if rarity == 1 then
							minetest.env:add_node(pos, apple_leave())
						else
							minetest.env:add_node(pos, air_leave())
						end
					end
				else
					if math.abs(dx) ~= 2 or math.abs(dz) ~= 2 then
						if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
							minetest.env:add_node(pos, node)
						if rarity == 1 then
							minetest.env:add_node(pos, apple_leave())
						else
							minetest.env:add_node(pos, air_leave())
						end
						end
					end
				end
				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end

local plant_tab = {}
local rnd_max = 5
minetest.after(0.5, function()
	plant_tab[0] = "air"
	plant_tab[1] = "default:grass_1"
	plant_tab[2] = "default:grass_2"
	plant_tab[3] = "default:grass_3"
	plant_tab[4] = "default:grass_4"
	plant_tab[5] = "default:grass_5"

if minetest.get_modpath("flowers") ~= nil then
	rnd_max = 7
	plant_tab[6] = "flowers:dandelion_yellow"
	plant_tab[7] = "flowers:rose"
end

end)

function duengen(pointed_thing)
	pos = pointed_thing.under
	n = minetest.env:get_node(pos)
	if n.name == "" then return end
	local stage = ""
	if n.name == "default:sapling" then
		minetest.env:add_node(pos, {name="air"})
		generate_tree(pos, "default:tree", "default:leaves")
	elseif string.find(n.name, "farming:wheat_") ~= nil then
		stage = string.sub(n.name, 15)
		if stage == "3" then
			minetest.env:add_node(pos, {name="farming:wheat"})
		elseif math.random(1,5) < 3 then
			minetest.env:add_node(pos, {name="farming:wheat"})
		else
			minetest.env:add_node(pos, {name="farming:wheat_"..math.random(2,3)})
		end
	elseif string.find(n.name, "farming:potato_") ~= nil then
		stage = tonumber(string.sub(n.name, 16))
		if stage == 1 then
			minetest.env:add_node(pos, {name="farming:potato_"..math.random(stage,2)})
		else
			minetest.env:add_node(pos, {name="farming:potato"})
		end
	elseif string.find(n.name, "farming:carrot_") ~= nil then
		stage = tonumber(string.sub(n.name, 16))
		if stage == 1 then
			minetest.env:add_node(pos, {name="farming:carrot_"..math.random(stage,2)})
		else
			minetest.env:add_node(pos, {name="farming:carrot"})
		end
	elseif string.find(n.name, "farming:pumpkin_") ~= nil then
		stage = tonumber(string.sub(n.name, 17))
		if stage == 1 then
			minetest.env:add_node(pos, {name="farming:pumpkin_"..math.random(stage,2)})
		else
			minetest.env:add_node(pos, {name="farming:pumpkin"})
		end
	elseif n.name ~= ""  and n.name == "default:junglesapling" then
		minetest.env:add_node(pos, {name="air"})
		generate_tree(pos, "default:jungletree", "default:jungleleaves")
	elseif n.name ~="" and n.name == "default:papyrus" then
		grow_reeds(pos)
	elseif n.name ~="" and n.name == "default:cactus" then
		grow_cactus(pos)
	elseif n.name == "default:dirt_with_grass" then
		for i = -2, 3, 1 do
			for j = -3, 2, 1 do
				pos = pointed_thing.above
				pos = {x=pos.x+i, y=pos.y, z=pos.z+j}
				n = minetest.env:get_node(pos)
				n2 = minetest.env:get_node({x=pos.x, y=pos.y-1, z=pos.z})

				if n.name ~= ""  and n.name == "air" and n2.name == "default:dirt_with_grass" then
					if math.random(0,5) > 3 then
						minetest.env:add_node(pos, {name=plant_tab[math.random(0, rnd_max)]})
					else
						minetest.env:add_node(pos, {name=plant_tab[math.random(0, 5)]})
					end
					
					
				end
			end
		end
	end
end

-- 
-- Snowballs
--

snowball_GRAVITY=9
snowball_VELOCITY=19

--Shoot snowball.
snow_shoot_snowball=function (item, player, pointed_thing)
	local playerpos=player:getpos()
	local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "default_override:snowball_entity")
	local dir=player:get_look_dir()
	obj:setvelocity({x=dir.x*snowball_VELOCITY, y=dir.y*snowball_VELOCITY, z=dir.z*snowball_VELOCITY})
	obj:setacceleration({x=dir.x*-3, y=-snowball_GRAVITY, z=dir.z*-3})
	item:take_item()
	return item
end

--The snowball Entity
snowball_ENTITY={
	physical = false,
	timer=0,
	textures = {"default_snowball.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

--Snowball_entity.on_step()--> called when snowball is moving.
snowball_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	--Become item when hitting a node.
	if self.lastpos.x~=nil then --If there is no lastpos for some reason.
		if node.name ~= "air" then
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} -- Set lastpos-->Node will be added at last pos outside the node
end

minetest.register_entity("default_override:snowball_entity", snowball_ENTITY)

-- Global environment step function
function on_step(dtime)
	-- print("on_step")
end
minetest.register_globalstep(on_step)

function on_placenode(p, node)
	--print("on_placenode")
end
minetest.register_on_placenode(on_placenode)

function on_dignode(p, node)
	--print("on_dignode")
end
minetest.register_on_dignode(on_dignode)

function on_punchnode(p, node)
end
minetest.register_on_punchnode(on_punchnode)

-- END

-- Support old code
function default.spawn_falling_node(p, nodename)
	spawn_falling_node(p, nodename)
end

-- Horrible crap to support old code
-- Don't use this and never do what this does, it's completely wrong!
-- (More specifically, the client and the C++ code doesn't get the group)
function default.register_falling_node(nodename, texture)
	minetest.log("error", debug.traceback())
	minetest.log('error', "WARNING: default.register_falling_node is deprecated")
	if minetest.registered_nodes[nodename] then
		minetest.registered_nodes[nodename].groups.falling_node = 1
	end
end
