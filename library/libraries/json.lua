---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- JSON library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/json.lua#L4).
json = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Convert JSON string to table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/json.lua#L23).
---@param s string # String to decode
---@return table # Table representing the JSON object
function json.decode(s) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Convert table to JSON string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/json.lua#L14).
---@param tbl table # Table to encode
---@param prettyPrint boolean? # Optional. If true, formats and indents the resulting JSON
---@return string # JSON encoded string representation of the table
function json.encode(tbl, prettyPrint) end
