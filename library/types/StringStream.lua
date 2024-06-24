---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- StringStream type.
---@class StringStream
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L11).
local StringStream = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the buffer as a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L549).
---@return string # The buffer as a string
function StringStream:getString() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads the specified number of bytes from the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L224).
---@param length number # How many bytes to read
---@return string # A string containing the bytes
function StringStream:read(length) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a 8 byte IEEE754 double from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L394).
---@return number # Double at this position
function StringStream:readDouble() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an entity from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L530).
---@param callback function? # (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
---@return Entity # The entity that was read
function StringStream:readEntity(callback) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a 4 byte IEEE754 float from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L384).
---@return number # Float32 at this position
function StringStream:readFloat() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a signed 16-bit (two byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L368).
---@return number # Int16 at this position
function StringStream:readInt16() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a signed 32-bit (four byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L376).
---@return number # Int32 at this position
function StringStream:readInt32() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a signed 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L360).
---@return number # Int8 at this position
function StringStream:readInt8() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a null terminated string, reads until "\x00" and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L434).
---@return string # The string of bytes read
function StringStream:readString() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an unsigned 16 bit (two byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L338).
---@return number # UInt16 at this position
function StringStream:readUInt16() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an unsigned 32 bit (four byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L349).
---@return number # UInt32 at this position
function StringStream:readUInt32() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an unsigned 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L329).
---@return number # UInt8 at this position
function StringStream:readUInt8() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads until the given byte and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L404).
---@param byte number # The byte to read until (in number form)
---@return string # The string of bytes read
function StringStream:readUntil(byte) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets internal pointer to pos. The position will be clamped to [1, buffersize+1].
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L254).
---@param pos number # Position to seek to
function StringStream:seek(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the endianness of the string stream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L179).
---@param endian string # The endianness of number types. "big" or "little" (default "little")
function StringStream:setEndian(endian) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Tells the size of the byte stream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L319).
---@return number # The buffer size
function StringStream:size() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Move the internal pointer by amount i.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L272).
---@param length number # The offset
function StringStream:skip(length) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the internal position of the byte reader.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L309).
---@return number # The buffer position
function StringStream:tell() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes the given string and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L191).
---@param data string # A string of data to write
function StringStream:write(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a 8 byte IEEE754 double to the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L503).
---@param x number # The double to write
function StringStream:writeDouble(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an entity to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L520).
---@param e Entity # The entity to be written
function StringStream:writeEntity(e) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a 4 byte IEEE754 float to the byte stream and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L493).
---@param x number # The float to write
function StringStream:writeFloat(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a short to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L455).
---@param x number # Int16 to write
function StringStream:writeInt16(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an int to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L474).
---@param x number # Int32 to write
function StringStream:writeInt32(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a byte to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L441).
---@param x number # Int8 to write
function StringStream:writeInt8(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a string to the buffer putting a null at the end and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L513).
---@param str string # The string of bytes to write
function StringStream:writeString(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a unsigned short to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L468).
---@param x number # UInt16 to write
function StringStream:writeUInt16(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a unsigned long to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L487).
---@param x number # UInt32 to write
function StringStream:writeUInt32(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a unsigned byte to the buffer and advances the buffer pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/bit.lua#L449).
---@param x number # UInt8 to write
function StringStream:writeUInt8(x) end
