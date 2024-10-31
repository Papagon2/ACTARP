-- Donut Shop Job Script

local QBCore = exports['qb-core']:GetCoreObject()

-- Konfigurasjon
local donutShopLocation = vector3(123.45, -1045.67, 29.29) -- Endre til din butikkplassering
local donutPrice = 5

-- Kommando for å starte jobben
RegisterCommand('startdonutjob', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        TriggerClientEvent('qb-donutshop:startJob', source)
    end
end)

-- Server-side event for å lage donuts
RegisterNetEvent('qb-donutshop:makeDonut')
AddEventHandler('qb-donutshop:makeDonut', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.AddItem('donut', 1) -- Legger til donut i inventaret
        TriggerClientEvent('QBCore:Notify', source, "Du har laget en donut!", "success")
    end
end)

-- Server-side event for å selge donuts
RegisterNetEvent('qb-donutshop:sellDonut')
AddEventHandler('qb-donutshop:sellDonut', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local donutCount = Player.Functions.GetItemByName('donut')

    if donutCount and donutCount.amount > 0 then
        Player.Functions.RemoveItem('donut', 1) -- Fjerner en donut fra inventaret
        Player.Functions.AddMoney('cash', donutPrice) -- Gir spilleren penger
        TriggerClientEvent('QBCore:Notify', source, "Du har solgt en donut for $" .. donutPrice, "success")
    else
        TriggerClientEvent('QBCore:Notify', source, "Du har ingen donuts å selge!", "error")
    end
end)

-- Klient-side skript
RegisterNetEvent('qb-donutshop:startJob')
AddEventHandler('qb-donutshop:startJob', function()
    -- Åpne en meny for å lage og selge donuts
    local menu = {
        {label = "Lag donut", value = "make_donut"},
        {label = "Selg donut", value = "sell_donut"}
    }

    QBCore.UI.Menu.Open('default', GetCurrentResourceName(), 'donut_shop_menu', {
        title = "Donut Shop",
        align = 'top-left',
        elements = menu
    }, function(data, menu)
        if data.current.value == 'make_donut' then
            TriggerServerEvent('qb-donutshop:makeDonut')
        elseif data.current.value == 'sell_donut' then
            TriggerServerEvent('qb-donutshop:sellDonut')
        end
    end, function(data, menu)
        menu.close()
    end)
end)

-- Sjekk om spilleren er i donutbutikken
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        if #(playerCoords - donutShopLocation) < 5.0 then
            DrawMarker(2, donutShopLocation.x, donutShopLocation.y, donutShopLocation.z - 0.5, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 100, false, true, 2, false, false, false, false, false, false, false)
        end
    end
end)