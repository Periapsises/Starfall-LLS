---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Wirelink type.
---@class Wirelink
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L23).
local Wirelink = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Retrieves an output. Returns nil if the output doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L636).
---@param Key any # to get the value at
---@return any # Value at the index
function Wirelink:__index(Key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Writes to an input.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L655).
---@param key any # Key to set the value at
---@param val any # Value to set at the index
function Wirelink:__newindex(key, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the entity that the wirelink represents.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L706).
---@return Entity # Entity the wirelink represents
function Wirelink:entity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns what an input of the wirelink is wired to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L763).
---@param name string # Name of the input
---@return Entity # The entity the wirelink is wired to
function Wirelink:getWiredTo(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the name of the output an input of the wirelink is wired to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L775).
---@param name string # Name of the input of the wirelink.
---@return string # String name of the output that the input is wired to.
function Wirelink:getWiredToName(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the type of input name, or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L688).
---@param name string # Input name to search for
---@return string # Type of input
function Wirelink:inputType(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns current state of the specified input.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L678).
---@param name string # Input name
---@return any # Input value
function Wirelink:inputValue(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all of the wirelink's inputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L712).
---@return table # All of the wirelink's inputs
function Wirelink:inputs() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if a wirelink is valid. (ie. doesn't point to an invalid entity).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L672).
---@return boolean # Whether the wirelink is valid
function Wirelink:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if an input is wired.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L752).
---@param name string # Name of the input to check
---@return boolean # Whether it is wired
function Wirelink:isWired(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the type of output name, or nil if it doesn't exist.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L697).
---@param name string # Output name to search for
---@return string # Type of output
function Wirelink:outputType(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all of the wirelink's outputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L732).
---@return table # All of the wirelink's outputs
function Wirelink:outputs() end

