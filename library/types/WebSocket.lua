---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Websocket Type. Create a websocket with WebSocket(...).
---@class WebSocket
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L97).
local WebSocket = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a callback for the websocket.
--- Can be used with the following callbacks:.
--- * onMessage - Called when a message is received.
--- * onConnected - Called when the websocket initially connects.
--- * onDisconnected - Called when the websocket is disconnected, with the only param being if it was caused by an 'error' event.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L159).
---@param k string # onMessage, onConnected, onDisconnected
---@param v function # The callback function, which will be called with the websocket as the first argument.
function WebSocket:__newindex(k, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns "WebSocket: " alongside the address of the websocket.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L180).
function WebSocket:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Closes the websocket connection. Does nothing if already closed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L132).
function WebSocket:close() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Connects to the websocket server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L143).
function WebSocket:connect() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current state of the websocket.
--- https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/readyState.
--- * 0 - CONNECTING.
--- * 1 - OPEN.
--- * 2 - CLOSING.
--- * 3 - CLOSED.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L148).
---@return number # The current state of the websocket.
function WebSocket:getState() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sends a message to the connected websocket stream.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/websocket.lua#L137).
---@param msg string # What to send
function WebSocket:write(msg) end
