---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Effects library.
--- See also https://wiki.facepunch.com/gmod/Default_Effects.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L68).
effect = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a "beam ring point" effect, like the AR2 orb explosion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L195).
---@param pos Vector # The origin position of the effect
---@param lifetime number # How long the effect will be drawing for, in seconds (clamped: 0 to 25.6)
---@param startRad number # Initial radius of the effect (clamped: -4096 to 4096)
---@param endRad number # Final radius of the effect (clamped: -4096 to 4096)
---@param width number # How thick the beam should be (clamped: 0 to 128)
---@param amplitude number # How noisy the beam should be (clamped: 0 to 64)
---@param color Color # Color
---@param speed number? # Causes the beam to start faded if set to any integer other than 0 (clamped: 0 to 255)
---@param flags number? # Beam flags
---@param framerate number? # Texture framerate (clamped: 0 to 255)
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
--- Returns whether another effect can be created within the burst quota.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L189).
---@return boolean # True if a new effect may be created, false otherwise
function effect.canCreate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates an effect data structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L114).
---@param name string # The effect type name to create
---@param data table # The effect data table with keys: angles - Angle angle of the effect attachment - number Entity attachment id to attach to color - number The color to set the effect (This is an 8 bit color integer specific to the effect implementation) damagetype - number The damage type of the effect entindex - number The entity index to set the effect to (SERVER only) entity - Entity entity to set the effect to flags - number Flags to add to the effect hitbox - number The hitbox id of the effect magnitude - number A magnitude value of the effect materialindex - number The material index of the effect normal - Vector A normal vector of the effect origin - Vector The origin vector of the effect radius - number The radius value of the effect scale - number The scale value of the effect start - Vector the start vector of the effect surfaceprop - number The surfaceprop id of the effect
function effect.create(name, data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of effects that can still be created within the burst quota.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L183).
---@return number # Number of remaining effects allowed by the burst quota
function effect.effectsLeft() end
