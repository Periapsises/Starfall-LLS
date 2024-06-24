---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Hologram type.
---@class Hologram : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L42).
local Hologram = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Applies engine effects to the hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L487).
---@param effect number # The effects to add. See EF Enums
function Hologram:addEffects(effect) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Manually draws a hologram, requires a 3d render context.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L299).
---@param noTint boolean? # If true, renders the hologram without its color and opacity. The default is for holograms to render with color or opacity, so use this argument if you need that behavior.
function Hologram:draw(noTint) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the player color of a hologram.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L341).
---@return Vector? # color The player color to use, or nil if disabled
function Hologram:getPlayerColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the hologram scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L417).
---@return Vector # Vector scale
function Hologram:getScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suppress Engine Lighting of a hologram. Disabled by default.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L437).
---@return boolean # Whether engine lighting is suppressed
function Hologram:getSuppressEngineLighting() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L511).
function Hologram:remove() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes engine effects from the hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L499).
---@param effect number # The effects to remove. See EF Enums
function Hologram:removeEffects(effect) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram's angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L185).
---@param angvel Angle # *Vector* angular velocity.
function Hologram:setAngVel(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L225).
---@param ang Angle # New angles
function Hologram:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Animates a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L458).
---@param animation number|string # Animation number or string name.
---@param frame number? # Optional int (Default 0) The starting frame number. Does nothing if nil
---@param rate number? # Optional float (Default 1) Frame speed. Does nothing if nil
function Hologram:setAnimation(animation, frame, rate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Updates a clip plane.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L355).
---@param index number # Whatever number you want the clip to be
---@param enabled boolean # Whether the clip is enabled
---@param origin Vector # The center of the clip plane in world coordinates, or local to entity if it is specified
---@param normal Vector # The the direction of the clip plane in world coordinates, or local to entity if it is specified
---@param entity Entity? # (Optional) The entity to make coordinates local to, otherwise the world is used
function Hologram:setClip(index, enabled, origin, normal, entity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a close texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L241).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMag(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the texture filtering function when viewing a far texture.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L257).
---@param val number # The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
function Hologram:setFilterMin(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the model of a hologram.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L444).
---@param model string # string model path
function Hologram:setModel(model) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram's movetype.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L196).
---@param Movetype number # to set, either MOVETYPE.NOCLIP (default) or MOVETYPE.NONE
function Hologram:setMoveType(Movetype) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the player color of a hologram.
--- The part of the model that is colored is determined by the model itself, and is different for each model.
--- The format is Vector(r,g,b), and each color should be between 0 and 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L326).
---@param color Vector? # The player color to use, or nil to disable
function Hologram:setPlayerColor(color) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram's position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L209).
---@param vec Vector # New position
function Hologram:setPos(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a hologram entity's rendermatrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L273).
---@param mat VMatrix # Starfall matrix to use
function Hologram:setRenderMatrix(mat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram scale. Basically the same as setRenderMatrix() with a scaled matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L391).
---@param scale Vector # Vector new scale
function Hologram:setScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the hologram size in game units.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L403).
---@param size Vector # Vector new size in game units
function Hologram:setSize(size) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the hologram linear velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L172).
---@param vel Vector # New velocity
function Hologram:setVel(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suppress Engine Lighting of a hologram. Disabled by default.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L424).
---@param suppress boolean # Boolean to represent if shading should be set or not.
function Hologram:suppressEngineLighting(suppress) end

