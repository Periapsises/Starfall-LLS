---@meta

---@class WebSocket
local WebSocket = {}

--- Connects to the websocket server.
function WebSocket:connect() end

--- Closes the websocket connection. Does nothing if already closed
function WebSocket:close() end

--- Sets a callback for the websocket.
--- Can be used with the following callbacks:
--- * onMessage - Called when a message is received.
--- * onConnected - Called when the websocket initially connects.
--- * onDisconnected - Called when the websocket is disconnected, with the only param being if it was caused by an 'error' event.
---@param k string onMessage, onConnected, onDisconnected
---@param v function The callback function, which will be called with the websocket as the first argument.
function WebSocket:__newindex(k, v) end

--- Sends a message to the connected websocket stream.
---@param msg string What to send
function WebSocket:write(msg) end

--- Returns "WebSocket: " alongside the address of the websocket.
function WebSocket:__tostring() end

--- Returns the current state of the websocket.
--- https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/readyState
--- * 0 - CONNECTING
--- * 1 - OPEN
--- * 2 - CLOSING
--- * 3 - CLOSED
---@return number # The current state of the websocket.
function WebSocket:getState() end
