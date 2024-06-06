---@meta

---@class Player
local Player = {}

--- Checks if the player is connected to a HUD component that's linked to this chip
---@return boolean # True if a HUD component is connected and active for the player, nil otherwise
function Player:isHUDActive() end

--- Sets the animation auto advance
---@param auto_advance boolean Should the animation handle advancing itself?
function Player:setAnimationAutoAdvance(auto_advance) end

--- Request money from a player.
--- This is subject to a burst limit. Use the darkrp.canMakeMoneyRequest function to check if you can request money that tick.
---@param message string? An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
---@param amount number The amount of money to ask for.
---@param callbackSuccess function? Optional function to call if request succeeds.
---@param callbackFailure function? Optional function to call if request fails.
---@param receiver Player? The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
function Player:requestMoney(message, amount, callbackSuccess, callbackFailure, receiver) end

--- Returns whether the player is typing in their chat
---@return boolean # Whether they are typing in the chat
function Player:isTyping() end

--- Sets the weight of the gesture animation in the given gesture slot
---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:setGestureWeight(slot, weight) end

--- Get the job table of a player. DarkRP only.
---@return table # Table with the job information.
function Player:getJobTable() end

--- Returns whether the player is alive
---@return boolean # True if player alive
function Player:isAlive() end

--- Sets the player's ammo
---@param amount number The ammo value
---@param ammoType number|string Ammo type id or name
function Player:setAmmo(amount, ammoType) end

--- Returns the name of the player's active weapon
---@return Weapon # The weapon
function Player:getActiveWeapon() end

--- Whether this player is a cook. DarkRP only. Only works if hungermod is enabled.
---@return boolean? # Whether this player is a cook. May be nil instead of false.
function Player:isCook() end

--- Returns a player's weapon color
--- The part of the model that is colored is determined by the model itself, and is different for each model
--- The format is Vector(r,g,b), and each color should be between 0 and 1
---@return Vector # The color
function Player:getWeaponColor() end

--- Whether the player has a certain DarkRP privilege.
---@return boolean # Whether the player has the privilege.
function Player:hasDarkRPPrivilege() end

--- Sets the animation playback rate
---@param rate number The playback rate of the animation. Float
function Player:setAnimationRate(rate) end

--- Sets Jump Power
---@param newjumppower number New Jump Power.
function Player:setJumpPower(newjumppower) end

--- Sets the animation progress
---@param progress number The progress of the animation. Ranging from 0-1
function Player:setAnimationProgress(progress) end

--- Forces the player to say the first argument
--- Only works on the chip's owner.
---@param text string The text to force the player to say
---@param teamOnly boolean? Team chat only?, Defaults to false.
function Player:say(text, teamOnly) end

--- Returns the players Walk Speed
---@return number # Walk Speed value
function Player:getWalkSpeed() end

--- Returns the name of the player's current team
---@return string # Team Name
function Player:getTeamName() end

--- Gets the animation time
---@return number # Time in seconds
function Player:getAnimationTime() end

--- Sets Run Speed ( +speed )
---@param newrunspeed number New Run speed.
function Player:setRunSpeed(newrunspeed) end

--- Returns the player's view model
--- In the Client realm, other players' viewmodels are not available unless they are being spectated
---@return Entity # Player's view model
function Player:getViewModel() end

--- Returns a table of weapons the player is carrying
---@return table # Table of weapons
function Player:getWeapons() end

--- Returns the camera punch offset angle
---@return Angle # The angle of the view offset
function Player:getViewPunchAngles() end

--- Get whether the player can afford the given amount of money. DarkRP only.
---@param amount number The amount of money
---@return boolean # Whether the player can afford it
function Player:canAfford(amount) end

--- Returns a player's color
--- The part of the model that is colored is determined by the model itself, and is different for each model
--- The format is Vector(r,g,b), and each color should be between 0 and 1
---@return Vector # The color
function Player:getPlayerColor() end

--- Returns the amount of kills of the player
---@return number # Amount of kills
function Player:getFrags() end

--- Get the value of a DarkRPVar, which is shared between server and client. Case-sensitive.
--- Possible variables include (but are not limited to): AFK, AFKDemoted, money, salaryRL, rpname, job, HasGunlicense, Arrested, wanted, wantedReason, agenda, zombieToggle, hitTarget, hitPrice, lastHitTime, Energy
--- For money specifically, you may optionally use Player:getMoney instead.
--- Some variables may be blacklisted so that you can't read their value.
---@param var string The name of the variable.
---@return any # The value of the DarkRP var.
function Player:getDarkRPVar(var) end

--- Returns whether the player is connected
---@return boolean # True if player is connected
function Player:isConnected() end

