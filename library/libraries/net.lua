---@meta

net = {}

--- Streams up to 64MB strings. Anything over 20MB with compression enabled will throw cpu quota
---@param str string # The string to be written
---@param compress boolean? # Compress the data. True by default
function net.writeStream(str, compress) end

--- Reads a boolean from the net message
---@return boolean # The boolean that was read.
function net.readBool() end

--- Writes string containing null characters to the net message
---@param t string # The string to be written
---@param n number # How much of the string to write
function net.writeData(t, n) end

--- Writes an object to a net message automatically typing it
---@param v any # The object to write
function net.writeType(v) end

--- Reads an unsigned integer from the net message
---@param n number # The amount of bits to read
---@return number # The unsigned integer that was read
function net.readUInt(n) end

--- Writes a boolean to the net message
---@param t boolean # The bit to be written.
function net.writeBool(t) end

--- Reads an angle from the net message
---@return Angle # The angle that was read
function net.readAngle() end

--- Reads a string from the net message
---@param n number # How many characters are in the data
---@return string # The string that was read
function net.readData(n) end

--- Writes an matrix to the net message
---@param t VMatrix # The matrix to be written
function net.writeMatrix(t) end

--- Cancels a currently running readStream
function net.cancelStream() end

--- Send net message to all players within the visible area of a vector
---@param pos Vector # A vector within the PVS area to send a message
---@param unreliable boolean? # Optional choose whether it's more important for the message to actually reach its destination (false) or reach it as fast as possible (true).
function net.sendPVS(pos, unreliable) end

--- Returns the progress of a running readStream
---@return number # The progress ratio 0-1
function net.getStreamProgress() end

--- Send a net message from client->server, or server->client.
---@param target Player|table|nil # Optional target location to send the net message. Player or table of targets. If nil, sends to server on client
---@param unreliable boolean? # Optional choose whether it's more important for the message to actually reach its destination (false) or reach it as fast as possible (true).
function net.send(target, unreliable) end

--- Reads a float from the net message
---@return number # The float that was read
function net.readFloat() end

--- Reads a double from the net message
---@return number # The double that was read
function net.readDouble() end

--- Starts the net message
---@param name string # The message name
function net.start(name) end

--- Returns available bandwidth in bytes
---@return number # Number of bytes that can be sent
function net.getBytesLeft() end

--- Returns available bandwidth in bits
---@return number # Number of bits that can be sent
function net.getBitsLeft() end

--- Reads an integer from the net message
---@param n number # The amount of bits to read
---@return number # The integer that was read
function net.readInt(n) end

--- Returns whether or not the library is currently reading data from a stream
---@return boolean # Whether we're currently reading data from a stream
function net.isStreaming() end

--- Like glua net.Receive, adds a callback that is called when a net message with the matching name is received. If this happens, the net hook won't be called.
---@param name string # The name of the net message
---@param func function # The callback or nil to remove callback. (len - length of the net message, ply - player that sent it or nil if clientside)
function net.receive(name, func) end

--- Writes a bit to the net message
---@param t number # The bit to be written. (0 for false, 1 (or anything) for true)
function net.writeBit(t) end

--- Writes a string to the net message. Null characters will terminate the string.
---@param t string # The string to be written
function net.writeString(t) end

--- Reads a large string stream from the net message.
---@param cb function # Callback to run when the stream is finished. The first parameter in the callback is the data. Will be nil if transfer fails or is cancelled
function net.readStream(cb) end

--- Writes an color to the net message
---@param t Color # The color to be written
function net.writeColor(t) end

--- Reads a bit from the net message
---@return number # The bit that was read. (0 for false, 1 for true)
function net.readBit() end

--- Reads an object from a net message automatically typing it
--- Will throw an error if invalid type is read. Make sure to pcall it
---@return any # The object
function net.readType() end

--- Reads a entity from the net message
---@param callback function? # (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
---@return Entity # The entity that was read
function net.readEntity(callback) end

--- Reads an table from a net message automatically typing it
--- Will throw an error if invalid type is read. Make sure to pcall it
---@return table # The table
function net.readTable() end

--- Writes an unsigned integer to the net message
---@param t number # The integer to be written
---@param n number # The amount of bits the integer consists of. Should not be greater than 32
function net.writeUInt(t, n) end

--- Reads a matrix from the net message
---@return VMatrix # The matrix that was read
function net.readMatrix() end

--- Writes a double to the net message
---@param t number # The double to be written
function net.writeDouble(t) end

--- Writes a table to a net message automatically typing it.
---@param v table # The table to write
function net.writeTable(v) end

--- Reads a string from the net message
---@return string # The string that was read
function net.readString() end

--- Reads a color from the net message
---@return Color # The color that was read
function net.readColor() end

--- Writes an integer to the net message
---@param t number # The integer to be written
---@param n number # The amount of bits the integer consists of
function net.writeInt(t, n) end

--- Writes an entity to the net message
---@param t Entity # The entity to be written
function net.writeEntity(t) end

--- Reads a vector from the net message
---@return Vector # The vector that was read
function net.readVector() end

--- Writes an vector to the net message. Has significantly lower precision than writeFloat
---@param t Vector # The vector to be written
function net.writeVector(t) end

--- Writes an angle to the net message
---@param t Angle # The angle to be written
function net.writeAngle(t) end

--- Writes a float to the net message
---@param t number # The float to be written
function net.writeFloat(t) end

