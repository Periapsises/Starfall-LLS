---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- ConVar library https://wiki.facepunch.com/gmod/ConVar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L7).
convar = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Check if the given ConVar exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L29).
---@param name string # Name of the ConVar
---@return boolean # True if exists
function convar.exists(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns value of the ConVar as a boolean.
--- True for numeric ConVars with the value of 1, false otherwise.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L59).
---@param name string # Name of the ConVar
---@return boolean # The boolean value
function convar.getBool(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns default value of the ConVar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L38).
---@param name string # Name of the ConVar
---@return string # Default value as a string
function convar.getDefault(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns FCVAR flags of the given ConVar.
--- https://wiki.facepunch.com/gmod/Enums/FCVAR.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L89).
---@param name string # Name of the ConVar
---@return number # Number consisting of flag values
function convar.getFlags(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns value of the ConVar as a floating-point number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L75).
---@param name string # Name of the ConVar
---@return number # The float value or 0 if converting fails
function convar.getFloat(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns value of the ConVar as a whole number.
--- Floats values will be floored.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L67).
---@param name string # Name of the ConVar
---@return number # The integer value or 0 if converting fails
function convar.getInt(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the maximum value of the convar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L52).
---@param name string # Name of the ConVar
---@return number? # The maximum value or nil if not specified
function convar.getMax(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the minimum value of the convar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L45).
---@param name string # Name of the ConVar
---@return number # The minimum value or nil if not specified
function convar.getMin(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns value of the ConVar as a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L82).
---@param name string # Name of the ConVar
---@return string # Value as a string
function convar.getString(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns true if a given FCVAR flag is set for this ConVar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/convar.lua#L97).
---@param name string # Name of the ConVar
---@param flag number # Convar Flag, see https://wiki.facepunch.com/gmod/Enums/FCVAR
---@return boolean # Whether the flag is set
function convar.hasFlag(name, flag) end

