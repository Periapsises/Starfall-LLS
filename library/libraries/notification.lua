---@meta

notification = {}

--- Removes the notification with the given index after 0.8 seconds
---@param id string # String index of the notification to kill
function notification.kill(id) end

--- Displays a notification with an animated progress bar, will persist unless killed or chip is removed.
---@param id string # String index of the notification
---@param text string # The text to display
function notification.addProgress(id, text) end

--- Displays a standard notification.
---NOTIFY.GENERIC
---NOTIFY.ERROR
---NOTIFY.UNDO
---NOTIFY.HINT
---NOTIFY.CLEANUP
---@param text string # The text to display
---@param type number # Determines the notification method.
---@param length number # Time in seconds to display the notification (Max length of 30)
function notification.addLegacy(text, type, length) end
