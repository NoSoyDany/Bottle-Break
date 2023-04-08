ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem('fabr_botella', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('fabr_botella', 1)
		TriggerClientEvent('Bottle:darBottle', source)
		xPlayer.addWeapon('weapon_bottle', 1)
		ESX.ShowNotification('You have broken a bottle.')
	-- OKOK INTEGRATION
	--TriggerClientEvent('okokNotify:Alert', source, "Bottle", "You have broken a bottle", 2500, 'info')

end)
