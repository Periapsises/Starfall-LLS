---@meta

trace = {}

--- Returns the number of decals player is allowed to use
---@return number # The number of decals left
function trace.decalsLeft() end

--- Returns the contents of the position specified.
---@param position Vector # The position to get the CONTENTS of
---@return number # Contents bitflag, see the CONTENTS enums
function trace.pointContents(position) end

--- Calculates the aim vector from a 2D screen position. This is essentially a generic version of input.screenToVector, where you can define the view angles and screen size manually.
---@param viewAngles Angle # View angles
---@param viewFOV number # View field of view
---@param x number # X position on the screen
---@param y number # Y position on the screen
---@param screenWidth number # Screen width
---@param screenHeight number # Screen height
---@return Vector # The aim vector
function trace.aimVector(viewAngles, viewFOV, x, y, screenWidth, screenHeight) end

--- Does a line trace and applies a decal to wherever is hit
---@param name string # The decal name, see https://wiki.facepunch.com/gmod/util.Decal
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|nil # (Optional) Entity/array of entities to filter
function trace.decal(name, start, endpos, filter) end

--- Returns True if player is allowed to use trace.decal
---@return boolean # Whether the decal trace can be used
function trace.canCreateDecal() end

--- Does a ray plane intersection returning the position hit or nil if not hit
---@param rayStart Vector # The origin of the ray
---@param rayDelta Vector # The direction and length of the ray
---@param planeOrigin Vector # The origin of the plane
---@param planeNormal Vector # The normal of the plane
---@return Vector? # Hit position or nil if not hit
function trace.intersectRayWithPlane(rayStart, rayDelta, planeOrigin, planeNormal) end

--- Does a swept-AABB trace
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

--- Does a line trace
---@param start Vector # Start position
---@param endpos Vector # End position
---@param filter Entity|table|function|nil # Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
---@param mask number? # Trace mask
---@param colgroup number? # The collision group of the trace
---@param ignworld boolean? # Whether the trace should ignore world
---@return table # Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
function trace.line(start, endpos, filter, mask, colgroup, ignworld) end

--- Does a ray box intersection returning the position hit, normal, and trace fraction, or nil if not hit.
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
