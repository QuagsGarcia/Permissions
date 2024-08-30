local initSpawn = false
AddEventHandler("playerSpawned", function()
	if not initSpawn then
		DoScreenFadeOut(0)
		TriggerEvent("onex-spawn:setupimidiate")
		initSpawn = true
	end
	TriggerServerEvent("gupermcheck", GetPlayerServerId(PlayerId()))
end)
RegisterNetEvent("guperm:reset")
AddEventHandler("guperm:reset", function()
prevWeap = nil 
end)
RegisterNetEvent("QuagsNotify:Icon")
AddEventHandler("QuagsNotify:Icon", function(title, text, time, type)
  lib.notify({
	    title = title,
	    description = text,
	    duration = time,
	    position = 'top',
	    type = type
	})
end)
function weapCheck()
	local tbl = lib.callback.await('guperm:getWeaponList')
	for _, i in pairs(tbl) do
		if not i.a then
			RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey(i.w))
		end
	end
end

Citizen.CreateThread(function()
	prevWeap = nil
  while true do
    Citizen.Wait(50)
	    if GetSelectedPedWeapon(GetPlayerPed(-1)) ~= prevWeap then
	    	weapCheck()
	    	Citizen.Wait(1)
	    	prevWeap = GetSelectedPedWeapon(GetPlayerPed(-1))
	    end
  end
end)