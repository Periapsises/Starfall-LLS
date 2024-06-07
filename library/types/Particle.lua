---@meta

---@class Particle
local Particle = {}

--- Returns the absolute position of the particle.
---@return Vector # Position of the particle
function Particle:getPos() end

--- Sets the 'bounciness' of the the particle.
---@param bounce number Bounciness to set to
function Particle:setBounce(bounce) end

--- Sets whether the particle should be affected by lighting.
---@param useLighting boolean Whether the particle should be affected by lighting
function Particle:setLighting(useLighting) end

--- Sets the absolute position of the particle.
---@param pos Vector Vector position to set to
function Particle:setPos(pos) end

--- Sets the velocity of the particle.
---@param vel Vector Velocity to set to
function Particle:setVelocity(vel) end

--- Returns the current velocity of the particle.
---@return Vector # Velocity
function Particle:getVelocity() end

--- Returns the current rotation of the particle in radians, this should only be used for 2D particles.
---@return number # Roll
function Particle:getRoll() end

--- Sets the roll of the particle in radians. This should only be used for 2D particles.
---@param roll number Roll
function Particle:setRoll(roll) end

--- Sets the air resistance of the the particle.
---@param airResistance number AirResistance to set to
function Particle:setAirResistance(airResistance) end

--- Sets the angular velocity of the the particle.
---@param angVel Angle Angular velocity to set the particle's to
function Particle:setAngleVelocity(angVel) end

--- Returns the color of the particle.
---@return Color # Color of the particle
function Particle:getColor() end

--- Sets the rotation speed of the particle in radians. This should only be used for 2D particles.
---@param rollDelta number Rolldelta
function Particle:setRollDelta(rollDelta) end

--- Sets the material of the particle.
---@param mat Material Material to set
function Particle:setMaterial(mat) end

--- Sets the directional gravity aka. acceleration of the particle.
---@param gravity Vector Directional gravity
function Particle:setGravity(gravity) end

--- Returns the current orientation of the particle.
---@return Angle # Angles of the particle
function Particle:getAngles() end

--- Returns the angular velocity of the particle
---@return Angle # Angular velocity of the particle
function Particle:getAngleVelocity() end

--- Sets the angles of the particle.
---@param ang Angle Angles to set the particle's angles to
function Particle:setAngles(ang) end

--- Scales the velocity based on the particle speed.
---@param doScale boolean Whether it should scale
function Particle:setVelocityScale(doScale) end

--- Sets the whether the particle should collide with the world or not.
---@param shouldCollide boolean Whether it should collide
function Particle:setCollide(shouldCollide) end

--- Sets the color of the particle.
---@param col Color Color to set to
function Particle:setColor(col) end