--- Whether this player is a Chief. DarkRP only.
---@return boolean? # Whether this player is a Chief. May be nil instead of false.
function Player:isChief() end

--- Returns whether the player is frozen
---@return boolean # True if player is frozen
function Player:isFrozen() end

--- Sets Slow Walk Speed ( +walk )
---@param newslowwalkspeed number New Slow Walk speed.
function Player:setSlowWalkSpeed(newslowwalkspeed) end

--- Returns true if the player is timing out
---@return boolean # isTimingOut
function Player:isTimingOut() end

--- Returns the vehicle the player is driving
---@return Vehicle # Vehicle if player in vehicle or nil
function Player:getVehicle() end

--- Plays gesture animations on a player
---@param animation string|number Sequence string or act number. https://wiki.facepunch.com/gmod/Enums/ACT
---@param loop boolean? Optional boolean (Default true), should the gesture loop
---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
---@param weight number? Optional float (Default 1), the weight of the gesture. Ranging from 0-1
function Player:playGesture(animation, loop, slot, weight) end

--- Returns whether the player is heard by the local player.
---@return boolean # Whether they are speaking and able to be heard by LocalPlayer
function Player:isSpeaking() end

--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.
---@return Entity # Entity
function Player:getEntityInUse() end

--- Unown every door and vehicle owned by this player. DarkRP only.
function Player:keysUnOwnAll() end

--- Returns true if the player is noclipped
---@return boolean # True if the player is noclipped
function Player:isNoclipped() end

--- Returns the time in seconds since the player connected
---@return number # Time connected
function Player:getTimeConnected() end

--- Sets Max Speed
---@param newmaxspeed number New Max speed.
function Player:setMaxSpeed(newmaxspeed) end

--- Returns the players Duck Speed, a rate from 0-1 for how quickly they can crouch
---@return number # Duck Speed value
function Player:getDuckSpeed() end

--- Returns the amount of deaths of the player
---@return number # Amount of deaths
function Player:getDeaths() end

--- Gets the progress of the animation ranging 0-1
---@return number # Progress ranging 0-1
function Player:getAnimationProgress() end

--- Returns whether the player is a bot
---@return boolean # True if player is a bot
function Player:isBot() end

--- Returns a table with information of what the player is looking at
---@return table # Trace data https://wiki.facepunch.com/gmod/Structures/TraceResult
function Player:getEyeTrace() end

--- Returns the time left on a player's team ban. DarkRP only.
--- Only works if the player is the owner of the chip, or if the chip is running in superuser mode.
---@param team number? The number of the job (e.g. TEAM_MEDIC). Uses the player's team if nil.
---@return number? # The time left on the team ban in seconds, or nil if not banned.
function Player:teamBanTimeLeft(team) end

--- Get the reason why someone is wanted. DarkRP only.
---@return string? # The reason, or nil if not wanted
function Player:getWantedReason() end

--- Sets Walk Speed
---@param newwalkspeed number New Walk speed.
function Player:setWalkSpeed(newwalkspeed) end

--- Lets you change the size of yourself if the server has sf_permissions_entity_owneraccess 1
---@param scale number The scale to apply, will be truncated to the first two decimal places (min 0.01, max 100)
function Player:setModelScale(scale) end

--- Whether this player is a medic. DarkRP only.
---@return boolean? # Whether this player is a medic. May be nil instead of false.
function Player:isMedic() end

--- Returns the players Crouched Walk Speed
---@return number # Crouch Walk Speed value
function Player:getCrouchedWalkSpeed() end

--- Whether this player is wanted. DarkRP only. Use Player:getWantedReason if you want to know the reason.
---@return boolean? # Whether this player is wanted. May be nil instead of false.
function Player:isWanted() end

--- Sets the maximum armor for player. You can still set a player's armor above this amount with Player:setArmor.
---@param newmaxarmor number New max armor value.
function Player:setMaxArmor(newmaxarmor) end

--- Gets whether a animation is playing
---@return boolean # If an animation is playing
function Player:isPlayingAnimation() end

--- Returns the player's shoot position
---@return Vector # Shoot position
function Player:getShootPos() end

--- Sets the animation time
---@param time number The time of the animation in seconds. Float
function Player:setAnimationTime(time) end

--- Removes all a player's ammo
function Player:stripAmmo() end

--- Returns the specified weapon or nil if the player doesn't have it
---@param wep string Weapon class name
---@return Weapon # Weapon
function Player:getWeapon(wep) end

--- Sets the animation range
---@param min number Min. Ranging from 0-1
---@param max number Max. Ranging from 0-1
function Player:setAnimationRange(min, max) end

