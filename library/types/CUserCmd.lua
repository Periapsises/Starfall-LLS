---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- CUserCmd, only valid in the hooks that provide it, you can't store them.
---@class CUserCmd
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L4).
local CUserCmd = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a bitflag indicating which buttons are pressed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L33).
---@return number # The button bitflag
function CUserCmd:getButtons() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an increasing number representing the index of the user cmd.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L27).
---@return number # The command number
function CUserCmd:getCommandNumber() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the direction the player is looking in.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L81).
---@return Angle # The view angles
function CUserCmd:getEyeAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- The speed the client wishes to move forward with, negative if the clients wants to move backwards.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L39).
---@return number # The forward move speed
function CUserCmd:getForwardSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the current impulse from the client, usually 0. See impulses list https://developer.valvesoftware.com/wiki/Impulse and some GMod specific impulses https://gmodwiki.com/CUserCmd:GetImpulse.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L45).
---@return number # The impulse
function CUserCmd:getImpulse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the scroll delta as whole number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L51).
---@return number # The scroll delta
function CUserCmd:getMouseWheel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the delta of the angular horizontal mouse movement of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L57).
---@return number # The mouse X delta
function CUserCmd:getMouseX() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the delta of the angular vertical mouse movement of the player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L63).
---@return number # The mouse Y delta
function CUserCmd:getMouseY() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- The speed the client wishes to move sideways with, positive if it wants to move right, negative if it wants to move left.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L69).
---@return number # The side move speed
function CUserCmd:getSideSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns tick count since joining the server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L100).
---@return number # The amount of ticks passed since joining the server.
function CUserCmd:getTickCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- The speed the client wishes to move up with, negative if the clients wants to move down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L75).
---@return number # The up move speed
function CUserCmd:getUpSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening. This will never return true on the client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L87).
---@return boolean # true if the usercmd is faked, false if not
function CUserCmd:isForced() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the specified button(s) is pressed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/usercmd.lua#L93).
---@param buttons number # The button(s) to check, see https://wiki.facepunch.com/gmod/Enums/IN for the button enums
---@return boolean # true if the button(s) is pressed, false if not
function CUserCmd:keyDown(buttons) end
