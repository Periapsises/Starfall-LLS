---@meta

sound = {}

--- Returns if a sound is able to be created
---@return boolean # If it is possible to make a sound
function sound.canCreate() end

--- Returns if a sound is able to be emitted from an entity
---@return boolean # If it is possible to emit a sound
function sound.canEmitSound() end

--- Returns the number of sound emits left
---@return number # The number of sounds left
function sound.emitSoundsLeft() end

--- Returns the sound duration in seconds. May not work for all file-types on linux/macos
---@param path string # String path to the sound file
---@return number # Number duration in seconds
function sound.duration(path) end

--- Creates a sound and attaches it to an entity
---@param ent Entity # Entity to attach sound to.
---@param path string # Filepath to the sound file.
---@param nofilter boolean? # (Optional) Boolean Make the sound play for everyone regardless of range or location. Only affects Server-side sounds.
---@return Sound # Sound Object
function sound.create(ent, path, nofilter) end

--- Returns the number of sounds left that can be created
---@return number # The number of sounds left
function sound.soundsLeft() end

