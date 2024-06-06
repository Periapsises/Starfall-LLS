---@meta

---@class Sound
local Sound = {}

--- Sets the sound dsp value
---@param dsp number (0 - 133) DSP values. List can be found here https://developer.valvesoftware.com/wiki/Dsp_presets
function Sound:setDSP(dsp) end

--- Gets the sound dsp value
---@return number # (0 - 133) DSP value.
function Sound:getDSP() end

--- Sets the sound level in dB. Won't work if the sound is already playing.
---@param level number dB level, for information on the value to use see https://developer.valvesoftware.com/wiki/Soundscripts#SoundLevel
function Sound:setSoundLevel(level) end

--- Sets the pitch of the sound. Won't work unless the sound is playing.
---@param pitch number Pitch to set to, between 0 and 255.
---@param fade number? Time in seconds to transition to this new pitch. Default 0
function Sound:setPitch(pitch, fade) end

--- Starts to play the sound.
function Sound:play() end

--- Returns whether the sound is being played.
---@return boolean # Whether the sound is playing or not
function Sound:isPlaying() end

--- Returns the current sound level in dB.
---@return number # Level in dB
function Sound:getSoundLevel() end

--- Removes the sound from the game so new one can be created if limit is reached
function Sound:destroy() end

--- Stops the sound from being played.
---@param fade number? Time in seconds to fade out, if nil or 0 the sound stops instantly.
function Sound:stop(fade) end

--- Sets the volume of the sound. Won't work unless the sound is playing.
---@param vol number Volume to set to, between 0 and 1.
---@param fade number? Time in seconds to transition to this new volume. Default 0
function Sound:setVolume(vol, fade) end

