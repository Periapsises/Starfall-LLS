---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- SQL library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/sql.lua#L5).
sql = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Escapes dangerous characters and symbols from user input used in an SQLite SQL Query.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/sql.lua#L54).
---@param str string # The string to be escaped.
---@param bNoQuotes boolean # Set this as true, and the function will not wrap the input string in apostrophes.
---@return string # The escaped input.
function sql.SQLStr(str, bNoQuotes) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Performs a query on the local SQLite database.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/sql.lua#L17).
---@param query string # The query to execute.
---@return table? # Query results as a table, nil if the query returned no data.
function sql.query(query) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Checks if a table exists within the local SQLite database.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/sql.lua#L32).
---@param tabname string # The table to check for.
---@return boolean # False if the table does not exist, true if it does.
function sql.tableExists(tabname) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Removes a table within the local SQLite database.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/sql.lua#L42).
---@param tabname string # The table to remove.
---@return boolean # True if the table was successfully removed, false if not.
function sql.tableRemove(tabname) end

