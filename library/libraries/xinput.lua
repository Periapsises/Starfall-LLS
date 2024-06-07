---@meta

xinput = {}

--- Gets whether the button on the controller is currently pushed down.
---@param id number # Controller number. Starts at 0
---@param button number # The button to check for. See https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad_
---@return boolean #
function xinput.getButton(id, button) end

--- Gets the current coordinates of the stick on the controller.
---@param id number # Controller number. Starts at 0
---@param stick number # Which stick to use. 0 is left
---@return number # X Coordinate, Between -32768 - 32767 inclusive
---@return number # Y Coordinate, Between -32768 - 32767 inclusive
function xinput.getStick(id, stick) end

--- Gets all of the connected controllers.
---@return table # A table where each key is the ID of the controller that is connected. Disconnected controllers are not placed in the table.
function xinput.getControllers() end

--- Attempts to check the battery level of the controller.
---@param id number # Controller number. Starts at 0
---@return number|boolean # If successful: a number between 0.0-1.0 inclusive.
---@return string? # If last return was a false boolean (errored), this will be the error message.
function xinput.getBatteryLevel(id) end

--- Gets the state of the controller.
---@param id number # Controller number. Starts at 0
---@return table # Table containing all input data of the controller, or false if the controller is not connected. The table uses this struct: https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad
function xinput.getState(id) end

--- Gets the current position of the trigger on the controller.
---@param id number # Controller number. Starts at 0
---@param trigger number # Which trigger to use. 0 is left
---@return number # 0-255 inclusive
function xinput.getTrigger(id, trigger) end

--- Sets the rumble on the controller.
---@param id number # Controller number. Starts at 0
---@param softPercent number # A number between 0.0-1.0 for how much the soft rumble motor should vibrate.
---@param hardPercent number # A number between 0.0-1.0 for how much the hard rumble motor should vibrate.
function xinput.setRumble(id, softPercent, hardPercent) end
