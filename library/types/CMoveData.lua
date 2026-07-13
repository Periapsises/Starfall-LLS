---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- CMoveData is only valid in the Move hook, you can't store them.
---@class CMoveData
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L11).
local CMoveData = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets which buttons are down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L117).
---@return number # The button bitflag
function CMoveData:getButtons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the aim angle. On client is the same as Entity:getAngles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L111).
---@return Angle # The aim angle
function CMoveData:getEyeAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the players forward speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L123).
---@return number # The forward speed
function CMoveData:getForwardSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the number passed to "impulse" console command.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L129).
---@return number # The impulse
function CMoveData:getImpulse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the maximum client speed of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L135).
---@return number # The max speed
function CMoveData:getMaxClientSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the maximum speed of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L141).
---@return number # The max speed
function CMoveData:getMaxSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get which buttons were down last frame.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L147).
---@return number # The button bitflag
function CMoveData:getOldButtons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the player's position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L153).
---@return Vector # The player's position
function CMoveData:getOrigin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the strafe speed of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L159).
---@return number # The strafe speed
function CMoveData:getSideSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vertical speed of the player. ( Z axis of CMoveData:getVelocity ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L165).
---@return number # The vertical speed
function CMoveData:getUpSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the players velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L171).
---@return Vector # The player's velocity
function CMoveData:getVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the key is down or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L177).
---@param buttons number # The button(s) to check, see https://wiki.facepunch.com/gmod/Enums/IN for the button enums
---@return boolean # true if the button(s) is down, false if not
function CMoveData:keyDown(buttons) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the key was down or not. Unlike CMoveData:keyDown, it will return false if CMoveData:keyPressed is true and it will return true if CMoveData:keyReleased is true.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L198).
---@param buttons number # The button(s) to check, see https://wiki.facepunch.com/gmod/Enums/IN for the button enums
---@return boolean # true if the button(s) is down, false if not
function CMoveData:keyDownLast(buttons) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the key was pressed. If you want to check if the key is held down, try CMoveData:keyDown instead.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L184).
---@param buttons number # The button(s) to check, see https://wiki.facepunch.com/gmod/Enums/IN for the button enums
---@return boolean # true if the button(s) was pressed, false if not
function CMoveData:keyPressed(buttons) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the key was released.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L191).
---@param buttons number # The button(s) to check, see https://wiki.facepunch.com/gmod/Enums/IN for the button enums
---@return boolean # true if the button(s) was released, false if not
function CMoveData:keyReleased(buttons) end
