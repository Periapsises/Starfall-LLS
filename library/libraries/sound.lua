---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sound library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L20).
sound = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if a sound is able to be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L100).
---@return boolean # If it is possible to make a sound
function sound.canCreate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if a sound is able to be emitted from an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L264).
---@return boolean # If it is possible to emit a sound
function sound.canEmitSound() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a sound and attaches it to an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L71).
---@param ent Entity # Entity to attach sound to.
---@param path string # Filepath to the sound file.
---@param nofilter boolean? # (Optional) Boolean Make the sound play for everyone regardless of range or location. Only affects Server-side sounds.
---@return Sound # Sound Object
function sound.create(ent, path, nofilter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the sound duration in seconds. May not work for all file-types on linux/macos.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L112).
---@param path string # String path to the sound file
---@return number # Number duration in seconds
function sound.duration(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Emits a sound not attached to any entity at the specified position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L276).
---@param snd string # Sound path
---@param position Vector # Where the sound originates from
---@param soundLevel number? # Default 75
---@param pitchPercent number? # Default 100
---@param volume number? # Default 1
---@param channel number? # Default CHAN_AUTO or CHAN_WEAPON for weapons
---@param dsp number? # Default 1 DSP preset
---@param nofilter boolean? # (Optional) Boolean Make the sound play for everyone regardless of range or location. Only affects Server-side sounds.
function sound.emitSound(snd, position, soundLevel, pitchPercent, volume, channel, dsp, nofilter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of sound emits left.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L270).
---@return number # The number of sounds left
function sound.emitSoundsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns true if the sound or sound property exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L120).
---@param path string # String path to the sound file
---@return boolean # True if exists, false if not
function sound.exists(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of sounds left that can be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L106).
---@return number # The number of sounds left
function sound.soundsLeft() end
