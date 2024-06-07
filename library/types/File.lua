---@meta

---@class File
local File = {}

--- Reads a float and advances the file position
---@return number # Float32 number
function File:readFloat() end

--- Flushes and closes the file. The file must be opened again to use a new file object.
function File:close() end

--- Reads a certain length of the file's bytes
---@param n number The length to read
---@return string # The data
function File:read(n) end

--- Writes a string to the file and advances the file position
---@param str string The data to write
function File:write(str) end

--- Wait until all changes to the file are complete
function File:flush() end

--- Sets the file position
---@param n number The position to set it to
function File:seek(n) end

--- Reads a byte and advances the file position
---@return number # UInt8 number
function File:readByte() end

--- Returns the current file position
---@return number # The current file position
function File:tell() end

--- Writes a long and advances the file position
---@param x number The long to write
function File:writeLong(x) end

--- Writes a byte and advances the file position
---@param x number The byte to write
function File:writeByte(x) end

--- Reads a short and advances the file position
---@return number # Int16 number
function File:readShort() end

--- Writes a boolean and advances the file position
---@param x boolean The boolean to write
function File:writeBool(x) end

--- Reads a long and advances the file position
---@return number # Int32 number
function File:readLong() end

--- Returns the file's size in bytes
---@return number # The file's size
function File:size() end

--- Writes a short and advances the file position
---@param x number The short to write
function File:writeShort(x) end

--- Writes a double and advances the file position
---@param x number The double to write
function File:writeDouble(x) end

--- Reads a line and advances the file position
---@return string # Line contents
function File:readLine() end

--- Moves the file position relative to its current position
---@param n number How much to move the position
---@return number # The resulting position
function File:skip(n) end

--- Reads a double and advances the file position
---@return number # Float64 number
function File:readDouble() end

--- Reads a boolean and advances the file position
---@return boolean # Boolean
function File:readBool() end

--- Writes a float and advances the file position
---@param x number The float to write
function File:writeFloat(x) end
