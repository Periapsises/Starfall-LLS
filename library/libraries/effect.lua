---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Effects library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L17).
effect = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a "beam ring point" effect, like the AR2 orb explosion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L66).
---@param pos Vector # The origin position of the effect
---@param lifetime number # How long the effect will be drawing for, in seconds
---@param startRad number # Initial radius of the effect
---@param endRad number # Final radius of the effect
---@param width number # How thick the beam should be
---@param amplitude number # How noisy the beam should be
---@param color Color # Color
---@param speed number? # Causes the beam to start faded if set to any integer other than 0
---@param flags number? # Beam flags
---@param framerate number? # Texture framerate
---@param material string? # The material to use instead of the default one
function effect.beamRingPoint(
	pos,
	lifetime,
	startRad,
	endRad,
	width,
	amplitude,
	color,
	speed,
	flags,
	framerate,
	material
)
end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether there are any effects able to be played.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L60).
---@return boolean # If an effect can be played
function effect.canCreate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates an effect data structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L48).
---@return Effect # Effect Object
function effect.create() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns number of effects able to be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L54).
---@return number # Number of effects able to be created
function effect.effectsLeft() end
