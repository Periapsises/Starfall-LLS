---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Input library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L180).
input = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the player's control can be locked.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L385).
---@return boolean # Whether the player's control can be locked
function input.canLockControls() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the state of the mouse cursor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L331).
---@param enabled boolean # Whether or not the cursor should be enabled
function input.enableCursor(enabled) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the position of the mouse.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L300).
---@return number # The x position of the mouse
---@return number # The y position of the mouse
function input.getCursorPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the cursor is visible on the screen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L310).
---@return boolean # The cursor's visibility
function input.getCursorVisible() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the name of a key from the id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L270).
---@param key number # The key id, see input
---@return string # The name of the key
function input.getKeyName(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the control key is down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L291).
---@return boolean # True if the control key is down
function input.isControlDown() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the player's control is currently locked.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L378).
---@return boolean # Whether the player's control is locked
function input.isControlLocked() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether a key is down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L245).
---@param key number # The key id, see input
---@return boolean # True if the key is down
function input.isKeyDown(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether a mouse button is down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L258).
---@param key number # The mouse button id, see input
---@return boolean # True if the key is down
function input.isMouseDown(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the shift key is down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L282).
---@return boolean # True if the shift key is down
function input.isShiftDown() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Locks game controls for typing purposes. Alt will unlock the controls. Has a 10 second cooldown.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L356).
---@param enabled boolean # Whether to lock or unlock the controls
function input.lockControls(enabled) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the first key that is bound to the command passed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L217).
---@param binding string # The name of the bind
---@return number # The id of the first key bound
---@return string # The name of the first key bound
function input.lookupBinding(binding) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the command bound to a key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L235).
---@param key number # The key id, see input
---@return string # The command bound to the key
function input.lookupKeyBinding(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Translates position on player's screen to aim vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L319).
---@param x number # X coordinate on the screen
---@param y number # Y coordinate on the screen
---@return Vector # Aim vector
function input.screenToVector(x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Makes the local player select a weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/input.lua#L346).
---@param weapon Weapon # The weapon entity to select
function input.selectWeapon(weapon) end
