---@meta

---@class Weapon
local Weapon = {}

--- Gets the secondary ammo type of the given weapon.
---@return number # Ammo number type
function Weapon:getSecondaryAmmoType() end

--- Returns the time since a weapon was last fired at a float variable
---@return number # Time the weapon was last shot
function Weapon:lastShootTime() end

--- Returns Maximum ammo in secondary clip
---@return number # Amount of ammo
function Weapon:maxClip2() end

--- Returns the tool mode of the toolgun
---@return string # The tool mode of the toolgun
function Weapon:getToolMode() end

--- Returns the hold type of the weapon.
---@return string # Holdtype
function Weapon:getHoldType() end

--- Gets the next time the weapon can primary fire.
---@return number # The time, relative to CurTime
function Weapon:getNextPrimaryFire() end

--- Gets Display name of weapon
---@return string # Display name of weapon
function Weapon:getPrintName() end

--- Returns whether the weapon is visible
---@return boolean # Whether the weapon is visible or not
function Weapon:isWeaponVisible() end

--- Returns if the weapon is carried by the local player.
---@return boolean # Whether or not the weapon is carried by the local player
function Weapon:isCarriedByLocalPlayer() end

--- Gets the primary ammo type of the given weapon.
---@return number # Ammo number type
function Weapon:getPrimaryAmmoType() end

--- Returns Maximum ammo in primary clip
---@return number # Amount of ammo
function Weapon:maxClip1() end

--- Gets the next time the weapon can secondary fire.
---@return number # The time, relative to CurTime
function Weapon:getNextSecondaryFire() end

--- Returns Ammo in secondary clip
---@return number # Amount of ammo
function Weapon:clip2() end

--- Returns the sequence enumeration number that the weapon is playing. Must be used on a view model.
---@return number # Current activity
function Weapon:getActivity() end

--- Returns Ammo in primary clip
---@return number # Amount of ammo
function Weapon:clip1() end

