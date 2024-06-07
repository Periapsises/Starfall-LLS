---@meta

---@class Effect
local Effect = {}

--- Sets the effect's color
--- Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to 0-255 range.
---@param color number The color represented by a byte 0-255.
function Effect:setColor(color) end

--- Returns the effect's attachment
---@return number # The effect's attachment ID
function Effect:getAttachment() end

--- Returns the effect's origin
---@return Vector # The effect's origin
function Effect:getOrigin() end

--- Returns the effect's radius
---@return number # The effect's radius
function Effect:getRadius() end

--- Sets the effect's entity index
---@param index number The entity index
function Effect:setEntIndex(index) end

--- Sets the effect's angles
---@param ang Angle The angles
function Effect:setAngles(ang) end

--- Returns the effect's magnitude
---@return number # The effect's magnitude
function Effect:getMagnitude() end

--- Sets the effect's start pos
--- Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component)
---@param start Vector The vector start
function Effect:setStart(start) end

--- Returns the effect's surface prop
---@return number # The effect's surface property index
function Effect:getSurfaceProp() end

--- Returns the effect's material index
---@return number # The effect's material index
function Effect:getMaterialIndex() end

--- Sets the effect's magnitude
---@param magnitude number The magnitude
function Effect:setMagnitude(magnitude) end

--- Sets the effect's origin
---@param origin Vector The vector origin
function Effect:setOrigin(origin) end

--- Returns the effect's entity
---@return Entity # The effect's entity
function Effect:getEntity() end

--- Sets the effect's material index
---@param mat number The material index
function Effect:setMaterialIndex(mat) end

--- Returns the effect's angle
---@return Angle # The effect's angle
function Effect:getAngles() end

--- Sets the effect's surface property
--- Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to -1-254 range.(yes, that's not a mistake)
---@param prop number The surface property index
function Effect:setSurfaceProp(prop) end

--- Sets the effect's scale
---@param scale number The number scale
function Effect:setScale(scale) end

--- Returns the effect's hitbox ID
---@return number # The effect's hitbox ID
function Effect:getHitBox() end

--- Returns the effect's scale
---@return number # The effect's scale
function Effect:getScale() end

--- Returns the effect's start position
---@return Vector # The effect's start position
function Effect:getStart() end

--- Sets the effect's damage type
---@param dmgtype number The damage type, see the DMG enums
function Effect:setDamageType(dmgtype) end

--- Sets the effect's flags
---@param flags number The flags
function Effect:setFlags(flags) end

--- Sets the effect's radius
---@param radius number The radius
function Effect:setRadius(radius) end

--- Returns byte which represents the color of the effect.
---@return number # The effect's color as a byte
function Effect:getColor() end

--- Sets the effect's hitbox
---@param hitbox number The hitbox
function Effect:setHitBox(hitbox) end

--- Sets the effect's attachment
---@param attachment number The new attachment ID of the effect
function Effect:setAttachment(attachment) end

--- Returns the effect's normal
---@return Vector # The effect's normal
function Effect:getNormal() end

--- Returns the effect's flags
---@return number # The effect's flags
function Effect:getFlags() end

--- Plays the effect
---@param eff string The effect type name to play
function Effect:play(eff) end

--- Sets the effect's entity
---@param ent Entity The entity
function Effect:setEntity(ent) end

--- Sets the effect's normal
---@param normal Vector The vector normal
function Effect:setNormal(normal) end

--- Returns the effect's damagetype
---@return number # The effect's damagetype
function Effect:getDamageType() end

--- Returns the effect's entindex
---@return number # The effect's entindex
function Effect:getEntIndex() end
