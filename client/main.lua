-----------------------------------------
--          Ascent Hide n' Seek
--             Base Gamemode
--                 Client
-----------------------------------------

-- Constants and Globals
isInGame =  false -- True if currently in a game, false otherwise (lobby)

RegisterNetEvent('asc:startLobby')
AddEventHandler('asc:startLobby', function()

end)

RegisterNetEvent('asc:startGame')
AddEventHandler('asc:startGame', function()

end)

RegisterNetEvent('asc:doUpdateGame')
AddEventHandler('asc:doUpdateGame', function(gameTime, gameStatus) -- gameTime = number of seconds passed for current gameStatus; gameStatus = true game is in progress, false game is not (lobby)

end)