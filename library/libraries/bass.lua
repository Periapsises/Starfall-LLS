---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- `bass` library is intended to be used only on client side. It's good for streaming local and remote sound files and playing them directly in player's "2D" context.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L123).
bass = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Loads a sound as a Bass object from a file.
--- 2D sounds require a HUD connection.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L194).
---@param path string # File path to play from.
---@param flags string # Flags for the sound (`3d`, `mono`, `noplay`, `noblock`).
---@param callback function # Function which is called when the sound is loaded. It'll get 3 arguments: `Bass` object, error number and name.
function bass.loadFile(path, flags, callback) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Loads a sound as a Bass object from a URL.
--- 2D sounds require a HUD connection.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L212).
---@param path string # URL path to play from.
---@param flags string # Flags for the sound (`3d`, `mono`, `noplay`, `noblock`). noblock will fail if the webserver doesn't provide file length.
---@param callback function # Function which is called when the sound is loaded. It'll get 3 arguments: `Bass` object, error number and name.
function bass.loadURL(path, flags, callback) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the number of sounds left that can be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L230).
---@return number # The number of sounds left.
function bass.soundsLeft() end
