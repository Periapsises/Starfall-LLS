---@meta

json = {}

--- Convert JSON string to table
---@param s string # String to decode
---@return table # Table representing the JSON object
function json.decode(s) end

--- Convert table to JSON string
---@param tbl table # Table to encode
---@param prettyPrint boolean? # Optional. If true, formats and indents the resulting JSON
---@return string # JSON encoded string representation of the table
function json.encode(tbl, prettyPrint) end

