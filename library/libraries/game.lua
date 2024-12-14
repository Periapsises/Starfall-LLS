---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Game functions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L6).
game = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies explosion damage to all entities in the specified radius.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L133).
---@param damageOrigin Vector # The center of the explosion
---@param damageRadius number # The radius in which entities will be damaged (0 - 1500)
---@param damage number # The amount of damage to be applied
function game.blastDamage(damageOrigin, damageRadius, damage) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns AmmoData for given id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L86).
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return table # AmmoData, see https://wiki.facepunch.com/gmod/Structures/AmmoData
function game.getAmmoData(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of gmod_maxammo convar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L93).
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return number # The maximum amount of reserve ammo a player can hold of this ammo type
function game.getAmmoMax(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns The hostname.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L25).
---@return string # The hostname of the server
function game.getHostname() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the map name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L19).
---@return string # The name of the current map
function game.getMap() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the maximum player limit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L49).
---@return number # The max players allowed by the server
function game.getMaxPlayers() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table with keys that are condensed model path names and value identifiers of said paths.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L106).
---@return table # List of valid playermodels
function game.getPlayerModels() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the measured number of seconds between each gametick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L74).
---@return number # Time interval in seconds
function game.getRealTickInterval() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the direction and how obstructed the map's sun is or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L152).
---@return Vector # The direction of the sun
---@return number # How obstructed the sun is 0 to 1.
function game.getSunInfo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of ticks since the game started.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L80).
---@return number # Ticks
function game.getTickCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the expected number of seconds between each gametick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L68).
---@return number # Time interval in seconds
function game.getTickInterval() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the game time scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L62).
---@return number # Time scale
function game.getTimeScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the worldspawn entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L100).
---@return Entity # Worldspawn
function game.getWorld() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the game has focus or not, i.e. will return false if the game is minimized.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L145).
---@return boolean # True if the game is focused
function game.hasFocus() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the server is a dedicated server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L43).
---@return boolean # True if the game is a dedicated server
function game.isDedicated() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the server is on a LAN.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L31).
---@return boolean # True if the game is a lan game
function game.isLan() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the specified game is mounted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L55).
---@param str string # String identifier of the game, eg. 'cstrike'
---@return boolean # True if the game is mounted
function game.isMounted(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the current game is single player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L37).
---@return boolean # True if the game is singleplayer
function game.isSinglePlayer() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Check whether the skybox is visible from the point specified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L161).
---@param position Vector # The position to check the skybox visibility from
---@return boolean # Whether the skybox is visible from the position
function game.isSkyboxVisibleFromPoint(position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the client is currently timing out from the server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L177).
---@return boolean # If currently timing out
---@return number # Time since the connection started to timeout
function game.isTimingOut() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the server's frame time and standard deviation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L169).
---@return number # Server frametime
---@return number # Server frametime standard deviation
function game.serverFrameTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Given a 64bit SteamID will return a STEAM_0: style Steam ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L117).
---@param id string # The 64 bit Steam ID
---@return string # STEAM_0 style Steam ID
function game.steamIDFrom64(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Given a STEAM_0 style Steam ID will return a 64bit Steam ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L124).
---@param id string # The STEAM_0 style id
---@return string # 64bit Steam ID
function game.steamIDTo64(id) end
