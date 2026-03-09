---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Particles library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L13).
particle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a ParticleEmitter data structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L69).
---@param position Vector # The particle emitter's position
---@param use3D boolean # Create the emitter in 3D mode
---@return ParticleEmitter? # ParticleEmitter Object or nil if the engine max of 4097 was hit
function particle.create(position, use3D) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns number of particle emitters left able to be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L86).
---@return number # Number of particle emitters left
function particle.particleEmittersLeft() end
