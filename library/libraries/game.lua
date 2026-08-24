---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Game functions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L16).
game = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies explosion damage to all entities in the specified radius.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L191).
---@param damageOrigin Vector # The center of the explosion
---@param damageRadius number # The radius in which entities will be damaged (0 - 1500)
---@param damage number # The amount of damage to be applied
function game.blastDamage(damageOrigin, damageRadius, damage) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Fires a bullet. Bullet made with this function will not have any tracer, you will have to make them yourself.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L202).
---@param src Vector # The position to fire the bullets from.
---@param dir Vector # The fire direction.
---@param damage number? # The damage dealt by the bullet. Default: (1-100)
---@param num number? # The amount of bullets to fire. Default: (1-40)
---@param force number? # The force of the bullets. Default: (0-100)
---@param distance number? # Maximum distance the bullet can travel.
---@param spread Vector? # The spread, only x and y are needed.
---@param hullSize number? # The hull size of the bullet. Default: (0-10)
---@param ignoreEntity Entity? # The entity that the bullet will ignore when it will be shot.
---@param cb function? # Function to be called with attacker, traceResult after the bullet was fired but before the damage is applied (the callback is called even if no damage is applied).
function game.bulletDamage(src, dir, damage, num, force, distance, spread, hullSize, ignoreEntity, cb) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Return the amount of damage left bullets can deal.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L275).
---@return number # Damage left bullets can deal
function game.bulletsDPSLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Return the amount of bullets left to fire.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L268).
---@return number # Number of bullets left to fire
function game.bulletsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Return if the given bullets can be fired.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L257).
---@param damage number # The damage dealt by the bullet. (1-100)
---@param num number # The amount of bullets to fire. (1-5)
---@return boolean # true if the given bullets can be fired or else false
function game.canFireBullets(damage, num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of the currently running gamemode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L183).
---@return string # The name of the active gamemode
function game.getActiveGamemode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns AmmoData for given id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L131).
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return table # AmmoData, see https://wiki.facepunch.com/gmod/Structures/AmmoData
function game.getAmmoData(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the ammo id for a given name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L117).
---@param name string # The ammo name
---@return number # The id or -1 if not found
function game.getAmmoID(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of gmod_maxammo convar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L138).
---@param id number # See https://wiki.facepunch.com/gmod/Default_Ammo_Types
---@return number # The maximum amount of reserve ammo a player can hold of this ammo type
function game.getAmmoMax(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the ammo name for a given id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L124).
---@param id number # The ammo id
---@return string # The ammo name
function game.getAmmoName(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns The hostname.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L40).
---@return string # The hostname of the server
function game.getHostname() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the public IP address and port of the current server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L101).
---@return string # The IP address and port in the format "x.x.x.x:x"
function game.getIPAddress() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the map name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L34).
---@return string # The name of the current map
function game.getMap() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the maximum player limit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L64).
---@return number # The max players allowed by the server
function game.getMaxPlayers() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table with keys that are condensed model path names and value identifiers of said paths.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L151).
---@return table # List of valid playermodels
function game.getPlayerModels() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the measured number of seconds between each gametick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L89).
---@return number # Time interval in seconds
function game.getRealTickInterval() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the direction and how obstructed the map's sun is or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L291).
---@return Vector # The direction of the sun
---@return number # How obstructed the sun is 0 to 1.
function game.getSunInfo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of ticks since the game started.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L95).
---@return number # Ticks
function game.getTickCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the expected number of seconds between each gametick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L83).
---@return number # Time interval in seconds
function game.getTickInterval() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the game time scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L77).
---@return number # Time scale
function game.getTimeScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the wind's velocity at a given position, as influenced by current map's env_wind entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L161).
---@param pos Vector? # Optional position to get wind speed at. If specified, wind controllers with windradius other than -1 will be taken into account, if the point is within their radius. If omitted, only the global wind controller will be used (if one exists). This argument will be ignored on client-side and will be treated as nil because the position of env_wind is not currently networked to clients
---@return Vector # The current wind velocity at a given position
function game.getWindSpeed(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the worldspawn entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L145).
---@return Entity # Worldspawn
function game.getWorld() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the game has focus or not, i.e. will return false if the game is minimized.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L284).
---@return boolean # True if the game is focused
function game.hasFocus() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the server is a dedicated server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L58).
---@return boolean # True if the game is a dedicated server
function game.isDedicated() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the server is on a LAN.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L46).
---@return boolean # True if the game is a lan game
function game.isLan() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the specified game is mounted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L70).
---@param str string # String identifier of the game, eg. 'cstrike'
---@return boolean # True if the game is mounted
function game.isMounted(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the game menu overlay (escape/main menu) is open or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L338).
---@return boolean # True if the game UI is visible
function game.isPauseMenuVisible() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns true if the game is currently recording a demo file (.dem).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L331).
---@return boolean # True if recording a demo
function game.isRecordingDemo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the current game is single player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L52).
---@return boolean # True if the game is singleplayer
function game.isSinglePlayer() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Check whether the skybox is visible from the point specified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L300).
---@param position Vector # The position to check the skybox visibility from
---@return boolean # Whether the skybox is visible from the position
function game.isSkyboxVisibleFromPoint(position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the client is currently timing out from the server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L323).
---@return boolean # If currently timing out
---@return number # Time since the connection started to timeout
function game.isTimingOut() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a model exists in the game files.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L107).
---@param path string # Filepath in game folder
---@return boolean? # True if exists, false if not, nil if error
function game.modelExists(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the frame time of the physics engine.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L347).
---@return number # The physics frame time length
function game.physicsFrameTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the real frame-time which is unaffected by host_timescale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L316).
---@return number # Frametime
function game.realFrameTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the server's frame time and standard deviation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L308).
---@return number # Server frametime
---@return number # Server frametime standard deviation
function game.serverFrameTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Given a 64bit SteamID will return a STEAM_0: style Steam ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L169).
---@param id string # The 64 bit Steam ID
---@return string # STEAM_0 style Steam ID
function game.steamIDFrom64(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Given a STEAM_0 style Steam ID will return a 64bit Steam ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/game.lua#L176).
---@param id string # The STEAM_0 style id
---@return string # 64bit Steam ID
function game.steamIDTo64(id) end
