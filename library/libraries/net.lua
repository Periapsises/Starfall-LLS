---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Net message library. Used for sending data from the server to the client and back.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L35).
net = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Cancels a currently running readStream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L260).
function net.cancelStream() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns available bandwidth in bits.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L506).
---@return number # Number of bits that can be sent
function net.getBitsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns available bandwidth in bytes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L500).
---@return number # Number of bytes that can be sent
function net.getBytesLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the progress of a running readStream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L267).
---@return number # The progress ratio 0-1
function net.getStreamProgress() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the library is currently reading data from a stream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L512).
---@return boolean # Whether we're currently reading data from a stream
function net.isStreaming() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an angle from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L403).
---@return Angle # The angle that was read
function net.readAngle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a bit from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L332).
---@return number # The bit that was read. (0 for false, 1 for true)
function net.readBit() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a boolean from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L350).
---@return boolean # The boolean that was read.
function net.readBool() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a color from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L455).
---@return Color # The color that was read
function net.readColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a string from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L218).
---@param n number # How many characters are in the data
---@return string # The string that was read
function net.readData(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a double from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L368).
---@return number # The double that was read
function net.readDouble() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a entity from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L472).
---@param callback function? # (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
---@return Entity # The entity that was read
function net.readEntity(callback) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a float from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L386).
---@return number # The float that was read
function net.readFloat() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an integer from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L289).
---@param n number # The amount of bits to read
---@return number # The integer that was read
function net.readInt(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a matrix from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L438).
---@return VMatrix # The matrix that was read
function net.readMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a large string stream from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L239).
---@param cb function # Callback to run when the stream is finished. The first parameter in the callback is the data. Will be nil if transfer fails or is cancelled
function net.readStream(cb) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a string from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L197).
---@return string # The string that was read
function net.readString() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an table from a net message automatically typing it.
--- Will throw an error if invalid type is read. Make sure to pcall it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L178).
---@return table # The table
function net.readTable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an object from a net message automatically typing it.
--- Will throw an error if invalid type is read. Make sure to pcall it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L158).
---@return any # The object
function net.readType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads an unsigned integer from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L312).
---@param n number # The amount of bits to read
---@return number # The unsigned integer that was read
function net.readUInt(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reads a vector from the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L420).
---@return Vector # The vector that was read
function net.readVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Like glua net.Receive, adds a callback that is called when a net message with the matching name is received. If this happens, the net hook won't be called.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L490).
---@param name string # The name of the net message
---@param func function # The callback or nil to remove callback. (len - length of the net message, ply - player that sent it or nil if clientside)
function net.receive(name, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Send a net message from client->server, or server->client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L92).
---@param target Player|table|nil # Optional target location to send the net message. Player or table of targets. If nil, sends to server on client
---@param unreliable boolean? # Optional choose whether it's more important for the message to actually reach its destination (false) or reach it as fast as possible (true).
function net.send(target, unreliable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Send net message to all players within the visible area of a vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L130).
---@param pos Vector # A vector within the PVS area to send a message
---@param unreliable boolean? # Optional choose whether it's more important for the message to actually reach its destination (false) or reach it as fast as possible (true).
function net.sendPVS(pos, unreliable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Starts the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L78).
---@param name string # The message name
function net.start(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an angle to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L393).
---@param t Angle # The angle to be written
function net.writeAngle(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a bit to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L321).
---@param t number # The bit to be written. (0 for false, 1 (or anything) for true)
function net.writeBit(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a boolean to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L339).
---@param t boolean # The bit to be written.
function net.writeBool(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an color to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L447).
---@param t Color # The color to be written
function net.writeColor(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes string containing null characters to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L204).
---@param t string # The string to be written
---@param n number # How much of the string to write
function net.writeData(t, n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a double to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L357).
---@param t number # The double to be written
function net.writeDouble(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an entity to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L462).
---@param t Entity # The entity to be written
function net.writeEntity(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a float to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L375).
---@param t number # The float to be written
function net.writeFloat(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an integer to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L275).
---@param t number # The integer to be written
---@param n number # The amount of bits the integer consists of
function net.writeInt(t, n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an matrix to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L427).
---@param t VMatrix # The matrix to be written
function net.writeMatrix(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Streams up to 64MB strings. Anything over 20MB with compression enabled will throw cpu quota.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L228).
---@param str string # The string to be written
---@param compress boolean? # Compress the data. True by default
function net.writeStream(str, compress) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a string to the net message. Null characters will terminate the string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L186).
---@param t string # The string to be written
function net.writeString(t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes a table to a net message automatically typing it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L166).
---@param v table # The table to write
function net.writeTable(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an object to a net message automatically typing it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L147).
---@param v any # The object to write
function net.writeType(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an unsigned integer to the net message.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L298).
---@param t number # The integer to be written
---@param n number # The amount of bits the integer consists of. Should not be greater than 32
function net.writeUInt(t, n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes an vector to the net message. Has significantly lower precision than writeFloat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/net.lua#L410).
---@param t Vector # The vector to be written
function net.writeVector(t) end
