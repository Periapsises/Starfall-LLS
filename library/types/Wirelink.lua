---@meta

---@class Wirelink
local Wirelink = {}

--- Returns current state of the specified input
---@param name string Input name
---@return any # Input value
function Wirelink:inputValue(name) end

--- Checks if a wirelink is valid. (ie. doesn't point to an invalid entity)
---@return boolean # Whether the wirelink is valid
function Wirelink:isValid() end

--- Retrieves an output. Returns nil if the output doesn't exist.
---@param Key any to get the value at
---@return any # Value at the index
function Wirelink:__index(Key) end

--- Writes to an input.
---@param key any Key to set the value at
---@param val any Value to set at the index
function Wirelink:__newindex(key, val) end

--- Returns the type of output name, or nil if it doesn't exist
---@param name string Output name to search for
---@return string # Type of output
function Wirelink:outputType(name) end

--- Returns the entity that the wirelink represents
---@return Entity # Entity the wirelink represents
function Wirelink:entity() end

--- Returns a table of all of the wirelink's inputs
---@return table # All of the wirelink's inputs
function Wirelink:inputs() end

--- Returns the name of the output an input of the wirelink is wired to.
---@param name string Name of the input of the wirelink.
---@return string # String name of the output that the input is wired to.
function Wirelink:getWiredToName(name) end

--- Returns the type of input name, or nil if it doesn't exist
---@param name string Input name to search for
---@return string # Type of input
function Wirelink:inputType(name) end

--- Returns a table of all of the wirelink's outputs
---@return table # All of the wirelink's outputs
function Wirelink:outputs() end

--- Returns what an input of the wirelink is wired to.
---@param name string Name of the input
---@return Entity # The entity the wirelink is wired to
function Wirelink:getWiredTo(name) end

--- Checks if an input is wired.
---@param name string Name of the input to check
---@return boolean # Whether it is wired
function Wirelink:isWired(name) end
