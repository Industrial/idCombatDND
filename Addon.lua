local f = CreateFrame('Frame')
f:SetScript('OnEvent', function(frame, event, ...)
	if event == 'PLAYER_REGEN_ENABLED' then
		SendChatMessage('', 'DND')
	elseif event == 'PLAYER_REGEN_DISABLED' then
		SendChatMessage('in combat', 'DND')
	end
end)
f:RegisterEvent('PLAYER_REGEN_ENABLED')
f:RegisterEvent('PLAYER_REGEN_DISABLED')

