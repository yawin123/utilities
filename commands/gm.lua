vanished_players = {}

minetest.register_chatcommand("vanish", {
    params = "",
    description = "Make user invisible at eye of all",
    privs = {admin = true},
    func = function(name, param)
        local prop
        vanished_players[name] = not vanished_players[name]
        
        if vanished_players[name] then
            prop = {visual_size = {x=0, y=0}, collisionbox = {0,0,0,0,0,0}}
	    minetest.chat_send_player(name, "Vannish Command: You are Invisible now")
        else
            -- default player size
            prop = {visual_size = {x=1, y=1},
            collisionbox = {-0.35, -1, -0.35, 0.35, 1, 0.35}}
	    minetest.chat_send_player(name, "Vannish Command: You are Visible now")
        end

        minetest.get_player_by_name(name):set_properties(prop)
    end
})

-- create file
datalib.create(datalib.datapath.."/genesis.txt")

-- Set Genesis Command
minetest.register_chatcommand("setgenesis", {
	params = "",
	privs = {admin = true},
	description = "Set the Genesis point (beginning).",
	func = function(name, param)
		--Check for proper player [forbids console commands, not really needed]
		local player = minetest.get_player_by_name(name)
		if not player then
			return
		end
		--Get player position and set genesis just below that just because it looks cooler.
		local pos = vector.round(player:getpos())
		pos.y = pos.y + 0.5

		local pos_str = minetest.pos_to_string(pos)
		datalib.write(datalib.datapath.."/genesis.txt", pos_str, false)

		--Notify admin who set genesis.
		return true, "Genesis point set to position "..pos_str
	end,
})

-- Make sure player initializes at set genesis when he hurts himself badly if it exists.
minetest.register_on_respawnplayer(function(player)
	if not player then
		return
	end
	local genesis_pos = minetest.string_to_pos(minetest.setting_get("static_genesis"))
	if not genesis_pos then
		return
	end
	player:setpos(genesis_pos)
end)

-- Make sure player initializes at set genesis when he joins if it exists.
minetest.register_on_newplayer(function(player)
	if not player then
		return
	end
	local genesis_pos = minetest.string_to_pos(minetest.setting_get("static_genesis"))
	if not genesis_pos then
		return
	end
	player:setpos(genesis_pos)
end)

-- Make /genesis go to a genesis point set by admins if it exists.
minetest.register_chatcommand("genesis", {
	params = "",
	privs = {},
	description = "Initialize transportation to the Genesis.",
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		if not player then
			return
		end
		local genesis = datalib.read(datalib.datapath.."/genesis.txt", false)
		local genesis_pos = minetest.string_to_pos(genesis)
		if not genesis_pos then
			return false, "Static genesis point is not set or improperly formatted."
		end

		player:setpos(genesis_pos)
		return true, "Initializing transportation to the Genesis point..."
	end
})
