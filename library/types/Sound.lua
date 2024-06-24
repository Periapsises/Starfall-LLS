---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sound type.
---@class Sound
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L34).
local Sound = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes the sound from the game so new one can be created if limit is reached.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L133).
function Sound:destroy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the sound dsp value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L208).
---@return number # (0 - 133) DSP value.
function Sound:getDSP() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the current sound level in dB.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L195).
---@return number # Level in dB
function Sound:getSoundLevel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the sound is being played.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L182).
---@return boolean # Whether the sound is playing or not
function Sound:isPlaying() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Starts to play the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L117).
function Sound:play() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the sound dsp value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L201).
---@param dsp number # (0 - 133) DSP values. List can be found here https://developer.valvesoftware.com/wiki/Dsp_presets
function Sound:setDSP(dsp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the pitch of the sound. Won't work unless the sound is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L165).
---@param pitch number # Pitch to set to, between 0 and 255.
---@param fade number? # Time in seconds to transition to this new pitch. Default 0
function Sound:setPitch(pitch, fade) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the sound level in dB. Won't work if the sound is already playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L188).
---@param level number # dB level, for information on the value to use see https://developer.valvesoftware.com/wiki/Soundscripts#SoundLevel
function Sound:setSoundLevel(level) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the volume of the sound. Won't work unless the sound is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L148).
---@param vol number # Volume to set to, between 0 and 1.
---@param fade number? # Time in seconds to transition to this new volume. Default 0
function Sound:setVolume(vol, fade) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Stops the sound from being played.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/sound.lua#L122).
---@param fade number? # Time in seconds to fade out, if nil or 0 the sound stops instantly.
function Sound:stop(fade) end
