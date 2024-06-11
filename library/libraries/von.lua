---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- vON Library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/von.lua#L797).
von = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Deserialize a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/von.lua#L808).
---@param str string # String to deserialize
---@return table # Table
function von.deserialize(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Serialize a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/von.lua#L817).
---@param tbl table # Table to serialize
---@param checkRecursive boolean? # Enable checking for table recursion (default: false)
---@return string # String encoded from the table
function von.serialize(tbl, checkRecursive) end

