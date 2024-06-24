---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Notification library. Allows the user to display hints on the bottom right of their screen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/notification.lua#L9).
notification = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Displays a standard notification.
---NOTIFY.GENERIC.
---NOTIFY.ERROR.
---NOTIFY.UNDO.
---NOTIFY.HINT.
---NOTIFY.CLEANUP.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/notification.lua#L28).
---@param text string # The text to display
---@param type number # Determines the notification method.
---@param length number # Time in seconds to display the notification (Max length of 30)
function notification.addLegacy(text, type, length) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Displays a notification with an animated progress bar, will persist unless killed or chip is removed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/notification.lua#L51).
---@param id string # String index of the notification
---@param text string # The text to display
function notification.addProgress(id, text) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Removes the notification with the given index after 0.8 seconds.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/notification.lua#L79).
---@param id string # String index of the notification to kill
function notification.kill(id) end
