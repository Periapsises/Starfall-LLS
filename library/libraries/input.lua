---@meta

input = {}

--- Makes the local player select a weapon
---@param weapon Weapon # The weapon entity to select
function input.selectWeapon(weapon) end

--- Gets whether a key is down
---@param key number # The key id, see input
---@return boolean # True if the key is down
function input.isKeyDown(key) end

--- Gets the first key that is bound to the command passed
---@param binding string # The name of the bind
---@return number # The id of the first key bound
---@return string # The name of the first key bound
function input.lookupBinding(binding) end

--- Gets the command bound to a key
---@param key number # The key id, see input
---@return string # The command bound to the key
function input.lookupKeyBinding(key) end

--- Gets whether the control key is down
---@return boolean # True if the control key is down
function input.isControlDown() end

--- Gets whether the player's control can be locked
---@return boolean # Whether the player's control can be locked
function input.canLockControls() end

--- Gets the name of a key from the id
---@param key number # The key id, see input
---@return string # The name of the key
function input.getKeyName(key) end

--- Gets the position of the mouse
---@return number # The x position of the mouse
---@return number # The y position of the mouse
function input.getCursorPos() end

--- Locks game controls for typing purposes. Alt will unlock the controls. Has a 10 second cooldown.
---@param enabled boolean # Whether to lock or unlock the controls
function input.lockControls(enabled) end

--- Gets whether the cursor is visible on the screen
---@return boolean # The cursor's visibility
function input.getCursorVisible() end

--- Gets whether a mouse button is down
---@param key number # The mouse button id, see input
---@return boolean # True if the key is down
function input.isMouseDown(key) end

--- Gets whether the player's control is currently locked
---@return boolean # Whether the player's control is locked
function input.isControlLocked() end

--- Gets whether the shift key is down
---@return boolean # True if the shift key is down
function input.isShiftDown() end

--- Translates position on player's screen to aim vector
---@param x number # X coordinate on the screen
---@param y number # Y coordinate on the screen
---@return Vector # Aim vector
function input.screenToVector(x, y) end

--- Sets the state of the mouse cursor
---@param enabled boolean # Whether or not the cursor should be enabled
function input.enableCursor(enabled) end
