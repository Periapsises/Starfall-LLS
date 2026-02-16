---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- For playing music there is `Bass` type. You can pause and set current playback time in it. If you're looking to apply DSP effects on present game sounds, use `Sound` instead.
---@class Bass
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L129).
local Bass = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns 3D cone of the sound channel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L596).
---@return number # The angle of the inside projection cone in degrees.
---@return number # The angle of the outside projection cone in degrees.
---@return number # The delta-volume outside the outer projection cone.
function Bass:get3DCone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns if the sound channel is currently in 3D mode or not. This value will be affected by Bass:set3DEnabled().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L544).
---@return boolean # True or False depending on if the sound is currently 3D or not.
function Bass:get3DEnabled() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the average bit rate of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L443).
---@return number # The average bit rate of the sound.
function Bass:getAverageBitRate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves the number of bits per sample of the sound.
--- Doesn't work for mp3 and ogg files.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L436).
---@return number # Floating point number of bits per sample, or 0 if unknown.
function Bass:getBitsPerSample() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the buffered time of the sound channel in seconds, for online streaming sound channels (Bass:loadURL()). For offline channels this will be equivalent to Bass:getLength().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L449).
---@return number # The current buffered time of the stream, in seconds.
function Bass:getBufferedTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Perform fast Fourier transform algorithm to compute the DFT of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L383).
---@param n number # Number of consecutive audio samples, between 0 and 7. Depending on this parameter you will get 256*2^n samples.
---@return table # Table containing DFT magnitudes, each between 0 and 1.
function Bass:getFFT(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the fade distance of the sound in 3D space. .
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L335).
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
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L282).
---@return number # Volume fade multiplier (1 is normal), between 0x and 10x.
function Bass:getFadeMultiplier() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the filename for the sound channel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L377).
---@return string # The file name. This will not be always what you have put into the Bass:loadURL() as first argument.
function Bass:getFileName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the flags used to create the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L515).
---@return string # The flags of the sound (`3d`, `mono`, `noplay`, `noblock`).
function Bass:getFlags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the length of a sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L357).
---@return number # Sound length in seconds.
function Bass:getLength() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the left and right audio channel levels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L412).
---@return number # The left sound level, a value between 0 and 1.
---@return number # The right sound level, a value between 0 and 1.
function Bass:getLevels() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the relative volume between the left and right audio channels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L419).
---@return number # The pan. -1 to 1 for relative left to right
function Bass:getPan() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the pitch of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L299).
---@return number # The current pitch of the sound.
function Bass:getPitch() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the position of the sound in 3D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L311).
---@return Vector # The position of the sound.
function Bass:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the sample rate for currently playing sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L458).
---@return number # The sample rate in Hz. This should always be 44100.
function Bass:getSamplingRate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the state of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L550).
---@return number # The state enum of the sound. https://wiki.facepunch.com/gmod/Enums/GMOD_CHANNEL
function Bass:getState() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves HTTP headers from a bass stream channel created by Bass:loadURL(), if available.
--- Of special interest here are headers such as icy-name, icy-br, ice-audio-info, icy-genre.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L464).
---@return table # A list of HTTP headers or nil if no information is available.
function Bass:getTagsHTTP() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves the ID3 version 1 info from a bass channel created by Bass:loadFile or Bass:loadURL, if available. ID3v2 is not supported.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- (The table will always have the following keys, filled out based on what is available: "album", "artist", "comment", "genre", "id", "title", "year").
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L472).
---@return table # A table containing the information, or nil if no information is available.
function Bass:getTagsID3() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves .m4a media info, from a bass channel created by Bass:loadFile or Bass:loadURL, if available.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L487).
---@return table # A list of available information in no particular order, or nil if no information is available.
function Bass:getTagsMP4() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves ICY metadata from a bass stream channel created by Bass:loadURL, if available.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L480).
---@return string # The meta information, or nil if no information is available.
function Bass:getTagsMeta() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves OGG media info tag, from a bass channel created by Bass:loadFile or Bass:loadURL, if available.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L494).
---@return table # A list of available information in no particular order, or nil if no information is available.
function Bass:getTagsOGG() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves OGG Vendor tag, usually containing the application that created the file, from a bass channel created by Bass:loadFile or Bass:loadURL, if available.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L501).
---@return string # The OGG vendor tag, or nil if no information is available.
function Bass:getTagsVendor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Retrieves .WMA media info, from a bass channel created by Bass:loadFile or Bass:loadURL, if available.
--- CRITICAL NOTE: Tags aren't available immediately! Must use a timer to wait 100-500ms for BASS to parse metadata during stream init!!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L508).
---@return table # A list of available information in no particular order, or nil if no information is available.
function Bass:getTagsWMA() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the current playback time of the sound. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L371).
---@return number # Sound playback time in seconds.
function Bass:getTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the base volume of the sound.
--- This is the volume before distance fading is applied on 3D sounds.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L275).
---@return number # Volume multiplier (1 is normal), between 0x and 10x.
function Bass:getVolume() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is 2D.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L521).
---@return boolean # True if the sound is 2D.
function Bass:is2D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is 3D.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L527).
---@return boolean # True if the sound is 3D.
function Bass:is3D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether the audio stream is block streamed or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L392).
---@return boolean # Is the audio stream block streamed or not.
function Bass:isBlockStreamed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the sound loops.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L351).
---@return boolean # Whether the sound loops.
function Bass:isLooping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the sound is streamed online.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L400).
---@return boolean # Boolean of whether the sound is streamed online.
function Bass:isOnline() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is paused.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L569).
---@return boolean # True if the sound is paused.
function Bass:isPaused() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L563).
---@return boolean # True if the sound is playing.
function Bass:isPlaying() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is stalled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L575).
---@return boolean # True if the sound is stalled.
function Bass:isStalled() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the sound is stopped.
--- Only true if the `noplay` flag is used and Bass:play() hasn't been called yet, since Bass:stop() will destroy the sound channel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L556).
---@return boolean # True if the sound is stopped.
function Bass:isStopped() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets whether the bass is valid.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L406).
---@return boolean # Boolean of whether the bass is valid.
function Bass:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pauses the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L252).
function Bass:pause() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Starts to play the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L240).
function Bass:play() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets 3D cone of the sound channel.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L581).
---@param innerAngle number # The angle of the inside projection cone in degrees. Range is from 0 (no cone) to 360 (sphere), -1 = leave current.
---@param outerAngle number # The angle of the outside projection cone in degrees. Range is from 0 (no cone) to 360 (sphere), -1 = leave current.
---@param outerVolume number # The delta-volume outside the outer projection cone. Range is from 0 (silent) to 1 (same as inside the cone), less than 0 = leave current.
function Bass:set3DCone(innerAngle, outerAngle, outerVolume) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the 3D mode of the channel. This will affect Bass:get3DEnabled() but not Bass:is3D().
--- This feature requires the channel to be initially created in 3D mode, i.e. Bass:is3D() should return true or this function will do nothing. .
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L533).
---@param enable boolean # True or False to toggle 3D.
function Bass:set3DEnabled(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the fade distance of the sound in 3D space. Must have `3d` flag for this to have any effect.
--- For both fading styles, the sound will be at full volume (the value of :setVolume()) at distances between 0 and min.
--- If simple fading is enabled, the sound will fade towards 0 until the max distance is reached, becoming inaudible.
--- If simple fading is disabled, the sound will start to fade, then lock its volume once max distance is reached. It will almost always be faintly heard.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L317).
---@param min number # The distance where the sound starts to fade. (50-1,000)
---@param max number # The maximal distance, as described above. (min-20,000 for simple fading, 5,000-200,000 for non-simple fading)
---@param useSimpleFading boolean? # Whether to use simple fading for this sound. True by default.
function Bass:setFade(min, max, useSimpleFading) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets whether the sound should loop. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L345).
---@param loop boolean # Whether the sound should loop.
function Bass:setLooping(loop) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the relative volume of the left and right channels.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L425).
---@param pan number # Relative integer volume between the left and right channels. Values must be -1 to 1 for relative left to right.
function Bass:setPan(pan) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the pitch of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L292).
---@param pitch number # Pitch to set to. (0-100) 1 is normal pitch.
function Bass:setPitch(pitch) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the position of the sound in 3D space. Must have `3d` flag for this to have any effect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L305).
---@param pos Vector # Where to position the sound.
function Bass:setPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the current playback time of the sound. Requires the 'noblock' flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L363).
---@param time number # Sound playback time in seconds.
---@param dontDecode boolean? # Skip decoding to set time, which is much faster but less accurate. True by default.
function Bass:setTime(time, dontDecode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the volume of the sound.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L257).
---@param vol number # Volume multiplier (1 is normal), between 0x and 10x.
function Bass:setVolume(vol) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Stops playing the sound and destroys it. Use pause instead if you don't want it destroyed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/bass.lua#L245).
function Bass:stop() end
