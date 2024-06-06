---@meta

midi = {}

--- Grabs the midi command code from the command.
---@param command number # the command
---@return number # the command code
function midi.getCode(command) end

--- Closes the specified midi port.
---@param port number # the midi port to close.
---@return string # the name of the midi device closed at the given port.
function midi.closePort(port) end

--- Grabs the command code in a readable name.
---@param command number # the command
---@return string # command name
function midi.getName(command) end

--- Closes all midi ports.
function midi.closeAllPorts() end

--- Gets a table of all midi devices' ports.
---@return table # the table of midi ports.  Starts at index 0
function midi.getPorts() end

--- Grabs the midi channel from the command.
---@param command number # the command
---@return number # the midi channel
function midi.getChannel(command) end

--- Opens the midi port to make it available to grab events from.  This must be called before the hook.
---@param port number # the midi port to open. Passing nothing defaults to 0.
---@return string # the name of the midi device opened at the given port.
function midi.openPort(port) end

--- Checks if the specified midi port is currently opened.
---@return boolean # if the port is open
function midi.isPortOpen() end

midi.MIDI = {}
---@type number
midi.MIDI["NOTE_OFF"] = nil
---@type number
midi.MIDI["NOTE_ON"] = nil
---@type number
midi.MIDI["AFTERTOUCH"] = nil
---@type number
midi.MIDI["CONTINUOUS_CONTROLLER"] = nil
---@type number
midi.MIDI["PATCH_CHANGE"] = nil
---@type number
midi.MIDI["CHANNEL_PRESSURE"] = nil
---@type number
midi.MIDI["PITCH_BEND"] = nil

