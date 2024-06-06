---@meta

effect = {}

--- Returns whether there are any effects able to be played
---@return boolean # If an effect can be played
function effect.canCreate() end

--- Creates an effect data structure
---@return Effect # Effect Object
function effect.create() end

--- Returns number of effects able to be created
---@return number # Number of effects able to be created
function effect.effectsLeft() end

