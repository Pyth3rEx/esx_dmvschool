ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('esx_license:getLicenses', source, function(licenses)
		TriggerClientEvent('esx_dmvschool:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('esx_dmvschool:addLicense')
AddEventHandler('esx_dmvschool:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('esx_dmvschool:loadLicenses', _source, licenses)
		end)
	end)
end)
------------------------ Checks DB for Cash Money, return boolean
RegisterNetEvent('esx_dmvschool:checkBalance')
AddEventHandler('esx_dmvschool:checkBalance', function(price, i)
  local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
  local cash = xPlayer.getMoney()

  if cash >= price then
    i = true
    return i
  else
    i = false
    return i
  end
end)
------------------------ Pays the School
RegisterNetEvent('esx_dmvschool:pay')
AddEventHandler('esx_dmvschool:pay', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', _source, _U('you_paid', price))
end)
------------------------ End of Script
