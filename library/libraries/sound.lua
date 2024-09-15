---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sound library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L19).
sound = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if a sound is able to be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L99).
---@return boolean # If it is possible to make a sound
function sound.canCreate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if a sound is able to be emitted from an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L302).
---@return boolean # If it is possible to emit a sound
function sound.canEmitSound() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a sound and attaches it to an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L70).
---@param ent Entity # Entity to attach sound to.
---@param path string # Filepath to the sound file.
---@param nofilter boolean? # (Optional) Boolean Make the sound play for everyone regardless of range or location. Only affects Server-side sounds.
---@return Sound # Sound Object
function sound.create(ent, path, nofilter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the sound duration in seconds. May not work for all file-types on linux/macos.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L111).
---@param path string # String path to the sound file
---@return number # Number duration in seconds
function sound.duration(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of sound emits left.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L308).
---@return number # The number of sounds left
function sound.emitSoundsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of sounds left that can be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L105).
---@return number # The number of sounds left
function sound.soundsLeft() end
