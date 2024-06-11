---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua os library https://wiki.garrysmod.com/page/Category:os.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L20).
os = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the approximate cpu time the application ran.
--- This function has different precision on Linux (1/100).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L390).
---@return number # The runtime
function os.clock() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the date/time as a formatted string or in a table.
--- See https://wiki.facepunch.com/gmod/Structures/DateData for the table structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L396).
---@param format string # The format string. If starts with an '!', it will use UTC timezone rather than the local timezone
---@param time number? # Time to use for the format. Default os.time()
---@return string|table # If format is equal to '*t' or '!*t' then it will return a table with DateData structure, otherwise a string
function os.date(format, time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtracts the second of the first value and rounds the result.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L409).
---@param timeA number # The first value
---@param timeB number # The value to subtract
---@return number # Time difference
function os.difftime(timeA, timeB) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the system time in seconds past the unix epoch.
--- If a table is supplied, the function attempts to build a system time with the specified table members.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L416).
---@param dateData table? # Optional table to generate the time from. This table's data is interpreted as being in the local timezone
---@return number # Seconds passed since Unix epoch
function os.time(dateData) end

