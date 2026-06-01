---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Effect type.
---@class Effect
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L23).
local Effect = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L113).
---@return Angle # The effect's angle
function Effect:getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's attachment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L119).
---@return number # The effect's attachment ID
function Effect:getAttachment() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns byte which represents the color of the effect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L125).
---@return number # The effect's color as a byte
function Effect:getColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's damagetype.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L131).
---@return number # The effect's damagetype
function Effect:getDamageType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's entindex.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L137).
---@return number # The effect's entindex
function Effect:getEntIndex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L143).
---@return Entity # The effect's entity
function Effect:getEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's flags.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L149).
---@return number # The effect's flags
function Effect:getFlags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's hitbox ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L155).
---@return number # The effect's hitbox ID
function Effect:getHitBox() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's magnitude.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L161).
---@return number # The effect's magnitude
function Effect:getMagnitude() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's material index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L167).
---@return number # The effect's material index
function Effect:getMaterialIndex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's normal.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L173).
---@return Vector # The effect's normal
function Effect:getNormal() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's origin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L179).
---@return Vector # The effect's origin
function Effect:getOrigin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's radius.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L185).
---@return number # The effect's radius
function Effect:getRadius() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L191).
---@return number # The effect's scale
function Effect:getScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's start position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L197).
---@return Vector # The effect's start position
function Effect:getStart() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the effect's surface prop.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L203).
---@return number # The effect's surface property index
function Effect:getSurfaceProp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Plays the effect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L98).
---@param eff string # The effect type name to play
function Effect:play(eff) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L209).
---@param ang Angle # The angles
function Effect:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's attachment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L215).
---@param attachment number # The new attachment ID of the effect
function Effect:setAttachment(attachment) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's color.
--- Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to 0-255 range.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L222).
---@param color number # The color represented by a byte 0-255.
function Effect:setColor(color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's damage type.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L230).
---@param dmgtype number # The damage type, see the DMG enums
function Effect:setDamageType(dmgtype) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's entity index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L237).
---@param index number # The entity index
function Effect:setEntIndex(index) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L244).
---@param ent Entity # The entity
function Effect:setEntity(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's flags.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L250).
---@param flags number # The flags
function Effect:setFlags(flags) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's hitbox.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L257).
---@param hitbox number # The hitbox
function Effect:setHitBox(hitbox) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's magnitude.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L264).
---@param magnitude number # The magnitude
function Effect:setMagnitude(magnitude) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's material index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L271).
---@param mat number # The material index
function Effect:setMaterialIndex(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's normal.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L278).
---@param normal Vector # The vector normal
function Effect:setNormal(normal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's origin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L284).
---@param origin Vector # The vector origin
function Effect:setOrigin(origin) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's radius.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L290).
---@param radius number # The radius
function Effect:setRadius(radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L297).
---@param scale number # The number scale
function Effect:setScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's start pos.
--- Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L304).
---@param start Vector # The vector start
function Effect:setStart(start) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the effect's surface property.
--- Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to -1-254 range.(yes, that's not a mistake).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/effect.lua#L311).
---@param prop number # The surface property index
function Effect:setSurfaceProp(prop) end
