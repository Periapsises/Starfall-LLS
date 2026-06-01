---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Weapon type.
---@class Weapon : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L7).
local Weapon = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Ammo in primary clip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L28).
---@return number # Amount of ammo
function Weapon:clip1() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Ammo in secondary clip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L42).
---@return number # Amount of ammo
function Weapon:clip2() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the sequence enumeration number that the weapon is playing. Must be used on a view model.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L56).
---@return number # Current activity
function Weapon:getActivity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the hold type of the weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L63).
---@return string # Holdtype
function Weapon:getHoldType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the next time the weapon can primary fire.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L70).
---@return number # The time, relative to CurTime
function Weapon:getNextPrimaryFire() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the next time the weapon can secondary fire.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L77).
---@return number # The time, relative to CurTime
function Weapon:getNextSecondaryFire() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the primary ammo type of the given weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L84).
---@return number # Ammo number type
function Weapon:getPrimaryAmmoType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets Display name of weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L135).
---@return string # Display name of weapon
function Weapon:getPrintName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the secondary ammo type of the given weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L91).
---@return number # Ammo number type
function Weapon:getSecondaryAmmoType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the tool mode of the toolgun.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L112).
---@return string # The tool mode of the toolgun
function Weapon:getToolMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the view model of the weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L120).
---@return string # The view model of the weapon.
function Weapon:getViewModel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the world model of the weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L127).
---@return string # The world model of the weapon.
function Weapon:getWorldModel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the weapon is carried by the local player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L142).
---@return boolean # Whether or not the weapon is carried by the local player
function Weapon:isCarriedByLocalPlayer() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the weapon is visible.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L98).
---@return boolean # Whether the weapon is visible or not
function Weapon:isWeaponVisible() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the time since a weapon was last fired at a float variable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L105).
---@return number # Time the weapon was last shot
function Weapon:lastShootTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Maximum ammo in primary clip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L35).
---@return number # Amount of ammo
function Weapon:maxClip1() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Maximum ammo in secondary clip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/weapons.lua#L49).
---@return number # Amount of ammo
function Weapon:maxClip2() end
