---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Provides functions for doing line/AABB traces.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L19).
trace = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the aim vector from a 2D screen position. This is essentially a generic version of input.screenToVector, where you can define the view angles and screen size manually.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L208).
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
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L188).
---@return boolean # Whether the decal trace can be used
function trace.canCreateDecal() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a line trace and applies a decal to wherever is hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L168).
---@param name string # The decal name, see https://wiki.facepunch.com/gmod/util.Decal
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|nil # (Optional) Entity/array of entities to filter
function trace.decal(name, start, endpos, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of decals player is allowed to use.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L194).
---@return number # The number of decals left
function trace.decalsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a swept-AABB trace.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L89).
---@param start Vector # Start position
---@param endpos Vector # End position
---@param minbox Vector # Lower box corner
---@param maxbox Vector # Upper box corner
---@param filter Entity|table|function|nil # Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
---@param mask number? # Trace mask
---@param colgroup number? # The collision group of the trace
---@param ignworld boolean? # Whether the trace should ignore world
---@return table # Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
function trace.hull(start, endpos, minbox, maxbox, filter, mask, colgroup, ignworld) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a ray box intersection returning the position hit, normal, and trace fraction, or nil if not hit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L117).
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
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L152).
---@param rayStart Vector # The origin of the ray
---@param rayDelta Vector # The direction and length of the ray
---@param planeOrigin Vector # The origin of the plane
---@param planeNormal Vector # The normal of the plane
---@return Vector? # Hit position or nil if not hit
function trace.intersectRayWithPlane(rayStart, rayDelta, planeOrigin, planeNormal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs a box-sphere intersection and returns whether there was an intersection or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L139).
---@param boxMins Vector # The minimum extents of the World Axis-Aligned box.
---@param boxMaxs Vector # The maximum extents of the World Axis-Aligned box.
---@param spherePos Vector # Position of the sphere.
---@param sphereRadius number # The radius of the sphere.
---@return boolean # true if there is an intersection, false otherwise.
function trace.isBoxIntersectingSphere(boxMins, boxMaxs, spherePos, sphereRadius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Does a line trace.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L67).
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|function|nil # Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
---@param mask number? # Trace mask
---@param colgroup number? # The collision group of the trace
---@param ignworld boolean? # Whether the trace should ignore world
---@return table # Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
function trace.line(start, endpos, filter, mask, colgroup, ignworld) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the contents of the position specified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/trace.lua#L200).
---@param position Vector # The position to get the CONTENTS of
---@return number # Contents bitflag, see the CONTENTS enums
function trace.pointContents(position) end
