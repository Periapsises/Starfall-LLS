---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Player type.
---@class Player : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L81).
local Player = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can afford the given amount of money. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L969).
---@param amount number # The amount of money
---@return boolean # Whether the player can afford it
function Player:canAfford(amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can lock a given door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L977).
---@param door Entity # The door
---@return boolean? # Whether the player is allowed to lock the door. May be nil instead of false.
function Player:canKeysLock(door) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can unlock a given door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L984).
---@param door Entity # The door
---@return boolean? # Whether the player is allowed to unlock the door. May be nil instead of false.
function Player:canKeysUnlock(door) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Drops the player's weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L550).
---@param weapon Weapon|string # The weapon instance or class name of the weapon to drop
---@param target Vector? # If set, launches the weapon at the given position
---@param velocity Vector? # If set and target is unset, launches the weapon with the given velocity
function Player:dropWeapon(weapon, target, velocity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of the player's active weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L259).
---@return Weapon # The weapon
function Player:getActiveWeapon() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's aim vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L266).
---@return Vector # Aim vector
function Player:getAimVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the amount of ammo the player has.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L477).
---@param idOrName string|number # The string ammo name or number id of the ammo
---@return number # The amount of ammo player has in reserve.
function Player:getAmmoCount(idOrName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the progress of the animation ranging 0-1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1112).
---@return number # Progress ranging 0-1
function Player:getAnimationProgress() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the animation time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1123).
---@return number # Time in seconds
function Player:getAnimationTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players armor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L133).
---@return number # Armor
function Player:getArmor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Crouched Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L147).
---@return number # Crouch Walk Speed value
function Player:getCrouchedWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the value of a DarkRPVar, which is shared between server and client. Case-sensitive.
--- Possible variables include (but are not limited to): AFK, AFKDemoted, money, salaryRL, rpname, job, HasGunlicense, Arrested, wanted, wantedReason, agenda, zombieToggle, hitTarget, hitPrice, lastHitTime, Energy.
--- For money specifically, you may optionally use Player:getMoney instead.
--- Some variables may be blacklisted so that you can't read their value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L991).
---@param var string # The name of the variable.
---@return any # The value of the DarkRP var.
function Player:getDarkRPVar(var) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the player's death ragdoll.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L509).
---@return Entity? # The entity or nil if it doesn't exist
function Player:getDeathRagdoll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of deaths of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L231).
---@return number # Amount of deaths
function Player:getDeaths() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Duck Speed, a rate from 0-1 for how quickly they can crouch.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L154).
---@return number # Duck Speed value
function Player:getDuckSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L287).
---@return Entity # Entity
function Player:getEntityInUse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table with information of what the player is looking at.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L408).
---@return table # Trace data https://wiki.facepunch.com/gmod/Structures/TraceResult
function Player:getEyeTrace() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's field of view.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L273).
---@return number # Field of view as a float
function Player:getFOV() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of kills of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L252).
---@return number # Amount of kills
function Player:getFrags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Friction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L210).
---@return number # Friction value
function Player:getFriction() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the relationship of the player to the local client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L834).
---@return string # One of: "friend", "blocked", "none", "requested"
function Player:getFriendStatus() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity that the player is standing on.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L470).
---@return Entity # Ground entity
function Player:getGroundEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the job table of a player. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1003).
---@return table # Table with the job information.
function Player:getJobTable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Jump Power.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L203).
---@return number # Jump Power value
function Player:getJumpPower() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Ladder Climb Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L168).
---@return number # Ladder Climb Speed value
function Player:getLadderClimbSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players maximum armor capacity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L140).
---@return number # Armor limit
function Player:getMaxArmor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Max Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L175).
---@return number # Max Speed value
function Player:getMaxSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the amount of money this player has. DarkRP only.
--- Equivalent to "ply:getDarkRPVar('money')".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1076).
---@return number? # The amount of money, or nil if not accessible.
function Player:getMoney() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L280).
---@return string # Name
function Player:getName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the packet loss of the client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L631).
---@return number # Packets lost
function Player:getPacketLoss() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current ping.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L358).
---@return number # The player's ping
function Player:getPing() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a player's color.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L461).
---@return Vector # The color
function Player:getPlayerColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get a player's pocket items. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1009).
---@return table # A table containing information about the items in the pocket.
function Player:getPocketItems() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Run Speed, which is +speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L182).
---@return number # Run Speed value
function Player:getRunSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's shoot position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L294).
---@return Vector # Shoot position
function Player:getShootPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Slow Walk Speed, which is +walk.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L189).
---@return number # Slow Walk Speed value
function Player:getSlowWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's SteamID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L365).
---@return string # SteamID
function Player:getSteamID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's SteamID64 / Community ID.
--- In singleplayer, this will return no value serverside.
--- For bots, this will return 90071996842377216 (equivalent to STEAM_0:0:0) for the first bot to join, and adds 1 to the id for the bot id.
--- Returns no value for bots clientside.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L372).
---@param owner boolean? # Return the actual game owner account id
---@return string # SteamID64 aka Community ID
function Player:getSteamID64(owner) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Step Size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L217).
---@return number # Step Size Value
function Player:getStepSize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L387).
---@return number # Team Index, from TEAM enums or custom teams
function Player:getTeam() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of the player's current team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L394).
---@return string # Team Name
function Player:getTeamName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the time in seconds since the player connected.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L638).
---@return number # Time connected
function Player:getTimeConnected() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the number of seconds that the player has been timing out for.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L645).
---@return number # Timeout seconds
function Player:getTimeoutSeconds() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players UnDuck Speed, a rate from 0-1 for how quickly they can uncrouch.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L161).
---@return number # UnDuck Speed value
function Player:getUnDuckSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the usergroup of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L351).
---@return string # Usergroup, "user" if player has no group
function Player:getUserGroup() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's UserID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L401).
---@return number # UserID
function Player:getUserID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vehicle the player is driving.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L308).
---@return Vehicle # Vehicle if player in vehicle or nil
function Player:getVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current view entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L415).
---@return Entity # Player's current view entity
function Player:getViewEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's view model.
--- In the Client realm, other players' viewmodels are not available unless they are being spectated.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L422).
---@return Entity # Player's view model
function Player:getViewModel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the camera punch offset angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L430).
---@return Angle # The angle of the view offset
function Player:getViewPunchAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L196).
---@return number # Walk Speed value
function Player:getWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the reason why someone is wanted. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1015).
---@return string? # The reason, or nil if not wanted
function Player:getWantedReason() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the specified weapon or nil if the player doesn't have it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L443).
---@param wep string # Weapon class name
---@return Weapon # Weapon
function Player:getWeapon(wep) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a player's weapon color.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L452).
---@return Vector # The color
function Player:getWeaponColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of weapons the player is carrying.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L436).
---@return table # Table of weapons
function Player:getWeapons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Give this player money.
--- This is subject to a burst limit. Use the darkrp.canGiveMoney function to check if you can request money that tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L942).
---@param amount number # The amount of money to give.
function Player:giveMoney(amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether the player has a certain DarkRP privilege.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1021).
---@return boolean # Whether the player has the privilege.
function Player:hasDarkRPPrivilege() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether or not the player has godmode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L543).
---@return boolean # True if the player has godmode
function Player:hasGodMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is in a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L301).
---@return boolean # True if player in vehicle
function Player:inVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is an admin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L315).
---@return boolean # True if player is admin
function Player:isAdmin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is alive.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L126).
---@return boolean # True if player alive
function Player:isAlive() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is arrested. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1028).
---@return boolean? # Whether this player is arrested. May be nil instead of false.
function Player:isArrested() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is a bot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L322).
---@return boolean # True if player is a bot
function Player:isBot() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is part of the police force (Mayor, CP, Chief). DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1046).
---@return boolean # Whether this player is a part of the police force.
function Player:isCP() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a Chief. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1034).
---@return boolean? # Whether this player is a Chief. May be nil instead of false.
function Player:isChief() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the player is connected.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L659).
---@return boolean # True if player is connected
function Player:isConnected() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a cook. DarkRP only. Only works if hungermod is enabled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1040).
---@return boolean? # Whether this player is a cook. May be nil instead of false.
function Player:isCook() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is crouching.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L224).
---@return boolean # True if player crouching
function Player:isCrouching() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player's flashlight is on.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L238).
---@return boolean # True if player has flashlight on
function Player:isFlashlightOn() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is frozen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L329).
---@return boolean # True if player is frozen
function Player:isFrozen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if the player is connected to a HUD component that's linked to this chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L526).
---@return boolean # True if a HUD component is connected and active for the player, nil otherwise
function Player:isHUDActive() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a hitman. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1052).
---@return boolean? # Whether this player is a hitman. May be nil instead of false.
function Player:isHitman() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Whether this player is in the same room as the LocalPlayer. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L959).
---@return boolean # Whether this player is in the same room.
function Player:isInRoom() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is the Mayor. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1058).
---@return boolean? # Whether this player is the Mayor. May be nil instead of false.
function Player:isMayor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a medic. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1064).
---@return boolean? # Whether this player is a medic. May be nil instead of false.
function Player:isMedic() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the local player has muted the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L842).
---@return boolean # True if the player was muted
function Player:isMuted() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the player is noclipped.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L245).
---@return boolean # True if the player is noclipped
function Player:isNoclipped() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether a animation is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1104).
---@return boolean # If an animation is playing
function Player:isPlayingAnimation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the player is heard by the local player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L849).
---@return boolean # Whether they are speaking and able to be heard by LocalPlayer
function Player:isSpeaking() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is sprinting.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L494).
---@return boolean # Whether they are sprinting
function Player:isSprinting() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is a super admin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L336).
---@return boolean # True if player is super admin
function Player:isSuperAdmin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if the player is timing out.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L652).
---@return boolean # isTimingOut
function Player:isTimingOut() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is typing in their chat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L487).
---@return boolean # Whether they are typing in the chat
function Player:isTyping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player belongs to a usergroup.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L343).
---@param groupName string # Group to check against
---@return boolean # True if player belongs to group
function Player:isUserGroup(groupName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is walking.
--- In singleplayer, this will return false clientside.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L501).
---@return boolean # Whether they are walking
function Player:isWalking() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is wanted. DarkRP only. Use Player:getWantedReason if you want to know the reason.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1070).
---@return boolean? # Whether this player is wanted. May be nil instead of false.
function Player:isWanted() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the player is pushing the key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L823).
---@param key number # Key to check. IN_KEY table values
---@return boolean # Whether they key is down
function Player:keyDown(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Unown every door and vehicle owned by this player. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L907).
function Player:keysUnOwnAll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Kills the target.
--- Requires 'entities.setHealth' permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L811).
function Player:kill() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the hitgroup where the player was last hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L612).
---@return number # Hitgroup, see https://wiki.facepunch.com/gmod/Enums/HITGROUP
function Player:lastHitGroup() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Plays gesture animations on a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L863).
---@param animation string|number # Sequence string or act number. https://wiki.facepunch.com/gmod/Enums/ACT
---@param loop boolean? # Optional boolean (Default true), should the gesture loop
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? # Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:playGesture(animation, loop, slot, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Request money from a player.
--- This is subject to a burst limit. Use the darkrp.canMakeMoneyRequest function to check if you can request money that tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L929).
---@param message string? # An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
---@param amount number # The amount of money to ask for.
---@param callbackSuccess function? # Optional function to call if request succeeds.
---@param callbackFailure function? # Optional function to call if request fails.
---@param receiver Player? # The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
function Player:requestMoney(message, amount, callbackSuccess, callbackFailure, receiver) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets the animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L967).
function Player:resetAnimation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets gesture animations on a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L893).
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
function Player:resetGesture(slot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Forces the player to say the first argument.
--- Only works on the chip's owner.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L666).
---@param text string # The text to force the player to say
---@param teamOnly boolean? # Team chat only?, Defaults to false.
function Player:say(text, teamOnly) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the player's ammo.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L588).
---@param amount number # The ammo value
---@param ammoType number|string # Ammo type id or name
function Player:setAmmo(amount, ammoType) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Plays an animation on the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L919).
---@param sequence number|string # Sequence number or string name
---@param progress number? # Optional float (Default 0), the progress of the animation. Ranging from 0-1
---@param rate number? # Optional float (Default 1), the playback rate of the animation
---@param loop boolean? # Optional boolean (Default false), should the animation loop
---@param auto_advance boolean? # Optional boolean (Default true), should the animation handle advancing itself
---@param act number|string|nil # Optional number or string name (Default sequence value), the activity the player should use
function Player:setAnimation(sequence, progress, rate, loop, auto_advance, act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation activity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L976).
---@param activity number|string|nil # Activity, nil to use the current animation sequence
function Player:setAnimationActivity(activity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation auto advance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1040).
---@param auto_advance boolean # Should the animation handle advancing itself?
function Player:setAnimationAutoAdvance(auto_advance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation bounce.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1055).
---@param bounce boolean # Should the animation bounce instead of loop?
function Player:setAnimationBounce(bounce) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation loop.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1070).
---@param loop boolean # Should the animation loop?
function Player:setAnimationLoop(loop) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation progress.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L995).
---@param progress number # The progress of the animation. Ranging from 0-1
function Player:setAnimationProgress(progress) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation range.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1085).
---@param min number # Min. Ranging from 0-1
---@param max number # Max. Ranging from 0-1
function Player:setAnimationRange(min, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation playback rate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1025).
---@param rate number # The playback rate of the animation. Float
function Player:setAnimationRate(rate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L1010).
---@param time number # The time of the animation in seconds. Float
function Player:setAnimationTime(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the armor of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L681).
---@param newarmor number # New armor value.
function Player:setArmor(newarmor) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Crouched Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L701).
---@param newcwalkspeed number # New Crouch Walk speed, This is a multiplier from 0 to 1.
function Player:setCrouchedWalkSpeed(newcwalkspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Duck Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L711).
---@param newduckspeed number # New Duck speed, This is a multiplier from 0 to 1.
function Player:setDuckSpeed(newduckspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a player's eye angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L619).
---@param ang Angle # New angles
function Player:setEyeAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Friction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L801).
---@param newfriction number # New Friction.
function Player:setFriction(newfriction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the weight of the gesture animation in the given gesture slot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L905).
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? # Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:setGestureWeight(slot, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Jump Power.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L781).
---@param newjumppower number # New Jump Power.
function Player:setJumpPower(newjumppower) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Ladder Climb Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L731).
---@param newladderclimbspeed number # New Ladder Climb speed.
function Player:setLadderClimbSpeed(newladderclimbspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the maximum armor for player. You can still set a player's armor above this amount with Player:setArmor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L691).
---@param newmaxarmor number # New max armor value.
function Player:setMaxArmor(newmaxarmor) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Max Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L741).
---@param newmaxspeed number # New Max speed.
function Player:setMaxSpeed(newmaxspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Lets you change the size of yourself if the server has sf_permissions_entity_owneraccess 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L516).
---@param scale number # The scale to apply, will be truncated to the first two decimal places (min 0.01, max 100)
function Player:setModelScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Run Speed ( +speed ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L751).
---@param newrunspeed number # New Run speed.
function Player:setRunSpeed(newrunspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Slow Walk Speed ( +walk ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L761).
---@param newslowwalkspeed number # New Slow Walk speed.
function Player:setSlowWalkSpeed(newslowwalkspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Step Size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L791).
---@param newstepsize number # New Step Size.
function Player:setStepSize(newstepsize) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets UnDuck Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L721).
---@param newunduckspeed number # New UnDuck speed, This is a multiplier from 0 to 1.
function Player:setUnDuckSpeed(newunduckspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the view entity of the player. Only works if they are linked to a hud.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L533).
---@param ent Entity # Entity to set the player's view entity to, or nothing to reset it
function Player:setViewEntity(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L771).
---@param newwalkspeed number # New Walk speed.
function Player:setWalkSpeed(newwalkspeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes all a player's ammo.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L604).
function Player:stripAmmo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips the player's weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L570).
---@param weapon string # The weapon class name of the weapon to strip
function Player:stripWeapon(weapon) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips all the player's weapons.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L580).
function Player:stripWeapons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the time left on a player's team ban. DarkRP only.
--- Only works if the player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L916).
---@param team number? # The number of the job (e.g. TEAM_MEDIC). Uses the player's team if nil.
---@return number? # The time left on the team ban in seconds, or nil if not banned.
function Player:teamBanTimeLeft(team) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the voice volume of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L856).
---@return number # Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.
function Player:voiceVolume() end
