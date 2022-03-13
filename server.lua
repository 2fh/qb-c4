QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end) -- if you use new core delete those


QBCore.Functions.CreateUseableItem("c4", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('Ra:CheckIfRequirementsAreMet', source)
end)

RegisterServerEvent('Ra:RemoveBombFromInv')
AddEventHandler('Ra:RemoveBombFromInv', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local Item = xPlayer.Functions.GetItemByName('c4')
   
	if Item.amount > 1 then
       xPlayer.Functions.RemoveItem("c4", 1)
    end
end)
