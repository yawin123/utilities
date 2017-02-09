--[[
  I don't know from where is that command
]]--

INFO_BLANK = "To find out more about certain items type the command '/info' with the params 'update', 'version', 'creative', 'suprise'"
INFO_VERSION = "0.1"
INFO_UPDATE = "Nothing ATM"
INFO_CREATIVE = "Type the command '/gamemode_'(change the underscore to a space) and use the params '0' or 's' for survival and '1' or 'c' for creative"

minetest.register_chatcommand("info", {
	params = "(blank) | update | version | creative | suprise",
	description = "To get info on stuff.",
	func = function(name, param)
		if param == "" then
			minetest.chat_send_player(name, INFO_BLANK)
		end
		if param == "update" then
			minetest.chat_send_player(name, INFO_UPDATE)
		end
		if param == "version" then
			minetest.chat_send_player(name, INFO_VERSION)
		end
		if param == "creative" then
			minetest.chat_send_player(name, INFO_CREATIVE)
		end
		if param == "random" then
			minetest.chat_send_player(name, INFO_RANDOM)
		end
	end
}) 
