---@meta

joystick = {}

--- Gets the pov data value.
---@param enum number # Joystick number. Starts at 0
---@param pov number # Joystick pov number. Ranges from 0 to 7.
---@return number # 0 - 65535 where 32767 is the middle.
function joystick.getPov(enum, pov) end

--- Gets the number of detected buttons on a joystick
---@param enum number # Joystick number. Starts at 0
---@return number # Number of buttons
function joystick.numButtons(enum) end

--- Gets the hardware name of the joystick
---@param enum number # Joystick number. Starts at 0
---@return string # Name of the device
function joystick.getName(enum) end

--- Gets the axis data value.
---@param enum number # Joystick number. Starts at 0
---@param axis number # Joystick axis number. Ranges from 0 to 7.
---@return number # 0 - 65535 where 32767 is the middle.
function joystick.getAxis(enum, axis) end

--- Gets the number of detected joysticks.
---@return number # Number of joysticks
function joystick.numJoysticks() end

--- Returns if the button is pushed or not
---@param enum number # Joystick number. Starts at 0
---@param button number # Joystick button number. Starts at 0
---@return number # 0 or 1
function joystick.getButton(enum, button) end

--- Gets the number of detected axes on a joystick
---@param enum number # Joystick number. Starts at 0
---@return number # Number of axes
function joystick.numAxes(enum) end

--- Gets the number of detected povs on a joystick
---@param enum number # Joystick number. Starts at 0
---@return number # Number of povs
function joystick.numPovs(enum) end

