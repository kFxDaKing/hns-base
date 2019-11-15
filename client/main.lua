-----------------------------------------
--          Ascent Hide n' Seek
--             Base Gamemode
--                 Client
-----------------------------------------

-- Constants and Globals
GAME_MAX_TIME    = Config.GameTime    -- 
LOBBY_MAX_TIME   = Config.LobbyTime   -- 
isInGame         = false              -- True if currently in a game, false otherwise (lobby)
ESX              = nil
local PlayerData = {}

RegisterNetEvent('asc:startLobby')
AddEventHandler('asc:startLobby', function()

end)

RegisterNetEvent('asc:startGame')
AddEventHandler('asc:startGame', function()

end)

RegisterNetEvent('asc:doUpdateGame')
AddEventHandler('asc:doUpdateGame', function(gameTime, gameStatus) -- gameTime = number of seconds passed for current gameStatus; gameStatus = true game is in progress, false game is not (lobby)
    if isInGame and not gameStatus then
        TriggerEvent('asc:startLobby')  -- Client was in a game but has recieved a message from the server that the game is over.
    else if not isInGame and gameStatus then
        TriggerEvent('asc:startGame')   -- Client was not in a game but has recieved a message from the server that one has started.
    end

    isInGame = gameStatus  -- Update the client with the current status, reguardless of any state-changes
end)

-- ESX

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)