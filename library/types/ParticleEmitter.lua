---@meta

---@class ParticleEmitter
local ParticleEmitter = {}

--- Returns the position of this emitter. This is set when creating the emitter with ParticleEmitter.
---@return Vector # Position of the Emitter
function ParticleEmitter:getPos() end

--- Returns whether this object is valid or not.
---@return boolean # If it's valid
function ParticleEmitter:isValid() end

--- Returns the amount of active particles of this emitter.
---@return number # Number of active particles
function ParticleEmitter:getNumActiveParticles() end

--- Sets the bounding box for this emitter. Usually the bounding box is automatically determined by the particles, but this function overrides it.
---@param mins Vector Min vector
---@param maxs Vector Max vector
function ParticleEmitter:setBBox(mins, maxs) end

--- Sets the position of the particle emitter.
---@param position Vector The position
function ParticleEmitter:setPos(position) end

--- This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).
---@param distanceMin number
---@param distanceMax number
function ParticleEmitter:setNearClip(distanceMin, distanceMax) end

--- Manually renders all particles the emitter has created.
function ParticleEmitter:draw() end

--- Returns number of particles left able to be created from the emitter
---@return number # Number of particles left
function ParticleEmitter:getParticlesLeft() end

--- Prevents all particles of the emitter from automatically drawing. They can be manually drawn with draw()
---@param noDraw boolean Whether not to draw
function ParticleEmitter:setNoDraw(noDraw) end

--- Returns whether this emitter is 3D or not. This is set when creating the emitter with ParticleEmitter.
---@return boolean # If it's 3D
function ParticleEmitter:is3D() end

--- Creates a new Particle with the given material and position.
---@param material Material The material object to set the particle
---@param position Vector The position to create the particle
---@param startSize number Sets the initial size value of the particle.
---@param endSize number Sets the size of the particle that it will reach when it dies.
---@param startLength number Sets the initial length value of the particle.
---@param endLength number Sets the length of the particle that it will reach when it dies.
---@param startAlpha number Sets the initial alpha value of the particle.
---@param endAlpha number Sets the alpha value of the particle that it will reach when it dies.
---@param dieTime number Sets the time where the particle will be removed. (0-60)
---@return Particle # A Particle object
function ParticleEmitter:add(
	material,
	position,
	startSize,
	endSize,
	startLength,
	endLength,
	startAlpha,
	endAlpha,
	dieTime
)
end

--- The function name has not much in common with its actual function.
--- It applies a radius to every particles that affects the building of the bounding box, as it usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z.
--- This function just adds/subtracts the radius and inflates the bounding box.
---@param radius number Particle radius
function ParticleEmitter:setParticleCullRadius(radius) end

--- Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.
function ParticleEmitter:destroy() end
