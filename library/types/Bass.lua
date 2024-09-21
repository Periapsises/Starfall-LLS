---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- For playing music there is `Bass` type. You can pause and set current playback time in it. If you're looking to apply DSP effects on present game sounds, use `Sound` instead.
---@class Bass
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L129).
local Bass = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the average bit rate of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L421).
---@return number # The average bit rate of the sound.
function Bass:getAverageBitRate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves the number of bits per sample of the sound.
--- Doesn't work for mp3 and ogg files.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L414).
---@return number # Floating point number of bits per sample, or 0 if unknown.
function Bass:getBitsPerSample() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Perform fast Fourier transform algorithm to compute the DFT of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L369).
---@param n number # Number of consecutive audio samples, between 0 and 7. Depending on this parameter you will get 256*2^n samples.
---@return table # Table containing DFT magnitudes, each between 0 and 1.
function Bass:getFFT(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the fade distance of the sound in 3D space. .
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L327).
---@return number # The distance before the sound starts to fade.
---@return number # The distance before the sound stops fading.
---@return boolean # Whether or not this sound uses simple fading.
function Bass:getFade() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the distance-based fade multiplier of the sound.
--- Bass:getVolume() * Bass:getFadeMultiplier() is the effective volume of the sound.
--- Always 1 for 2D sounds.
--- Always 1 for 3D sounds that don't use simple fading. See Bass:setFade().
--- Only updates once per frame while the sound is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L280).
---@return number # Volume fade multiplier (1 is normal), between 0x and 10x.
function Bass:getFadeMultiplier() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the flags used to create the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L427).
---@return string # The flags of the sound (`3d`, `mono`, `noplay`, `noblock`).
function Bass:getFlags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the length of a sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L349).
---@return number # Sound length in seconds.
function Bass:getLength() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the left and right audio channel levels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L390).
---@return number # The left sound level, a value between 0 and 1.
---@return number # The right sound level, a value between 0 and 1.
function Bass:getLevels() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the relative volume between the left and right audio channels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L397).
---@return number # The pan. -1 to 1 for relative left to right
function Bass:getPan() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the position of the sound in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L303).
---@return Vector # The position of the sound.
function Bass:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the state of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L445).
---@return number # The state enum of the sound. https://wiki.facepunch.com/gmod/Enums/GMOD_CHANNEL
function Bass:getState() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the current playback time of the sound. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L363).
---@return number # Sound playback time in seconds.
function Bass:getTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the base volume of the sound.
--- This is the volume before distance fading is applied on 3D sounds.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L273).
---@return number # Volume multiplier (1 is normal), between 0x and 10x.
function Bass:getVolume() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is 2D.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L433).
---@return boolean # True if the sound is 2D.
function Bass:is2D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is 3D.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L439).
---@return boolean # True if the sound is 3D.
function Bass:is3D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the sound loops.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L343).
---@return boolean # Whether the sound loops.
function Bass:isLooping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the sound is streamed online.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L378).
---@return boolean # Boolean of whether the sound is streamed online.
function Bass:isOnline() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is paused.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L464).
---@return boolean # True if the sound is paused.
function Bass:isPaused() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L458).
---@return boolean # True if the sound is playing.
function Bass:isPlaying() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is stalled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L470).
---@return boolean # True if the sound is stalled.
function Bass:isStalled() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is stopped.
--- Only true if the `noplay` flag is used and Bass:play() hasn't been called yet, since Bass:stop() will destroy the sound channel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L451).
---@return boolean # True if the sound is stopped.
function Bass:isStopped() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the bass is valid.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L384).
---@return boolean # Boolean of whether the bass is valid.
function Bass:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pauses the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L250).
function Bass:pause() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Starts to play the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L238).
function Bass:play() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the fade distance of the sound in 3D space. Must have `3d` flag for this to have any effect.
--- For both fading styles, the sound will be at full volume (the value of :setVolume()) at distances between 0 and min.
--- If simple fading is enabled, the sound will fade towards 0 until the max distance is reached, becoming inaudible.
--- If simple fading is disabled, the sound will start to fade, then lock its volume once max distance is reached. It will almost always be faintly heard.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L309).
---@param min number # The distance where the sound starts to fade. (50-1,000)
---@param max number # The maximal distance, as described above. (min-20,000 for simple fading, 5,000-200,000 for non-simple fading)
---@param useSimpleFading boolean? # Whether to use simple fading for this sound. True by default.
function Bass:setFade(min, max, useSimpleFading) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets whether the sound should loop. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L337).
---@param loop boolean # Whether the sound should loop.
function Bass:setLooping(loop) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the relative volume of the left and right channels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L403).
---@param Relative number # integer volume between the left and right channels. Values must be -1 to 1 for relative left to right.
function Bass:setPan(Relative) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the pitch of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L290).
---@param pitch number # Pitch to set to. (0-100) 1 is normal pitch.
function Bass:setPitch(pitch) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the position of the sound in 3D space. Must have `3d` flag for this to have any effect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L297).
---@param pos Vector # Where to position the sound.
function Bass:setPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current playback time of the sound. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L355).
---@param time number # Sound playback time in seconds.
---@param dontDecode boolean? # Skip decoding to set time, which is much faster but less accurate. True by default.
function Bass:setTime(time, dontDecode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the volume of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L255).
---@param vol number # Volume multiplier (1 is normal), between 0x and 10x.
function Bass:setVolume(vol) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Stops playing the sound and destroys it. Use pause instead if you don't want it destroyed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L243).
function Bass:stop() end
