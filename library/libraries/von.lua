---@meta

von = {}

--- Serialize a table
---@param tbl table # Table to serialize
---@param checkRecursive boolean? # Enable checking for table recursion (default: false)
---@return string # String encoded from the table
function von.serialize(tbl, checkRecursive) end

--- Deserialize a string
---@param str string # String to deserialize
---@return table # Table
function von.deserialize(str) end
