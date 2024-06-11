---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Joystick library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L14).
joystick = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the axis data value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L25).
---@param enum number # Joystick number. Starts at 0
---@param axis number # Joystick axis number. Ranges from 0 to 7.
---@return number # 0 - 65535 where 32767 is the middle.
function joystick.getAxis(enum, axis) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the button is pushed or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L43).
---@param enum number # Joystick number. Starts at 0
---@param button number # Joystick button number. Starts at 0
---@return number # 0 or 1
function joystick.getButton(enum, button) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the hardware name of the joystick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L52).
---@param enum number # Joystick number. Starts at 0
---@return string # Name of the device
function joystick.getName(enum) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the pov data value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L34).
---@param enum number # Joystick number. Starts at 0
---@param pov number # Joystick pov number. Ranges from 0 to 7.
---@return number # 0 - 65535 where 32767 is the middle.
function joystick.getPov(enum, pov) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the number of detected axes on a joystick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L66).
---@param enum number # Joystick number. Starts at 0
---@return number # Number of axes
function joystick.numAxes(enum) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the number of detected buttons on a joystick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L82).
---@param enum number # Joystick number. Starts at 0
---@return number # Number of buttons
function joystick.numButtons(enum) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the number of detected joysticks.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L60).
---@return number # Number of joysticks
function joystick.numJoysticks() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the number of detected povs on a joystick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/joystick.lua#L74).
---@param enum number # Joystick number. Starts at 0
---@return number # Number of povs
function joystick.numPovs(enum) end