--- Returns whether or not the player is pushing the key.
---@param key number Key to check. IN_KEY table values
---@return boolean # Whether they key is down
function Player:keyDown(key) end

--- Returns whether the player is walking
--- In singleplayer, this will return false clientside
---@return boolean # Whether they are walking
function Player:isWalking() end

--- Returns the players maximum armor capacity
---@return number # Armor limit
function Player:getMaxArmor() end

--- Returns the hitgroup where the player was last hit.
---@return number # Hitgroup, see https://wiki.facepunch.com/gmod/Enums/HITGROUP
function Player:lastHitGroup() end

--- Sets Friction
---@param newfriction number New Friction.
function Player:setFriction(newfriction) end

--- Sets the view entity of the player. Only works if they are linked to a hud.
---@param ent Entity Entity to set the player's view entity to, or nothing to reset it
function Player:setViewEntity(ent) end

--- Returns the player's current team
---@return number # Team Index, from TEAM enums or custom teams
function Player:getTeam() end

--- Returns the players Max Speed, probably unstable
---@return number # Max Speed value
function Player:getMaxSpeed() end

--- Returns whether the player is a super admin
---@return boolean # True if player is super admin
function Player:isSuperAdmin() end

--- Returns the relationship of the player to the local client
---@return string # One of: "friend", "blocked", "none", "requested"
function Player:getFriendStatus() end

--- Returns the packet loss of the client
---@return number # Packets lost
function Player:getPacketLoss() end

--- Returns the entity that the player is standing on
---@return Entity # Ground entity
function Player:getGroundEntity() end

--- Returns the players Slow Walk Speed, which is +walk
---@return number # Slow Walk Speed value
function Player:getSlowWalkSpeed() end

--- Returns the voice volume of the player
---@return number # Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.
function Player:voiceVolume() end

--- Returns the player's SteamID64 / Community ID
--- In singleplayer, this will return no value serverside.
--- For bots, this will return 90071996842377216 (equivalent to STEAM_0:0:0) for the first bot to join, and adds 1 to the id for the bot id.
--- Returns no value for bots clientside.
---@param owner boolean? Return the actual game owner account id
---@return string # SteamID64 aka Community ID
function Player:getSteamID64(owner) end

--- Sets a player's eye angles
---@param ang Angle New angles
function Player:setEyeAngles(ang) end

--- Returns the player's SteamID
---@return string # SteamID
function Player:getSteamID() end

--- Sets Step Size
---@param newstepsize number New Step Size.
function Player:setStepSize(newstepsize) end

--- Returns the player's UserID
---@return number # UserID
function Player:getUserID() end

--- Whether this player is a hitman. DarkRP only.
---@return boolean? # Whether this player is a hitman. May be nil instead of false.
function Player:isHitman() end

--- Returns whether the player is an admin
---@return boolean # True if player is admin
function Player:isAdmin() end

--- Returns whether the local player has muted the player
---@return boolean # True if the player was muted
function Player:isMuted() end

--- Gets the player's death ragdoll
---@return Entity? # The entity or nil if it doesn't exist
function Player:getDeathRagdoll() end

--- Sets the animation activity
---@param activity number|string|nil Activity, nil to use the current animation sequence
function Player:setAnimationActivity(activity) end

--- Whether this player is the Mayor. DarkRP only.
---@return boolean? # Whether this player is the Mayor. May be nil instead of false.
function Player:isMayor() end

--- Give this player money.
--- This is subject to a burst limit. Use the darkrp.canGiveMoney function to check if you can request money that tick.
---@param amount number The amount of money to give.
function Player:giveMoney(amount) end

--- Returns whether the player is crouching
---@return boolean # True if player crouching
function Player:isCrouching() end

--- Returns whether the player is sprinting
---@return boolean # Whether they are sprinting
function Player:isSprinting() end

--- Whether this player is in the same room as the LocalPlayer. DarkRP only.
---@return boolean # Whether this player is in the same room.
function Player:isInRoom() end

--- Resets the animation
function Player:resetAnimation() end

--- Gets the amount of ammo the player has.
---@param idOrName string|number The string ammo name or number id of the ammo
---@return number # The amount of ammo player has in reserve.
function Player:getAmmoCount(idOrName) end

--- Sets Ladder Climb Speed, probably unstable
---@param newladderclimbspeed number New Ladder Climb speed.
function Player:setLadderClimbSpeed(newladderclimbspeed) end

--- Returns the player's current ping
---@return number # The player's ping
function Player:getPing() end

--- Get whether the player can lock a given door. DarkRP only.
---@param door Entity The door
---@return boolean? # Whether the player is allowed to lock the door. May be nil instead of false.
function Player:canKeysLock(door) end

