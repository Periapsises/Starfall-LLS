---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Midi Library.
--- Polls midi event information from midi devices.
--- Requires a custom binary -> https://github.com/FPtje/gmcl_midi/releases/tag/v0.2.0.
--- GNU/Linux and MacOS users will have to compile their own binaries.
--- Instructions here -> https://github.com/FPtje/gmcl_midi/blob/master/Compiling.md.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L5).
midi = {}

---@enum MIDI
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Midi Command ENUMS
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1194).
midi.MIDI = {
	NOTE_OFF = 1,
	NOTE_ON = 2,
	AFTERTOUCH = 3,
	CONTINUOUS_CONTROLLER = 4,
	PATCH_CHANGE = 5,
	CHANNEL_PRESSURE = 6,
	PITCH_BEND = 7,
}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Closes all midi ports.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L66).
function midi.closeAllPorts() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Closes the specified midi port.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L80).
---@param port number # the midi port to close.
---@return string # the name of the midi device closed at the given port.
function midi.closePort(port) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Grabs the midi channel from the command.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L94).
---@param command number # the command
---@return number # the midi channel
function midi.getChannel(command) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Grabs the midi command code from the command.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L87).
---@param command number # the command
---@return number # the command code
function midi.getCode(command) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Grabs the command code in a readable name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L101).
---@param command number # the command
---@return string # command name
function midi.getName(command) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets a table of all midi devices' ports.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L74).
---@return table # the table of midi ports.  Starts at index 0
function midi.getPorts() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Checks if the specified midi port is currently opened.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L59).
---@return boolean # if the port is open
function midi.isPortOpen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Opens the midi port to make it available to grab events from.  This must be called before the hook.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/midi.lua#L48).
---@param port number # the midi port to open. Passing nothing defaults to 0.
---@return string # the name of the midi device opened at the given port.
function midi.openPort(port) end
