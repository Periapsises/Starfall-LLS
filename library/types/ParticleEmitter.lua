---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- ParticleEmitter type.
---@class ParticleEmitter
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L19).
local ParticleEmitter = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a new Particle with the given material and position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L70).
---@param material Material # The material object to set the particle
---@param position Vector # The position to create the particle
---@param startSize number # Sets the initial size value of the particle.
---@param endSize number # Sets the size of the particle that it will reach when it dies.
---@param startLength number # Sets the initial length value of the particle.
---@param endLength number # Sets the length of the particle that it will reach when it dies.
---@param startAlpha number # Sets the initial alpha value of the particle.
---@param endAlpha number # Sets the alpha value of the particle that it will reach when it dies.
---@param dieTime number # Sets the time where the particle will be removed. (0-60)
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

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L116).
function ParticleEmitter:destroy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Manually renders all particles the emitter has created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L110).
function ParticleEmitter:draw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the amount of active particles of this emitter.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L124).
---@return number # Number of active particles
function ParticleEmitter:getNumActiveParticles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns number of particles left able to be created from the emitter.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L130).
---@return number # Number of particles left
function ParticleEmitter:getParticlesLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the position of this emitter. This is set when creating the emitter with ParticleEmitter.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L136).
---@return Vector # Position of the Emitter
function ParticleEmitter:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether this emitter is 3D or not. This is set when creating the emitter with ParticleEmitter.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L142).
---@return boolean # If it's 3D
function ParticleEmitter:is3D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether this object is valid or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L148).
---@return boolean # If it's valid
function ParticleEmitter:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the bounding box for this emitter. Usually the bounding box is automatically determined by the particles, but this function overrides it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L154).
---@param mins Vector # Min vector
---@param maxs Vector # Max vector
function ParticleEmitter:setBBox(mins, maxs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L161).
---@param distanceMin number #
---@param distanceMax number #
function ParticleEmitter:setNearClip(distanceMin, distanceMax) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Prevents all particles of the emitter from automatically drawing. They can be manually drawn with draw().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L170).
---@param noDraw boolean # Whether not to draw
function ParticleEmitter:setNoDraw(noDraw) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- The function name has not much in common with its actual function.
--- It applies a radius to every particles that affects the building of the bounding box, as it usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z.
--- This function just adds/subtracts the radius and inflates the bounding box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L177).
---@param radius number # Particle radius
function ParticleEmitter:setParticleCullRadius(radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the position of the particle emitter.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L186).
---@param position Vector # The position
function ParticleEmitter:setPos(position) end
