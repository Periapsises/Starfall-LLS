---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- A simpler, hook-based, and more-powerful controller input library. Inputs are not lost between rendered frames, and there is support for rumble. Note: the client must have the XInput lua binary module installed in order to access this library. See more at https://github.com/mitterdoo/garrysmod-xinput.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L60).
xinput = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Attempts to check the battery level of the controller.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L119).
---@param id number # Controller number. Starts at 0
---@return number|boolean # If successful: a number between 0.0-1.0 inclusive.
---@return string? # If last return was a false boolean (errored), this will be the error message.
function xinput.getBatteryLevel(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the button on the controller is currently pushed down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L94).
---@param id number # Controller number. Starts at 0
---@param button number # The button to check for. See https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad_
---@return boolean #
function xinput.getButton(id, button) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets all of the connected controllers.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L127).
---@return table # A table where each key is the ID of the controller that is connected. Disconnected controllers are not placed in the table.
function xinput.getControllers() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the state of the controller.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L87).
---@param id number # Controller number. Starts at 0
---@return table # Table containing all input data of the controller, or false if the controller is not connected. The table uses this struct: https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad
function xinput.getState(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the current coordinates of the stick on the controller.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L110).
---@param id number # Controller number. Starts at 0
---@param stick number # Which stick to use. 0 is left
---@return number # X Coordinate, Between -32768 - 32767 inclusive
---@return number # Y Coordinate, Between -32768 - 32767 inclusive
function xinput.getStick(id, stick) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the current position of the trigger on the controller.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L102).
---@param id number # Controller number. Starts at 0
---@param trigger number # Which trigger to use. 0 is left
---@return number # 0-255 inclusive
function xinput.getTrigger(id, trigger) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the rumble on the controller.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/xinput.lua#L133).
---@param id number # Controller number. Starts at 0
---@param softPercent number # A number between 0.0-1.0 for how much the soft rumble motor should vibrate.
---@param hardPercent number # A number between 0.0-1.0 for how much the hard rumble motor should vibrate.
function xinput.setRumble(id, softPercent, hardPercent) end
