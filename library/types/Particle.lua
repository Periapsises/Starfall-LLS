---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Particle type.
---@class Particle
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L25).
local Particle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the angular velocity of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L199).
---@return Angle # Angular velocity of the particle
function Particle:getAngleVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current orientation of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L193).
---@return Angle # Angles of the particle
function Particle:getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the color of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L205).
---@return Color # Color of the particle
function Particle:getColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the absolute position of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L211).
---@return Vector # Position of the particle
function Particle:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current rotation of the particle in radians, this should only be used for 2D particles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L217).
---@return number # Roll
function Particle:getRoll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the current velocity of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L223).
---@return Vector # Velocity
function Particle:getVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the air resistance of the the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L301).
---@param airResistance number # AirResistance to set to
function Particle:setAirResistance(airResistance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the angular velocity of the the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L235).
---@param angVel Angle # Angular velocity to set the particle's to
function Particle:setAngleVelocity(angVel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the angles of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L229).
---@param ang Angle # Angles to set the particle's angles to
function Particle:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the 'bounciness' of the the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L241).
---@param bounce number # Bounciness to set to
function Particle:setBounce(bounce) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the whether the particle should collide with the world or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L248).
---@param shouldCollide boolean # Whether it should collide
function Particle:setCollide(shouldCollide) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the color of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L255).
---@param col Color # Color to set to
function Particle:setColor(col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the directional gravity aka. acceleration of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L308).
---@param gravity Vector # Directional gravity
function Particle:setGravity(gravity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets whether the particle should be affected by lighting.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L262).
---@param useLighting boolean # Whether the particle should be affected by lighting
function Particle:setLighting(useLighting) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the material of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L269).
---@param mat Material # Material to set
function Particle:setMaterial(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the absolute position of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L275).
---@param pos Vector # Vector position to set to
function Particle:setPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the roll of the particle in radians. This should only be used for 2D particles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L281).
---@param roll number # Roll
function Particle:setRoll(roll) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the rotation speed of the particle in radians. This should only be used for 2D particles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L288).
---@param rollDelta number # Rolldelta
function Particle:setRollDelta(rollDelta) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the velocity of the particle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L295).
---@param vel Vector # Velocity to set to
function Particle:setVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Scales the velocity based on the particle speed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/particle.lua#L314).
---@param doScale boolean # Whether it should scale
function Particle:setVelocityScale(doScale) end
