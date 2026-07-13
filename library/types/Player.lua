---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Player type.
---@class Player : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L72).
local Player = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Add the player's linear velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L534).
---@param vel Vector # Add velocity
function Player:addVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Clears a given player's PVS override points set by this chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L508).
function Player:clearPVSPoints() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Drops the player's weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L211).
---@param weapon Weapon|string # The weapon instance or class name of the weapon to drop
---@param target Vector? # If set, launches the weapon at the given position
---@param velocity Vector? # If set and target is unset, launches the weapon with the given velocity
function Player:dropWeapon(weapon, target, velocity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Attempts to force the target into a vehicle.
--- Requires 'player.enterVehicle' permission on the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L485).
---@param vehicle Vehicle #
function Player:enterVehicle(vehicle) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Forces the player out of a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L513).
function Player:exitVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Extinguishes a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L577).
function Player:extinguish() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of the player's active weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L232).
---@return Weapon # The weapon
function Player:getActiveWeapon() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's aim vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L239).
---@return Vector # Aim vector
function Player:getAimVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the amount of ammo the player has.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L443).
---@param id string|number # The string ammo name or number id of the ammo
---@return number # The amount of ammo player has in reserve.
function Player:getAmmoCount(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the progress of the animation ranging 0-1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L816).
---@return number # Progress ranging 0-1
function Player:getAnimationProgress() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the animation time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L827).
---@return number # Time in seconds
function Player:getAnimationTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players armor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L106).
---@return number # Armor
function Player:getArmor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Crouched Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L120).
---@return number # Crouch Walk Speed value
function Player:getCrouchedWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the player's death ragdoll.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L475).
---@return Entity? # The entity or nil if it doesn't exist
function Player:getDeathRagdoll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of deaths of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L204).
---@return number # Amount of deaths
function Player:getDeaths() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Duck Speed, a rate from 0-1 for how quickly they can crouch.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L127).
---@return number # Duck Speed value
function Player:getDuckSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L260).
---@return Entity # Entity
function Player:getEntityInUse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table with information of what the player is looking at.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L381).
---@return table # Trace data https://wiki.facepunch.com/gmod/Structures/TraceResult
function Player:getEyeTrace() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's field of view.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L246).
---@return number # Field of view as a float
function Player:getFOV() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of kills of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L225).
---@return number # Amount of kills
function Player:getFrags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Friction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L183).
---@return number # Friction value
function Player:getFriction() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the relationship of the player to the local client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L538).
---@return string # One of: "friend", "blocked", "none", "requested"
function Player:getFriendStatus() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's hull minimum and maximum vectors.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L519).
---@return Vector # The hull mins, the lowest corner of the Player's bounding box
---@return Vector # The hull maxs, the highest corner of the Player's bounding box
function Player:getHull() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's duck hull minimum and maximum vectors.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L528).
---@return Vector # The hull mins, the lowest corner of the Player's duck bounding box
---@return Vector # The hull maxs, the highest corner of the Player's duck bounding box
function Player:getHullDuck() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Jump Power.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L176).
---@return number # Jump Power value
function Player:getJumpPower() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Ladder Climb Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L141).
---@return number # Ladder Climb Speed value
function Player:getLadderClimbSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players maximum armor capacity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L113).
---@return number # Armor limit
function Player:getMaxArmor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Max Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L148).
---@return number # Max Speed value
function Player:getMaxSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L253).
---@return string # Name
function Player:getName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the packet loss of the client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L282).
---@return number # Packets lost
function Player:getPacketLoss() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current ping.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L331).
---@return number # The player's ping
function Player:getPing() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a player's color.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L434).
---@return Vector # The color
function Player:getPlayerColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Run Speed, which is +speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L155).
---@return number # Run Speed value
function Player:getRunSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's shoot position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L267).
---@return Vector # Shoot position
function Player:getShootPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Slow Walk Speed, which is +walk.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L162).
---@return number # Slow Walk Speed value
function Player:getSlowWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's SteamID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L338).
---@return string # SteamID
function Player:getSteamID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's SteamID64 / Community ID.
--- In singleplayer, this will return no value serverside.
--- For bots, this will return 90071996842377216 (equivalent to STEAM_0:0:0) for the first bot to join, and adds 1 to the id for the bot id.
--- Returns no value for bots clientside.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L345).
---@param owner boolean? # Return the actual game owner account id
---@return string # SteamID64 aka Community ID
function Player:getSteamID64(owner) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Step Size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L190).
---@return number # Step Size Value
function Player:getStepSize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L360).
---@return number # Team Index, from TEAM enums or custom teams
function Player:getTeam() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of the player's current team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L367).
---@return string # Team Name
function Player:getTeamName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the time in seconds since the player connected.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L288).
---@return number # Time connected
function Player:getTimeConnected() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the number of seconds that the player has been timing out for.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L294).
---@return number # Timeout seconds
function Player:getTimeoutSeconds() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players UnDuck Speed, a rate from 0-1 for how quickly they can uncrouch.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L134).
---@return number # UnDuck Speed value
function Player:getUnDuckSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the usergroup of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L324).
---@return string # Usergroup, "user" if player has no group
function Player:getUserGroup() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's UserID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L374).
---@return number # UserID
function Player:getUserID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vehicle the player is driving.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L281).
---@return Vehicle # Vehicle if player in vehicle or nil
function Player:getVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's current view entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L388).
---@return Entity # Player's current view entity
function Player:getViewEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the player's view model.
--- In the Client realm, other players' viewmodels are not available unless they are being spectated.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L395).
---@return Entity # Player's view model
function Player:getViewModel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the camera punch offset angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L403).
---@return Angle # The angle of the view offset
function Player:getViewPunchAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L169).
---@return number # Walk Speed value
function Player:getWalkSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the specified weapon or nil if the player doesn't have it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L416).
---@param wep string # Weapon class name
---@return Weapon # Weapon
function Player:getWeapon(wep) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a player's weapon color.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L425).
---@return Vector # The color
function Player:getWeaponColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of weapons the player is carrying.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L409).
---@return table # Table of weapons
function Player:getWeapons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gives the player a weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L193).
---@param weapon string # The class name of the weapon to give
---@param noAmmo boolean? # Prevent giving ammo on weapon spawn?, Defaults to false.
---@return Weapon # The weapon
function Player:giveWeapon(weapon, noAmmo) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether or not the player has godmode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L187).
---@return boolean # True if the player has godmode
function Player:hasGodMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ignites a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L559).
---@param length number # How long the fire lasts
---@param radius number? # (optional) How large the fire hitbox is (entity obb is the max)
function Player:ignite(length, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is in a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L274).
---@return boolean # True if player in vehicle
function Player:inVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is an admin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L288).
---@return boolean # True if player is admin
function Player:isAdmin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is alive.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L99).
---@return boolean # True if player alive
function Player:isAlive() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is a bot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L295).
---@return boolean # True if player is a bot
function Player:isBot() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the player is connected.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L306).
---@return boolean # True if player is connected
function Player:isConnected() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is crouching.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L197).
---@return boolean # True if player crouching
function Player:isCrouching() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player's flashlight is on.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L211).
---@return boolean # True if player has flashlight on
function Player:isFlashlightOn() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is frozen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L302).
---@return boolean # True if player is frozen
function Player:isFrozen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if the player is connected to a HUD component that's linked to this chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L171).
---@return boolean # If a HUD component is connected and active for the player
function Player:isHUDActive() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the local player has muted the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L546).
---@return boolean # True if the player was muted
function Player:isMuted() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the player is noclipped.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L218).
---@return boolean # True if the player is noclipped
function Player:isNoclipped() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether a animation is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L808).
---@return boolean # If an animation is playing
function Player:isPlayingAnimation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the player is taunting.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L513).
---@return boolean # Is the player taunting
function Player:isPlayingTaunt() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the player is heard by the local player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L553).
---@return boolean # Whether they are speaking and able to be heard by LocalPlayer
function Player:isSpeaking() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is sprinting.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L460).
---@return boolean # Whether they are sprinting
function Player:isSprinting() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is a super admin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L309).
---@return boolean # True if player is super admin
function Player:isSuperAdmin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if the player is timing out.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L300).
---@return boolean # isTimingOut
function Player:isTimingOut() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is typing in their chat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L453).
---@return boolean # Whether they are typing in the chat
function Player:isTyping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player belongs to a usergroup.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L316).
---@param groupName string # Group to check against
---@return boolean # True if player belongs to group
function Player:isUserGroup(groupName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the player is walking.
--- In singleplayer, this will return false clientside.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L467).
---@return boolean # Whether they are walking
function Player:isWalking() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the player is pushing the key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L481).
---@param key number # Key to check. IN_KEY table values
---@return boolean # Whether their key is down
function Player:keyDown(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets whether a key was down one tick ago.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L489).
---@param key number # Key to check. See IN_KEY table values.
---@return boolean # Is their key down.
function Player:keyDownLast(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets wether a key was just pressed this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L497).
---@param key number # Key to check. See IN_KEY table values.
---@return boolean # Was their key pressed.
function Player:keyPressed(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets wether a key was just released this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L505).
---@param key number # Key to check. See IN_KEY table values.
---@return boolean # Was their key released.
function Player:keyReleased(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Kills the target.
--- Requires 'entities.setHealth' permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L475).
function Player:kill() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the hitgroup where the player was last hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L268).
---@return number # Hitgroup, see https://wiki.facepunch.com/gmod/Enums/HITGROUP
function Player:lastHitGroup() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Plays gesture animations on a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L567).
---@param animation string|number # Sequence string or act number. https://wiki.facepunch.com/gmod/Enums/ACT
---@param loop boolean? # Optional boolean (Default true), should the gesture loop
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? # Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:playGesture(animation, loop, slot, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets the animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L671).
function Player:resetAnimation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Resets gesture animations on a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L597).
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
function Player:resetGesture(slot) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Forces the player to say the first argument.
--- Only works on the chip's owner.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L312).
---@param text string # The text to force the player to say
---@param teamOnly boolean? # Team chat only?, Defaults to false.
function Player:say(text, teamOnly) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the player's ammo.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L246).
---@param amount number # The ammo value
---@param ammoType number|string # Ammo type id or name
function Player:setAmmo(amount, ammoType) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Plays an animation on the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L623).
---@param seq number|string # Sequence number or string name
---@param progress number? # Optional float (Default 0), the progress of the animation. Ranging from 0-1
---@param rate number? # Optional float (Default 1), the playback rate of the animation
---@param loop boolean? # Optional boolean (Default false), should the animation loop
---@param auto_advance boolean? # Optional boolean (Default true), should the animation handle advancing itself
---@param act number|string|nil # Optional number or string name (Default sequence value), the activity the player should use
function Player:setAnimation(seq, progress, rate, loop, auto_advance, act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation activity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L680).
---@param act number|string|nil # Activity, nil to use the current animation sequence
function Player:setAnimationActivity(act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation auto advance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L744).
---@param auto_advance boolean # Should the animation handle advancing itself?
function Player:setAnimationAutoAdvance(auto_advance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation bounce.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L759).
---@param bounce boolean # Should the animation bounce instead of loop?
function Player:setAnimationBounce(bounce) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation loop.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L774).
---@param loop boolean # Should the animation loop?
function Player:setAnimationLoop(loop) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation progress.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L699).
---@param progress number # The progress of the animation. Ranging from 0-1
function Player:setAnimationProgress(progress) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation range.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L789).
---@param min number # Min. Ranging from 0-1
---@param max number # Max. Ranging from 0-1
function Player:setAnimationRange(min, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation playback rate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L729).
---@param rate number # The playback rate of the animation. Float
function Player:setAnimationRate(rate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the animation time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L714).
---@param time number # The time of the animation in seconds. Float
function Player:setAnimationTime(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the armor of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L327).
---@param val number # New armor value.
function Player:setArmor(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Crouched Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L367).
---@param val number # New Crouch Walk speed, This is a multiplier from 0 to 1.
function Player:setCrouchedWalkSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Duck Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L376).
---@param val number # New Duck speed, This is a multiplier from 0 to 1.
function Player:setDuckSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a player's eye angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L274).
---@param ang Angle # New angles
function Player:setEyeAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Friction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L457).
---@param val number # New Friction.
function Player:setFriction(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the weight of the gesture animation in the given gesture slot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L609).
---@param slot number? # Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? # Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:setGestureWeight(slot, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the gravity multiplier of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L545).
---@param multiplier number # By how much to multiply the gravity. 1 is normal gravity, 0.5 is half-gravity, etc.
function Player:setGravity(multiplier) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the health of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L345).
---@param val number # New health value.
function Player:setHealth(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Jump Power.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L439).
---@param val number # New Jump Power.
function Player:setJumpPower(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Ladder Climb Speed, probably unstable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L394).
---@param val number # New Ladder Climb speed.
function Player:setLadderClimbSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the maximum armor for player. You can still set a player's armor above this amount with Player:setArmor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L336).
---@param val number # New max armor value.
function Player:setMaxArmor(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the maximum health for player. Note, that you can still set player's health above this amount with Player:setHealth.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L356).
---@param val number # New max health value.
function Player:setMaxHealth(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Max Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L403).
---@param val number # New Max speed.
function Player:setMaxSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Lets you change the size of yourself if the server has sf_permissions_entity_owneraccess 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L162).
---@param scale number # The scale to apply, will be truncated to the first two decimal places (min 0.01, max 100)
function Player:setModelScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- sets ID of a given point to add PVS points.
--- can only be used on either the chip's owner, or HUD connected players.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L494).
---@param ID number # ID to set position of, clamped between 1 and the PVS Points limit.
---@param position Vector? # position to set the override point to, nil to delete this point if it exists.
function Player:setPVSPoint(ID, position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the player's position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L520).
---@param vec Vector # New position
---@param revive boolean? # Revive the player if they are dead
function Player:setPos(vec, revive) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Run Speed ( +speed ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L412).
---@param val number # New Run speed.
function Player:setRunSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Slow Walk Speed ( +walk ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L421).
---@param val number # New Slow Walk speed.
function Player:setSlowWalkSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Step Size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L448).
---@param val number # New Step Size.
function Player:setStepSize(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets UnDuck Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L385).
---@param val number # New UnDuck speed, This is a multiplier from 0 to 1.
function Player:setUnDuckSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the view entity of the player. Only works if they are linked to a hud.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L177).
---@param ent Entity? # Entity to set the player's view entity to, or nothing to reset it
function Player:setViewEntity(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets Walk Speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L430).
---@param val number # New Walk speed.
function Player:setWalkSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the player's weapon color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L466).
---@param col Vector # The new color with values 0-1 in each vector component
function Player:setWeaponColor(col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the player's player model will be drawn at the time the function is called.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L838).
---@return boolean # True if the player's playermodel is visible
function Player:shouldDrawLocalPlayer() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes all a player's ammo.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L261).
function Player:stripAmmo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips the player's weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L230).
---@param weapon string # The weapon class name of the weapon to strip
function Player:stripWeapon(weapon) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips all the player's weapons.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/players.lua#L239).
function Player:stripWeapons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the voice volume of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/players.lua#L560).
---@return number # Returns the players voice volume, how loud the player's voice communication currently is, as a normal number.
function Player:voiceVolume() end
