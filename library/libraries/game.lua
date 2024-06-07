---@meta

game = {}

--- Returns the map name
---@return string # The name of the current map
function game.getMap() end

--- Returns if the client is currently timing out from the server
---@return boolean # If currently timing out
---@return number # Time since the connection started to timeout
function game.isTimingOut() end

--- Returns the server's frame time and standard deviation
---@return number # Server frametime
---@return number # Server frametime standard deviation
function game.serverFrameTime() end

--- Returns whether or not the current game is single player
---@return boolean # True if the game is singleplayer
function game.isSinglePlayer() end

--- Given a 64bit SteamID will return a STEAM_0: style Steam ID
---@param id string # The 64 bit Steam ID
---@return string # STEAM_0 style Steam ID
function game.steamIDFrom64(id) end

--- Check whether the skybox is visible from the point specified
---@param position Vector # The position to check the skybox visibility from
---@return boolean # Whether the skybox is visible from the position
function game.isSkyboxVisibleFromPoint(position) end

--- Returns the maximum player limit
---@return number # The max players allowed by the server
function game.getMaxPlayers() end

--- Applies explosion damage to all entities in the specified radius
---@param damageOrigin Vector # The center of the explosion
---@param damageRadius number # The radius in which entities will be damaged (0 - 1500)
---@param damage number # The amount of damage to be applied
function game.blastDamage(damageOrigin, damageRadius, damage) end

--- Returns the number of ticks since the game started
---@return number # Ticks
function game.getTickCount() end

--- Returns AmmoData for given id
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return table # AmmoData, see https://wiki.facepunch.com/gmod/Structures/AmmoData
function game.getAmmoData(id) end

--- Returns whether or not the server is a dedicated server
---@return boolean # True if the game is a dedicated server
function game.isDedicated() end

--- Returns the direction and how obstructed the map's sun is or nil if it doesn't exist
---@return Vector # The direction of the sun
---@return number # How obstructed the sun is 0 to 1.
function game.getSunInfo() end

--- Checks whether the specified game is mounted
---@param str string # String identifier of the game, eg. 'cstrike'
---@return boolean # True if the game is mounted
function game.isMounted(str) end

--- Returns if the game has focus or not, i.e. will return false if the game is minimized
---@return boolean # True if the game is focused
function game.hasFocus() end

--- Returns The hostname
---@return string # The hostname of the server
function game.getHostname() end

--- Returns the number of seconds between each gametick
---@return number # Interval
function game.getTickInterval() end

--- Returns a table with keys that are condensed model path names and value identifiers of said paths
---@return table # List of valid playermodels
function game.getPlayerModels() end

--- Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of gmod_maxammo convar
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return number # The maximum amount of reserve ammo a player can hold of this ammo type
function game.getAmmoMax(id) end

--- Returns the worldspawn entity
---@return Entity # Worldspawn
function game.getWorld() end

--- Returns the game time scale
---@return number # Time scale
function game.getTimeScale() end

--- Given a STEAM_0 style Steam ID will return a 64bit Steam ID
---@param id string # The STEAM_0 style id
---@return string # 64bit Steam ID
function game.steamIDTo64(id) end

--- Returns true if the server is on a LAN
---@return boolean # True if the game is a lan game
function game.isLan() end
