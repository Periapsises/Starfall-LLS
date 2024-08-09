---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Library for creating and manipulating physics-less models AKA "Holograms".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L36).
hologram = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a user can spawn anymore holograms.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L158).
---@return boolean # True if user can spawn holograms, False if not.
function hologram.canSpawn() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L99).
---@param pos Vector # The position to create the hologram
---@param ang Angle # The angle to create the hologram
---@param model string # The model to give the hologram
---@param scale Vector? # (Optional) The scale to give the hologram
---@return Hologram # The hologram object
function hologram.create(pos, ang, model, scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks how many holograms can be spawned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L165).
---@return number # Number of holograms able to be spawned
function hologram.hologramsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes all holograms created by the calling chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L535).
function hologram.removeAll() end
