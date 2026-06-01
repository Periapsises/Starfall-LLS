---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Hologram type.
---@class Hologram : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L52).
local Hologram = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Applies engine effects to the hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L533).
---@param effect number # The effects to add. See EF Enums
function Hologram:addEffects(effect) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Manually draws a hologram, requires a 3d render context.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L323).
---@param noTint boolean? # If true, renders the hologram without its color and opacity. The default is for holograms to render with color or opacity, so use this argument if you need that behavior.
function Hologram:draw(noTint) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the player color of a hologram.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L363).
---@return Vector? # color The player color to use, or nil if disabled
function Hologram:getPlayerColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the hologram scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L434).
---@return Vector # Vector scale
function Hologram:getScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suppress Engine Lighting of a hologram. Disabled by default.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L452).
---@return boolean # Whether engine lighting is suppressed
function Hologram:getSuppressEngineLighting() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L555).
function Hologram:remove() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes engine effects from the hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L544).
---@param effect number # The effects to remove. See EF Enums
function Hologram:removeEffects(effect) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L224).
---@param ang Angle # New angles
function Hologram:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Animates a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L474).
---@param animation number|string # Animation number or string name.
---@param frame number? # Optional int (Default 0) The starting frame number. Does nothing if nil
---@param rate number? # Optional float (Default 1) Frame speed. Does nothing if nil
function Hologram:setAnimation(animation, frame, rate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Updates a clip plane.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L375).
---@param index number # Whatever number you want the clip to be
---@param enabled boolean # Whether the clip is enabled
---@param origin Vector? # The center of the clip plane in world coordinates, or local to entity if it is specified. Only used if enabled.
---@param normal Vector? # The the direction of the clip plane in world coordinates, or local to entity if it is specified. Only used if enabled.
---@param entity Entity? # (Optional) The entity to make coordinates local to, otherwise the world is used. Only used if enabled.
function Hologram:setClip(index, enabled, origin, normal, entity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set the cull mode for a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L505).
---@param mode number # Cull mode. 0 for counter clock wise, 1 for clock wise
function Hologram:setCullMode(mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a close texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L263).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMag(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a far texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L280).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMin(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's angles local to its parent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L250).
---@param ang Angle # New angles
function Hologram:setLocalAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram's local angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L183).
---@param angvel Angle # *Vector* local angular velocity.
function Hologram:setLocalAngularVelocity(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's position local to its parent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L237).
---@param vec Vector # New position
function Hologram:setLocalPos(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram local linear velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L168).
---@param vel Vector # New local velocity
function Hologram:setLocalVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the model of a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L460).
---@param model string # string model path
function Hologram:setModel(model) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram's movetype.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L198).
---@param Movetype number # to set, either MOVETYPE.NOCLIP (default) or MOVETYPE.NONE
function Hologram:setMoveType(Movetype) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the player color of a hologram.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L351).
---@param color Vector? # The player color to use, or nil to disable
function Hologram:setPlayerColor(color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L211).
---@param vec Vector # New position
function Hologram:setPos(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set the render group for a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L517).
---@param group number|nil # Render group. If unset, the engine will decide the render group based on the entity's materials. Can be RENDERGROUP.OPAQUE RENDERGROUP.TRANSLUCENT RENDERGROUP.BOTH RENDERGROUP.VIEWMODEL RENDERGROUP.VIEWMODEL.TRANSLUCENT RENDERGROUP.OPAQUE.BRUSH
function Hologram:setRenderGroup(group) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a hologram entity's rendermatrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L297).
---@param mat VMatrix # Starfall matrix to use
function Hologram:setRenderMatrix(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram scale. Basically the same as setRenderMatrix() with a scaled matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L412).
---@param scale Vector # Vector new scale
function Hologram:setScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram size in game units.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L421).
---@param size Vector # Vector new size in game units
function Hologram:setSize(size) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suppress Engine Lighting of a hologram. Disabled by default.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L442).
---@param suppress boolean # Boolean to represent if shading should be set or not.
function Hologram:suppressEngineLighting(suppress) end
