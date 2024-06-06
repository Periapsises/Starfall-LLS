---@meta

bass = {}

--- Returns the number of sounds left that can be created.
---@return number # The number of sounds left.
function bass.soundsLeft() end

--- Loads a sound as a Bass object from a URL.
--- 2D sounds require a HUD connection.
---@param path string # URL path to play from.
---@param flags string # Flags for the sound (`3d`, `mono`, `noplay`, `noblock`). noblock will fail if the webserver doesn't provide file length.
---@param callback function # Function which is called when the sound is loaded. It'll get 3 arguments: `Bass` object, error number and name.
function bass.loadURL(path, flags, callback) end

--- Loads a sound as a Bass object from a file.
--- 2D sounds require a HUD connection.
---@param path string # File path to play from.
---@param flags string # Flags for the sound (`3d`, `mono`, `noplay`, `noblock`).
---@param callback function # Function which is called when the sound is loaded. It'll get 3 arguments: `Bass` object, error number and name.
function bass.loadFile(path, flags, callback) end

