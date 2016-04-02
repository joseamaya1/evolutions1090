local config = {
	storage = 030220122041,
	marks = {
		{mark = 5, pos = {x = 100, y = 40, z = 6}, desc = "Dorion Temple"},
		{mark = 11, pos = {x = 103, y = 64, z = 6}, desc = "Tools Shop!"},
		{mark = 7, pos = {x = 92, y = 64, z = 6}, desc = "Paladin Shop!"},
		{mark = 8, pos = {x = 93, y = 75, z = 6}, desc = "Weapon Shop!"},
		{mark = 8, pos = {x = 97, y = 78, z = 6}, desc = "Armor Shop!"},
		{mark = 4, pos = {x = 81, y = 69, z = 6}, desc = "Dorion Depot!"},
		{mark = 9, pos = {x = 45, y = 79, z = 6}, desc = "Boat!"},
		{mark = 2, pos = {x = 26, y = 51, z = 6}, desc = "Football!"},
		{mark = 5, pos = {x = 119, y = 98, z = 6}, desc = "Sanctuary!"},
		{mark = 12, pos = {x = 48, y = 103, z = 6}, desc = "Arena PVP!"},
		{mark = 11, pos = {x = 70, y = 50, z = 6}, desc = "Decoration Shop!"},
		{mark = 3, pos = {x = 83, y = 48, z = 6}, desc = "Wand Shop!"},
		{mark = 3, pos = {x = 113, y = 65, z = 6}, desc = "Rune Shop!"}
	}
}

function onThink(creature, interval)
	if creature:getStorageValue(config.storage) == 1 then
		return
	end

	for _, m  in pairs(config.marks) do
		creature:addMapMark(m.pos, m.mark, m.desc)
	end
	creature:setStorageValue(config.storage, 1)
	return TRUE
end
