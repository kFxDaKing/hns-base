-----------------------------------------
--          Ascent Hide n' Seek
--             Base Gamemode
--                 Server
-----------------------------------------

print('============ [ Ascent Gaming ] ============')
print(" Starting Ascent Hide n' Seek")

-- Constants and Globals
GAME_MAX_TIME  = 600    -- Seconds : 10 Minutes
LOBBY_MAX_TIME = 30     -- Seconds : .5 Minutes
gameTime       = 0      -- How much time has passed in the current game?
gameInProgress = false  -- Is a game in progress? If false, a game is not = lobby.

AddEventHandler('es:firstSpawn', function(source, user)
    
end)

AddEventHandler('es:playerLoaded', function(source, user)
    if gameInProgress == true then

    else

    end
end)

AddEventHandler('es:playerDropped', function(user)
    
end)

Citizen.CreateThread(function()
    while true do
        gameTime++

        -- Game ends
        if gameTime == GAME_MAX_TIME and gameInProgress then
            gameInProgress = false
        else if gameTime == LOBBY_MAX_TIME and not gameInProgress
            gameInProgress = true
        end

        -- gameTime = number of seconds passed for current gameStatus; gameStatus = true game is in progress, false game is not (lobby)
        TriggerClientEvent('asc:doUpdateGame', -1, gameTime, gameInProgress)

        Citizen.Wait(1000) -- One Second
    end
end)