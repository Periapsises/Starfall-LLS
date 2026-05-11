---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Provides functions for doing line/AABB traces.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L11).
trace = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the aim vector from a 2D screen position. This is essentially a generic version of input.screenToVector, where you can define the view angles and screen size manually.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L244).
---@param viewAngles Angle # View angles
---@param viewFOV number # View field of view
---@param x number # X position on the screen
---@param y number # Y position on the screen
---@param screenWidth number # Screen width
---@param screenHeight number # Screen height
---@return Vector # The aim vector
function trace.aimVector(viewAngles, viewFOV, x, y, screenWidth, screenHeight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns True if player is allowed to use trace.decal.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L224).
---@return boolean # Whether the decal trace can be used
function trace.canCreateDecal() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a line trace and applies a decal to wherever is hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L166).
---@param name string # The decal name, see https://wiki.facepunch.com/gmod/util.Decal
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|nil # (Optional) Entity/array of entities to filter
function trace.decal(name, start, endpos, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Paints a decal on a specific entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L188).
---@param material Material # The material to paint.
---@param ent Entity # The entity to apply the decal to
---@param position Vector # The position of the decal.
---@param normal Vector # The direction of the decal.
---@param color Color # The color of the decal. This only works when used on a brush model and only if the decal material has set $vertexcolor to 1.
---@param w number # The width scale of the decal.
---@param h number # The height scale of the decal.
function trace.decalEx(material, ent, position, normal, color, w, h) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of decals player is allowed to use.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L230).
---@return number # The number of decals left
function trace.decalsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a swept-AABB trace.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L83).
---@param start Vector # Start position
---@param endpos Vector # End position
---@param minbox Vector # Lower box corner
---@param maxbox Vector # Upper box corner
---@param filter Entity|table|function|nil # Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
---@param mask number? # Trace mask
---@param colgroup number? # The collision group of the trace
---@param ignworld boolean? # Whether the trace should ignore world
---@param whitelist boolean? # Make 'filter' param array act as a hit whitelist instead of blacklist
---@return table # Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
function trace.hull(start, endpos, minbox, maxbox, filter, mask, colgroup, ignworld, whitelist) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a ray box intersection returning the position hit, normal, and trace fraction, or nil if not hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L115).
---@param rayStart Vector # The origin of the ray
---@param rayDelta Vector # The direction and length of the ray
---@param boxOrigin Vector # The origin of the box
---@param boxAngles Angle # The box's angles
---@param boxMins Vector # The box min bounding vector
---@param boxMaxs Vector # The box max bounding vector
---@return Vector? # Hit position or nil if not hit
---@return Vector? # Hit normal or nil if not hit
---@return number? # Hit fraction or nil if not hit
function trace.intersectRayWithOBB(rayStart, rayDelta, boxOrigin, boxAngles, boxMins, boxMaxs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a ray plane intersection returning the position hit or nil if not hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L150).
---@param rayStart Vector # The origin of the ray
---@param rayDelta Vector # The direction and length of the ray
---@param planeOrigin Vector # The origin of the plane
---@param planeNormal Vector # The normal of the plane
---@return Vector? # Hit position or nil if not hit
function trace.intersectRayWithPlane(rayStart, rayDelta, planeOrigin, planeNormal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs a box-sphere intersection and returns whether there was an intersection or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L137).
---@param boxMins Vector # The minimum extents of the World Axis-Aligned box.
---@param boxMaxs Vector # The maximum extents of the World Axis-Aligned box.
---@param spherePos Vector # Position of the sphere.
---@param sphereRadius number # The radius of the sphere.
---@return boolean # true if there is an intersection, false otherwise.
function trace.isBoxIntersectingSphere(boxMins, boxMaxs, spherePos, sphereRadius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a line trace.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L59).
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|function|nil # Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
---@param mask number? # Trace mask
---@param colgroup number? # The collision group of the trace
---@param ignworld boolean? # Whether the trace should ignore world
---@param whitelist boolean? # Make 'filter' param array act as a hit whitelist instead of blacklist
---@return table # Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
function trace.line(start, endpos, filter, mask, colgroup, ignworld, whitelist) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the contents of the position specified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L236).
---@param position Vector # The position to get the CONTENTS of
---@return number # Contents bitflag, see the CONTENTS enums
function trace.pointContents(position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Removes world decals at given position, in given radius. Does not remove decals on models!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L209).
---@param pos Vector # The position at which to remove decals.
---@param distance number # Radius of the sphere to remove decals in.
---@param limit number? # If set to above 0, only remove this many decals.
function trace.removeDecalsAt(pos, distance, limit) end
