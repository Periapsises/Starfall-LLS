---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Wirelink type.
---@class Wirelink : Vector
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L24).
local Wirelink = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Retrieves an output value or highspeed cell address value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L716).
---@param k string|number # Name of output or index of cell
---@return any # Value of the output or cell
function Wirelink:__index(k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Writes to an input or highspeed cell address.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L732).
---@param k string|number # Name of input or index of cell
---@param v any # Value to set input or cell
function Wirelink:__newindex(k, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the entity that the wirelink represents.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L770).
---@return Entity # Entity the wirelink represents
function Wirelink:entity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns what an input of the wirelink is wired to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L827).
---@param name string # Name of the input
---@return Entity # The entity the wirelink is wired to
function Wirelink:getWiredTo(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the name of the output an input of the wirelink is wired to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L839).
---@param name string # Name of the input of the wirelink.
---@return string # String name of the output that the input is wired to.
function Wirelink:getWiredToName(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the type of input name, or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L752).
---@param name string # Input name to search for
---@return string # Type of input
function Wirelink:inputType(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all of the wirelink's inputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L776).
---@return table # All of the wirelink's inputs
function Wirelink:inputs() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if a wirelink is valid. (ie. doesn't point to an invalid entity).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L746).
---@return boolean # Whether the wirelink is valid
function Wirelink:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if an input is wired.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L816).
---@param name string # Name of the input to check
---@return boolean # Whether it is wired
function Wirelink:isWired(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the type of output name, or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L761).
---@param name string # Output name to search for
---@return string # Type of output
function Wirelink:outputType(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all of the wirelink's outputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L796).
---@return table # All of the wirelink's outputs
function Wirelink:outputs() end
