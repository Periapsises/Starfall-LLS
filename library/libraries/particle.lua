---@meta

particle = {}

--- Creates a ParticleEmitter data structure
---@param position Vector # The particle emitter's position
---@param use3D boolean # Create the emitter in 3D mode
---@return ParticleEmitter # ParticleEmitter Object
function particle.create(position, use3D) end

--- Returns number of particle emitters left able to be created
---@return number # Number of particle emitters left
function particle.particleEmittersLeft() end
