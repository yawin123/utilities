 minetest.register_chatcommand("kit", {
    params = "",
    description = "Adds a Kit to player",
    privs = {},
    func = function(name)
		local receiverref = core.get_player_by_name(name)

		receiverref:get_inventory():add_item('main', 'default:pick_stone')
		receiverref:get_inventory():add_item('main', 'default:shovel_stone')
		receiverref:get_inventory():add_item('main', 'default:axe_stone')
		receiverref:get_inventory():add_item('main', 'default:sword_stone')
    end
})