--- Returns whether the player belongs to a usergroup
---@param groupName string Group to check against
---@return boolean # True if player belongs to group
function Player:isUserGroup(groupName) end

--- Returns the players UnDuck Speed, a rate from 0-1 for how quickly they can uncrouch
---@return number # UnDuck Speed value
function Player:getUnDuckSpeed() end

--- Returns the players Friction
---@return number # Friction value
function Player:getFriction() end

--- Get the amount of money this player has. DarkRP only.
--- Equivalent to "ply:getDarkRPVar('money')"
---@return number? # The amount of money, or nil if not accessible.
function Player:getMoney() end

--- Returns whether or not the player has godmode
---@return boolean # True if the player has godmode
function Player:hasGodMode() end

--- Returns the player's name
---@return string # Name
function Player:getName() end

--- Returns the players Run Speed, which is +speed
---@return number # Run Speed value
function Player:getRunSpeed() end

--- Returns the players Step Size
---@return number # Step Size Value
function Player:getStepSize() end

--- Returns the players Ladder Climb Speed, probably unstable
---@return number # Ladder Climb Speed value
function Player:getLadderClimbSpeed() end

--- Sets UnDuck Speed
---@param newunduckspeed number New UnDuck speed, This is a multiplier from 0 to 1.
function Player:setUnDuckSpeed(newunduckspeed) end

--- Returns the number of seconds that the player has been timing out for
---@return number # Timeout seconds
function Player:getTimeoutSeconds() end

--- Returns the player's current view entity
---@return Entity # Player's current view entity
function Player:getViewEntity() end

--- Returns the players armor
---@return number # Armor
function Player:getArmor() end

--- Strips the player's weapon
---@param weapon string The weapon class name of the weapon to strip
function Player:stripWeapon(weapon) end

--- Resets gesture animations on a player
---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
function Player:resetGesture(slot) end

--- Sets Duck Speed
---@param newduckspeed number New Duck speed, This is a multiplier from 0 to 1.
function Player:setDuckSpeed(newduckspeed) end

--- Plays an animation on the player
---@param sequence number|string Sequence number or string name
---@param progress number? Optional float (Default 0), the progress of the animation. Ranging from 0-1
---@param rate number? Optional float (Default 1), the playback rate of the animation
---@param loop boolean? Optional boolean (Default false), should the animation loop
---@param auto_advance boolean? Optional boolean (Default true), should the animation handle advancing itself
---@param act number|string|nil Optional number or string name (Default sequence value), the activity the player should use
function Player:setAnimation(sequence, progress, rate, loop, auto_advance, act) end

--- Returns the player's aim vector
---@return Vector # Aim vector
function Player:getAimVector() end

--- Sets the animation bounce
---@param bounce boolean Should the animation bounce instead of loop?
function Player:setAnimationBounce(bounce) end

--- Drops the player's weapon
---@param weapon Weapon|string The weapon instance or class name of the weapon to drop
---@param target Vector? If set, launches the weapon at the given position
---@param velocity Vector? If set and target is unset, launches the weapon with the given velocity
function Player:dropWeapon(weapon, target, velocity) end

--- Returns the player's field of view
---@return number # Field of view as a float
function Player:getFOV() end

--- Strips all the player's weapons
function Player:stripWeapons() end

--- Returns whether the player's flashlight is on
---@return boolean # True if player has flashlight on
function Player:isFlashlightOn() end

--- Sets the animation loop
---@param loop boolean Should the animation loop?
function Player:setAnimationLoop(loop) end

--- Whether this player is part of the police force (Mayor, CP, Chief). DarkRP only.
---@return boolean # Whether this player is a part of the police force.
function Player:isCP() end

--- Get whether the player can unlock a given door. DarkRP only.
---@param door Entity The door
---@return boolean? # Whether the player is allowed to unlock the door. May be nil instead of false.
function Player:canKeysUnlock(door) end

--- Whether this player is arrested. DarkRP only.
---@return boolean? # Whether this player is arrested. May be nil instead of false.
function Player:isArrested() end

--- Get a player's pocket items. DarkRP only.
---@return table # A table containing information about the items in the pocket.
function Player:getPocketItems() end

--- Sets the armor of the player.
---@param newarmor number New armor value.
function Player:setArmor(newarmor) end

--- Returns the players Jump Power
---@return number # Jump Power value
function Player:getJumpPower() end

--- Sets Crouched Walk Speed
---@param newcwalkspeed number New Crouch Walk speed, This is a multiplier from 0 to 1.
function Player:setCrouchedWalkSpeed(newcwalkspeed) end

--- Returns whether the player is in a vehicle
---@return boolean # True if player in vehicle
function Player:inVehicle() end

