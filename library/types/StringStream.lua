---@meta

---@class StringStream
local StringStream = {}

--- Reads an unsigned 16 bit (two byte) integer from the byte stream and advances the buffer pointer.
---@return number # UInt16 at this position
function StringStream:readUInt16() end

--- Reads a 4 byte IEEE754 float from the byte stream and advances the buffer pointer.
---@return number # Float32 at this position
function StringStream:readFloat() end

--- Reads a signed 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
---@return number # Int8 at this position
function StringStream:readInt8() end

--- Reads the specified number of bytes from the buffer and advances the buffer pointer.
---@param length number How many bytes to read
---@return string # A string containing the bytes
function StringStream:read(length) end

--- Writes the given string and advances the buffer pointer.
---@param data string A string of data to write
function StringStream:write(data) end

--- Sets internal pointer to pos. The position will be clamped to [1, buffersize+1]
---@param pos number Position to seek to
function StringStream:seek(pos) end

--- Writes a unsigned short to the buffer and advances the buffer pointer.
---@param x number UInt16 to write
function StringStream:writeUInt16(x) end

--- Returns the buffer as a string
---@return string # The buffer as a string
function StringStream:getString() end

--- Reads a signed 16-bit (two byte) integer from the byte stream and advances the buffer pointer.
---@return number # Int16 at this position
function StringStream:readInt16() end

--- Writes a unsigned byte to the buffer and advances the buffer pointer.
---@param x number UInt8 to write
function StringStream:writeUInt8(x) end

--- Returns the internal position of the byte reader.
---@return number # The buffer position
function StringStream:tell() end

--- Writes a string to the buffer putting a null at the end and advances the buffer pointer.
---@param str string The string of bytes to write
function StringStream:writeString(str) end

--- Move the internal pointer by amount i
---@param length number The offset
function StringStream:skip(length) end

--- Sets the endianness of the string stream
---@param endian string The endianness of number types. "big" or "little" (default "little")
function StringStream:setEndian(endian) end

--- Reads an unsigned 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
---@return number # UInt8 at this position
function StringStream:readUInt8() end

--- Reads an entity from the byte stream and advances the buffer pointer.
---@param callback function? (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
---@return Entity # The entity that was read
function StringStream:readEntity(callback) end

--- Writes an int to the buffer and advances the buffer pointer.
---@param x number Int32 to write
function StringStream:writeInt32(x) end

--- Reads a signed 32-bit (four byte) integer from the byte stream and advances the buffer pointer.
---@return number # Int32 at this position
function StringStream:readInt32() end

--- Writes an entity to the buffer and advances the buffer pointer.
---@param e Entity The entity to be written
function StringStream:writeEntity(e) end

--- Writes a short to the buffer and advances the buffer pointer.
---@param x number Int16 to write
function StringStream:writeInt16(x) end

--- Reads a 8 byte IEEE754 double from the byte stream and advances the buffer pointer.
---@return number # Double at this position
function StringStream:readDouble() end

--- Tells the size of the byte stream.
---@return number # The buffer size
function StringStream:size() end

--- Returns a null terminated string, reads until "\x00" and advances the buffer pointer.
---@return string # The string of bytes read
function StringStream:readString() end

--- Writes a 8 byte IEEE754 double to the byte stream and advances the buffer pointer.
---@param x number The double to write
function StringStream:writeDouble(x) end

--- Reads an unsigned 32 bit (four byte) integer from the byte stream and advances the buffer pointer.
---@return number # UInt32 at this position
function StringStream:readUInt32() end

--- Writes a byte to the buffer and advances the buffer pointer.
---@param x number Int8 to write
function StringStream:writeInt8(x) end

--- Writes a unsigned long to the buffer and advances the buffer pointer.
---@param x number UInt32 to write
function StringStream:writeUInt32(x) end

--- Reads until the given byte and advances the buffer pointer.
---@param byte number The byte to read until (in number form)
---@return string # The string of bytes read
function StringStream:readUntil(byte) end

--- Writes a 4 byte IEEE754 float to the byte stream and advances the buffer pointer.
---@param x number The float to write
function StringStream:writeFloat(x) end
