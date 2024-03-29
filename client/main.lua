-----------------------------------------
--          Ascent Hide n' Seek
--             Base Gamemode
--                 Client
-----------------------------------------

-- Constants and Globals
GAME_MAX_TIME    = Config.GameTime    -- 
LOBBY_MAX_TIME   = Config.LobbyTime   -- 
isInGame         = false              -- True if currently in a game, false otherwise (lobby)

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