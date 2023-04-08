local usingBottle = false

RegisterNetEvent('Bottle:darBottle')
AddEventHandler('Bottle:darBottle', function(source)
local playerPed = GetPlayerPed(-1)
if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification('You have to be on foot to break a bottle.')
		-- OKOK INTEGRATION
		-- exports['okokNotify']:Alert("Bottle", "You have to be on foot to break a bottle.", 2000, 'error')
	else
		if IsPedOnFoot(playerPed) and not usingBottle then
			usingBottle = true
			local lib, anim = 'melee@knife@streamed_core', 'ground_attack_on_spot'
			ESX.Streaming.RequestAnimDict(lib, function()
				TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

				Wait(500)
				while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
					Wait(0)
					DisableAllControlActions(0)
				end
				GiveWeaponToPed(playerPed, GetHashKey('weapon_bottle'), 1, false, true)
				usingBottle = false
			end)
		else
			ESX.ShowNotification('There was an error while trying to break the bottle.')
		end
	end
end)