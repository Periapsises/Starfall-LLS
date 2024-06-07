---@meta

sql = {}

--- Removes a table within the local SQLite database.
---@param tabname string # The table to remove.
---@return boolean # True if the table was successfully removed, false if not.
function sql.tableRemove(tabname) end

--- Escapes dangerous characters and symbols from user input used in an SQLite SQL Query.
---@param str string # The string to be escaped.
---@param bNoQuotes boolean # Set this as true, and the function will not wrap the input string in apostrophes.
---@return string # The escaped input.
function sql.SQLStr(str, bNoQuotes) end

--- Performs a query on the local SQLite database.
---@param query string # The query to execute.
---@return table? # Query results as a table, nil if the query returned no data.
function sql.query(query) end

--- Checks if a table exists within the local SQLite database.
---@param tabname string # The table to check for.
---@return boolean # False if the table does not exist, true if it does.
function sql.tableExists(tabname) end
