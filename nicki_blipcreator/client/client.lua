bliptable = {}
function createBlips()
    for k, v in pairs(Config.Blips) do
        if v.show == true then
            local blip = AddBlipForCoord(v.pos.x, v.pos.y, v.pos.z)

            SetBlipSprite(blip, v.blipID)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, v.size)
            SetBlipColour(blip, v.colour)

            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(v.name)
            EndTextCommandSetBlipName(blip)

            table.insert(bliptable, blip)
        end
    end
end



Citizen.CreateThread(function()
    createBlips()
end)
