---@meta

---@class ParticleEffect
local ParticleEffect = {}

--- Stops emission of the particle effect and destroys the object.
function ParticleEffect:destroy() end

--- Gets if the particle effect is valid or not.
---@return boolean # Is valid or not
function ParticleEffect:isValid() end

--- Restarts emission of the particle effect.
function ParticleEffect:restart() end

--- Stops emission of the particle effect.
function ParticleEffect:stopEmission() end

--- Sets the forward direction for given control point.
---@param id number Control Point ID (0-63)
---@param fwd Vector Forward vector
function ParticleEffect:setForwardVector(id, fwd) end

--- Essentially makes child control point follow the parent entity.
---@param id number Child Control Point ID (0-63)
---@param entity Entity Entity parent
function ParticleEffect:setControlPointEntity(id, entity) end

--- Sets a value for given control point.
---@param id number Control Point ID (0-63)
---@param value Vector Value
function ParticleEffect:setControlPoint(id, value) end

--- Sets the right direction for given control point.
---@param id number Control Point ID (0-63)
---@param right Vector Right vector
function ParticleEffect:setRightVector(id, right) end

--- Starts emission of the particle effect.
function ParticleEffect:startEmission() end

--- Sets the sort origin for given particle effect system. This is used as a helper to determine which particles are in front of which.
---@param origin Vector Sort Origin
function ParticleEffect:setSortOrigin(origin) end

--- Returns if the particle effect is finished
---@return boolean # If the particle effect is finished
function ParticleEffect:isFinished() end

--- Sets the up direction for given control point.
---@param id number Control Point ID (0-63)
---@param up Vector Up vector
function ParticleEffect:setUpVector(id, up) end

--- Sets the parent for given control point.
---@param id number Child Control Point ID (0-63)
---@param parentid number Parent control point ID (0-63)
function ParticleEffect:setControlPointParent(id, parentid) end
