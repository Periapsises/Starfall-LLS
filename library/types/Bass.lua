---@meta

---@class Bass
local Bass = {}

--- Gets the left and right audio channel levels.
---@return number # The left sound level, a value between 0 and 1.
---@return number # The right sound level, a value between 0 and 1.
function Bass:getLevels() end

--- Gets the distance-based fade multiplier of the sound.
--- Bass:getVolume() * Bass:getFadeMultiplier() is the effective volume of the sound.
--- Always 1 for 2D sounds.
--- Always 1 for 3D sounds that don't use simple fading. See Bass:setFade().
--- Only updates once per frame while the sound is playing.
---@return number # Volume fade multiplier (1 is normal), between 0x and 10x.
function Bass:getFadeMultiplier() end

--- Returns whether or not the sound is stopped.
--- Only true if the `noplay` flag is used and Bass:play() hasn't been called yet, since Bass:stop() will destroy the sound channel.
---@return boolean # True if the sound is stopped.
function Bass:isStopped() end

--- Gets the base volume of the sound.
--- This is the volume before distance fading is applied on 3D sounds.
---@return number # Volume multiplier (1 is normal), between 0x and 10x.
function Bass:getVolume() end

--- Returns whether or not the sound is 2D.
---@return boolean # True if the sound is 2D.
function Bass:is2D() end

--- Sets the position of the sound in 3D space. Must have `3d` flag for this to have any effect.
---@param pos Vector Where to position the sound.
function Bass:setPos(pos) end

--- Gets the fade distance of the sound in 3D space.
---@return number # The distance before the sound starts to fade.
---@return number # The distance before the sound stops fading.
---@return boolean # Whether or not this sound uses simple fading.
function Bass:getFade() end

--- Gets whether the sound loops.
---@return boolean # Whether the sound loops.
function Bass:isLooping() end

--- Returns the flags used to create the sound.
---@return string # The flags of the sound (`3d`, `mono`, `noplay`, `noblock`).
function Bass:getFlags() end

--- Perform fast Fourier transform algorithm to compute the DFT of the sound.
---@param n number Number of consecutive audio samples, between 0 and 7. Depending on this parameter you will get 256*2^n samples.
---@return table # Table containing DFT magnitudes, each between 0 and 1.
function Bass:getFFT(n) end

--- Starts to play the sound.
function Bass:play() end

--- Sets the current playback time of the sound. Requires the 'noblock' flag.
---@param time number Sound playback time in seconds.
---@param dontDecode boolean? Skip decoding to set time, which is much faster but less accurate. True by default.
function Bass:setTime(time, dontDecode) end

--- Gets the relative volume between the left and right audio channels.
---@return number # The pan. -1 to 1 for relative left to right
function Bass:getPan() end

--- Sets the relative volume of the left and right channels.
---@param Relative number integer volume between the left and right channels. Values must be -1 to 1 for relative left to right.
function Bass:setPan(Relative) end

--- Stops playing the sound and destroys it. Use pause instead if you don't want it destroyed.
function Bass:stop() end

--- Sets the volume of the sound.
---@param vol number Volume multiplier (1 is normal), between 0x and 10x.
function Bass:setVolume(vol) end

--- Gets the position of the sound in 3D space.
---@return Vector # The position of the sound.
function Bass:getPos() end

--- Returns whether or not the sound is stalled.
---@return boolean # True if the sound is stalled.
function Bass:isStalled() end

--- Gets whether the bass is valid.
---@return boolean # Boolean of whether the bass is valid.
function Bass:isValid() end

--- Gets the current playback time of the sound. Requires the 'noblock' flag.
---@return number # Sound playback time in seconds.
function Bass:getTime() end

--- Sets the fade distance of the sound in 3D space. Must have `3d` flag for this to have any effect.
--- For both fading styles, the sound will be at full volume (the value of :setVolume()) at distances between 0 and min.
--- If simple fading is enabled, the sound will fade towards 0 until the max distance is reached, becoming inaudible.
--- If simple fading is disabled, the sound will start to fade, then lock its volume once max distance is reached. It will almost always be faintly heard.
---@param min number The distance where the sound starts to fade. (50-1,000)
---@param max number The maximal distance, as described above. (min-20,000 for simple fading, 5,000-200,000 for non-simple fading)
---@param useSimpleFading boolean? Whether to use simple fading for this sound. True by default.
function Bass:setFade(min, max, useSimpleFading) end

--- Returns the average bit rate of the sound.
---@return number # The average bit rate of the sound.
function Bass:getAverageBitRate() end

--- Retrieves the number of bits per sample of the sound.
--- Doesn't work for mp3 and ogg files.
---@return number # Floating point number of bits per sample, or 0 if unknown.
function Bass:getBitsPerSample() end

--- Gets the length of a sound.
---@return number # Sound length in seconds.
function Bass:getLength() end

--- Pauses the sound.
function Bass:pause() end

--- Sets whether the sound should loop. Requires the 'noblock' flag.
---@param loop boolean Whether the sound should loop.
function Bass:setLooping(loop) end

--- Returns whether or not the sound is paused.
---@return boolean # True if the sound is paused.
function Bass:isPaused() end

--- Returns whether or not the sound is 3D.
---@return boolean # True if the sound is 3D.
function Bass:is3D() end

--- Returns the state of the sound.
---@return number # The state enum of the sound. https://wiki.facepunch.com/gmod/Enums/GMOD_CHANNEL
function Bass:getState() end

--- Returns whether or not the sound is playing.
---@return boolean # True if the sound is playing.
function Bass:isPlaying() end

--- Sets the pitch of the sound.
---@param pitch number Pitch to set to. (0-100) 1 is normal pitch.
function Bass:setPitch(pitch) end

--- Gets whether the sound is streamed online.
---@return boolean # Boolean of whether the sound is streamed online.
function Bass:isOnline() end
