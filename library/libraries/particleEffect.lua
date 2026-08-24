---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- ParticleEffect library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle_effect.lua#L11).
particleEffect = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a particle effect (and attaches it to an entity).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle_effect.lua#L204).
---@param entity Entity # The entity to attach the particle effect to (can be world)
---@param name string # The name of the effect to create (e.g. "generic_smoke")
---@param pattach number # See PATTACH enum
---@param options table? # Optional table of tables (indexes 1 to 64) having the following structure: number attachtype - The particle attach type (see PATTACH enum, default: `PATTACH.ABSORIGIN`). Entity entity - The parent entity (default: NULL). Vector position - The offset position for the given control point (default: nil). This only affects the control points of the particle effects, and will do nothing if the effect doesn't use control points.
---@return ParticleEffect # ParticleEffect object.
function particleEffect.attach(entity, name, pattach, options) end
