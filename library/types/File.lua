---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- File type.
---@class File
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L33).
local File = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Flushes and closes the file. The file must be opened again to use a new file object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L466).
function File:close() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the File object has reached the end of file or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L639).
---@return boolean # Whether the file position has reached the EOF or not.
function File:endOfFile() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Wait until all changes to the file are complete.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L461).
function File:flush() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a certain length of the file's bytes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L500).
---@param n number # The length to read
---@return string # The data
function File:read(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a boolean and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L507).
---@return boolean # Boolean (8-bit)
function File:readBool() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads an unsigned byte and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L513).
---@return number # UInt8 number
function File:readByte() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a double and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L519).
---@return number # Double number (64-bit)
function File:readDouble() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a float and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L525).
---@return number # Float number (32-bit)
function File:readFloat() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a line and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L531).
---@return string # Line contents
function File:readLine() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a signed integer and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L537).
---@return number # Int32 number
function File:readLong() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a signed short and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L549).
---@return number # Int16 number
function File:readShort() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads an unsigned 64-bit integer and advances the file position.
--- Note: Since Lua cannot store full 64-bit integers, this function returns a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L561).
---@return string # UInt64 number
function File:readUInt64() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads an unsigned integer and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L543).
---@return number # UInt32 number
function File:readULong() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads an unsigned short and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L555).
---@return number # UInt16 number
function File:readUShort() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L473).
---@param n number # The position to set it to
function File:seek(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the file's size in bytes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L494).
---@return number # The file's size
function File:size() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Moves the file position relative to its current position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L480).
---@param n number # How much to move the position
---@return number # The resulting position
function File:skip(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L488).
---@return number # The current file position
function File:tell() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a string to the file and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L568).
---@param str string # The data to write
function File:write(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a boolean and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L575).
---@param x boolean # The boolean to write (8-bit)
function File:writeBool(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes an unsigned byte and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L582).
---@param x number # The byte to write (8-bit)
function File:writeByte(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a double and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L589).
---@param x number # The double to write (64-bit)
function File:writeDouble(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a float and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L596).
---@param x number # The float to write (32-bit)
function File:writeFloat(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a signed integer and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L603).
---@param x number # The signed integer to write (32-bit)
function File:writeLong(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a signed short and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L617).
---@param x number # The signed short to write (16-bit)
function File:writeShort(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes an unsigned 64-bit integer and advances the file position.
--- Note: Since Lua cannot store full 64-bit integers, this function takes a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L631).
---@param x string # The unsigned 64-bit integer to write
function File:writeUInt64(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes an unsigned integer and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L610).
---@param x number # The unsigned integer to write (32-bit)
function File:writeULong(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes an unsigned short and advances the file position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L624).
---@param x number # The unsigned short to write (16-bit)
function File:writeUShort(x) end
