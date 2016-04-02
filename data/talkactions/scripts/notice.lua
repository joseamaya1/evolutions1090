function onSay(player, words, param)
	local t = param:split(",")
	if player:getGroup():getAccess() then
		if t[1] == 'add' then
			file = io.open('txt/notice.txt','a+')
			notice = file:write("\n"..player:getName().." at " .. os.date("%d %B %Y - %X ", os.time()) .."\n"..t[2].."\n")
			file:close()
			return false
		elseif t[1] == 'clean' then
			file = io.open('txt/notice.txt','w')
			notice = file:write("Server News\n")
			file:close()
			return false
		end
	end
	file = io.open('txt/notice.txt','r')
	notice = file:read(1000000000)
	player:showTextDialog(7528, notice)
	file:close()
	return false
end
