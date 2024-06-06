---@meta

---@class Hologram
local Hologram = {}

--- Sets the hologram size in game units
---@param size Vector Vector new size in game units
function Hologram:setSize(size) end

--- Suppress Engine Lighting of a hologram. Disabled by default.
---@return boolean # Whether engine lighting is suppressed
function Hologram:getSuppressEngineLighting() end

--- Suppress Engine Lighting of a hologram. Disabled by default.
---@param suppress boolean Boolean to represent if shading should be set or not.
function Hologram:suppressEngineLighting(suppress) end

--- Removes engine effects from the hologram
---@param effect number The effects to remove. See EF Enums
function Hologram:removeEffects(effect) end

--- Sets the texture filtering function when viewing a close texture
---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMag(val) end

--- Sets the hologram's angles.
---@param ang Angle New angles
function Hologram:setAngles(ang) end

--- Sets the hologram scale. Basically the same as setRenderMatrix() with a scaled matrix
---@param scale Vector Vector new scale
function Hologram:setScale(scale) end

--- Sets the hologram's movetype
---@param Movetype number to set, either MOVETYPE.NOCLIP (default) or MOVETYPE.NONE
function Hologram:setMoveType(Movetype) end

--- Animates a hologram
---@param animation number|string Animation number or string name.
---@param frame number? Optional int (Default 0) The starting frame number. Does nothing if nil
---@param rate number? Optional float (Default 1) Frame speed. Does nothing if nil
function Hologram:setAnimation(animation, frame, rate) end

--- Gets the hologram scale.
---@return Vector # Vector scale
function Hologram:getScale() end

--- Sets the player color of a hologram
--- The part of the model that is colored is determined by the model itself, and is different for each model
--- The format is Vector(r,g,b), and each color should be between 0 and 1
---@param color Vector? The player color to use, or nil to disable
function Hologram:setPlayerColor(color) end

--- Sets the model of a hologram
---@param model string string model path
function Hologram:setModel(model) end

--- Removes a hologram
function Hologram:remove() end

--- Updates a clip plane
---@param index number Whatever number you want the clip to be
---@param enabled boolean Whether the clip is enabled
---@param origin Vector The center of the clip plane in world coordinates, or local to entity if it is specified
---@param normal Vector The the direction of the clip plane in world coordinates, or local to entity if it is specified
---@param entity Entity? (Optional) The entity to make coordinates local to, otherwise the world is used
function Hologram:setClip(index, enabled, origin, normal, entity) end

--- Manually draws a hologram, requires a 3d render context
---@param noTint boolean? If true, renders the hologram without its color and opacity. The default is for holograms to render with color or opacity, so use this argument if you need that behavior.
function Hologram:draw(noTint) end

--- Sets the texture filtering function when viewing a far texture
---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMin(val) end

--- Sets the hologram's angular velocity.
---@param angvel Angle *Vector* angular velocity.
function Hologram:setAngVel(angvel) end

--- Gets the player color of a hologram
--- The part of the model that is colored is determined by the model itself, and is different for each model
--- The format is Vector(r,g,b), and each color should be between 0 and 1
---@return Vector? # color The player color to use, or nil if disabled
function Hologram:getPlayerColor() end

--- Applies engine effects to the hologram
---@param effect number The effects to add. See EF Enums
function Hologram:addEffects(effect) end

--- Sets the hologram linear velocity
---@param vel Vector New velocity
function Hologram:setVel(vel) end

--- Sets a hologram entity's rendermatrix
---@param mat VMatrix Starfall matrix to use
function Hologram:setRenderMatrix(mat) end

--- Sets the hologram's position.
---@param vec Vector New position
function Hologram:setPos(vec) end

