---@meta

hologram = {}

--- Checks how many holograms can be spawned
---@return number # Number of holograms able to be spawned
function hologram.hologramsLeft() end

--- Removes all holograms created by the calling chip
function hologram.removeAll() end

--- Checks if a user can spawn anymore holograms.
---@return boolean # True if user can spawn holograms, False if not.
function hologram.canSpawn() end

--- Creates a hologram.
---@param pos Vector # The position to create the hologram
---@param ang Angle # The angle to create the hologram
---@param model string # The model to give the hologram
---@param scale Vector? # (Optional) The scale to give the hologram
---@return Hologram # The hologram object
function hologram.create(pos, ang, model, scale) end

