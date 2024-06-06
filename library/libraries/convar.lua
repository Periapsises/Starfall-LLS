---@meta

convar = {}

--- Returns value of the ConVar as a string.
---@param name string # Name of the ConVar
---@return string # Value as a string
function convar.getString(name) end

--- Returns default value of the ConVar
---@param name string # Name of the ConVar
---@return string # Default value as a string
function convar.getDefault(name) end

--- Returns value of the ConVar as a whole number.
--- Floats values will be floored.
---@param name string # Name of the ConVar
---@return number # The integer value or 0 if converting fails
function convar.getInt(name) end

--- Returns value of the ConVar as a boolean.
--- True for numeric ConVars with the value of 1, false otherwise.
---@param name string # Name of the ConVar
---@return boolean # The boolean value
function convar.getBool(name) end

--- Returns true if a given FCVAR flag is set for this ConVar.
---@param name string # Name of the ConVar
---@param flag number # Convar Flag, see https://wiki.facepunch.com/gmod/Enums/FCVAR
---@return boolean # Whether the flag is set
function convar.hasFlag(name, flag) end

--- Returns value of the ConVar as a floating-point number.
---@param name string # Name of the ConVar
---@return number # The float value or 0 if converting fails
function convar.getFloat(name) end

--- Returns the maximum value of the convar
---@param name string # Name of the ConVar
---@return number? # The maximum value or nil if not specified
function convar.getMax(name) end

--- Check if the given ConVar exists
---@param name string # Name of the ConVar
---@return boolean # True if exists
function convar.exists(name) end

--- Returns FCVAR flags of the given ConVar.
--- https://wiki.facepunch.com/gmod/Enums/FCVAR
---@param name string # Name of the ConVar
---@return number # Number consisting of flag values
function convar.getFlags(name) end

--- Returns the minimum value of the convar
---@param name string # Name of the ConVar
---@return number # The minimum value or nil if not specified
function convar.getMin(name) end

