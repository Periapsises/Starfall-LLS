---@meta

bit = {}

--- Returns the left rotated value.
---@param value number # The value to be manipulated.
---@param shiftCount number # Amounts of bits to rotate left by.
---@return number # Left rotated value
function bit.rol(value, shiftCount) end

--- Returns the right rotated value.
---@param value number # The value to be manipulated.
---@param shiftCount number # Amounts of bits to rotate right by.
---@return number # Right rotated value
function bit.ror(value, shiftCount) end

--- Performs the bitwise "and" for all values specified.
---@param value number # The value to be manipulated.
---@param otherValues ...number # Values bit to perform bitwise "and" with. Optional.
---@return number # Result of bitwise "and" operation.
function bit.band(value, otherValues) end

--- Returns the bitwise OR of all values specified.
---@param value1 number # The first value.
---@param Extra ...number # values to be evaluated. (must all be numbers)
---@return number # The bitwise OR result between all numbers.
function bit.bor(value1, Extra) end

--- Returns the bitwise xor of all values specified.
---@param value number # The value to be manipulated.
---@param otherValues ...number # Values to bit xor with. Optional.
---@return number # Return value of bitwiseXOr operation
function bit.bxor(value, otherValues) end

--- Returns the hexadecimal representation of the number with the specified digits.
---@param value number # The value to be normalized.
---@param digits number? # The number of digits. Optional. (default 8)
---@return string # Hex string.
function bit.tohex(value, digits) end

--- Generates the MD5 Checksum of the specified string.
---@param s string # The string to calculate the checksum of.
---@return string # The MD5 hex string of the checksum.
function bit.md5(s) end

--- Compresses a string using LZMA.
---@param s string # String to compress
---@return string? # Compressed string, or nil if compression failed
function bit.compress(s) end

--- Converts serialized string data to table
---@param s string # The serialized string data
---@return table # The deserialized table
function bit.stringToTable(s) end

--- Converts a table to string serializing data types as best as it can
---@param t table # The table to serialize
---@return string # Serialized data
function bit.tableToString(t) end

--- Decompresses a string using LZMA.
--- XZ Utils will always produce streamed (i.e. the decompressed size is not specified in the header) LZMA data. If you're trying to compress data from outside of GMod and then decompress it inside of GMod, it probably won't work unless you use the older, deprecated 'LZMA Utils', or util.Compress.
---@param s string # String to decompress
---@param maxSize number? # Maximum allowed size of decompressed data
---@return string? # Decompressed string, or nil if decompression failed
function bit.decompress(s, maxSize) end

--- Creates a StringStream object
---@param stream string? # String to set the initial buffer to (default "")
---@param i number? # The initial buffer pointer (default 1)
---@param endian string? # The endianness of number types. "big" or "little" (default "little")
---@return StringStream # StringStream object
function bit.stringstream(stream, i, endian) end

--- Generates the SHA-1 Checksum of the specified string.
---@param s string # The string to calculate the checksum of.
---@return string # The SHA-1 hex string of the checksum.
function bit.sha1(s) end

--- Generates the SHA-256 Checksum of the specified string.
---@param s string # The string to calculate the checksum of.
---@return string # The SHA-256 hex string of the checksum.
function bit.sha256(s) end

--- Normalizes the specified value and clamps it in the range of a signed 32bit integer.
---@param value number # The value to be normalized.
---@return number # Bit swapped value
function bit.tobit(value) end

--- Returns the bitwise not of the value.
---@param value number # The value to be inverted.
---@return number # Return value of bitwise not operation
function bit.bnot(value) end

--- Swaps the byte order.
---@param value number # The value to be byte swapped.
---@return number # Bit swapped value
function bit.bswap(value) end

--- Returns the left shifted value.
---@param value number # The value to be manipulated.
---@param shiftCount number # Amounts of bits to shift left by.
---@return number # Return of bitwise lshift operation
function bit.lshift(value, shiftCount) end

--- Returns the right shifted value.
---@param value number # The value to be manipulated.
---@param shiftCount number # Amounts of bits to shift right by.
---@return number # Right shifted value
function bit.rshift(value, shiftCount) end

--- Returns the arithmetically shifted value.
---@param value number # The value to be manipulated.
---@param shiftCount number # Amount of bits to shift
---@return number # shiftedValue
function bit.arshift(value, shiftCount) end

