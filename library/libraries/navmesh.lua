---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Library for navmesh navigation with the NavArea type.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L17).
navmesh = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Add this position and normal to the list of walkable positions, used before map generation with navmesh.beginGeneration.
--- Requires the `navmesh.modify` permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L99).
---@param pos Vector # The terrain position.
---@param normal Vector # The terrain normal.
function navmesh.addWalkableSeed(pos, normal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Starts the generation of a new navmesh.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L60).
function navmesh.beginGeneration() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Clears all the walkable positions, used before calling navmesh.beginGeneration.
--- Requires the `navmesh.modify` permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L108).
function navmesh.clearWalkableSeeds() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a new NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L143).
---@param corner Vector # The first corner of the new NavArea
---@param opposite_corner Vector # The opposite (diagonally) corner of the new NavArea
---@return NavArea? # The new NavArea or nil if we failed for some reason
function navmesh.createNavArea(corner, opposite_corner) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a bunch of areas within distance, used to find hiding spots by NextBots for example.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L175).
---@param pos Vector # The position to search around
---@param radius number # Radius to search within (max 100000)
---@param stepdown number # Maximum fall distance allowed (max 50000)
---@param stepup number # Maximum jump height allowed (max 50000)
---@return table # A table of immutable `NavArea`s
function navmesh.find(pos, radius, stepdown, stepup) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns an integer indexed table of all `NavArea`s on the current map.
--- If the map doesn't have a navmesh generated then this will return an empty table.
--- The navareas will be immutable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L163).
---@return table # A table of all the `NavArea`s on the current map
function navmesh.getAllNavAreas() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the position of the edit cursor when nav_edit is set to 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L233).
---@return Vector # The position of the edit cursor.
function navmesh.getGetEditCursorPosition() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the currently marked NavArea, for use with editing console commands.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L115).
---@return NavArea # The currently marked NavArea.
function navmesh.getMarkedArea() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the NavArea contained in this position that also satisfies the elevation limit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L212).
---@param pos Vector # The position to search for.
---@param limit number # The elevation limit at which the NavArea will be searched.
---@return NavArea # The NavArea.
function navmesh.getNavArea(pos, limit) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the NavArea at the given id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L204).
---@param id number # ID of the NavArea to get. Starts with 1.
---@return NavArea # The NavArea with given ID.
function navmesh.getNavAreaByID(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the highest ID of all nav areas on the map.
--- While this can be used to get all nav areas, this number may not actually be the actual number of nav areas on the map.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L197).
---@return number # The highest ID of all nav areas on the map.
function navmesh.getNavAreaCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the closest NavArea to given position at the same height, or beneath it.
--- This function will ignore blocked NavAreas.
--- See navmesh.getNavArea for a function that does see blocked areas.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L221).
---@param pos Vector # The position to look from
---@param maxDist number # Maximum distance from the given position that the function will look for a CNavArea (Default 10000)
---@param checkLOS boolean # If this is set to true then the function will internally do a trace from the starting position to each potential CNavArea with a MASK_NPCSOLID_BRUSHONLY. If the trace fails then the CNavArea is ignored. If this is set to false then the function will find the closest CNavArea through anything, including the world. (Default false)
---@param checkGround boolean # If checkGround is true then this function will internally call navmesh.getNavArea to check if there is a CNavArea directly below the position, and return it if so, before checking anywhere else. (Default true)
---@return NavArea # The closest NavArea found with the given parameters, or a NULL NavArea if one was not found.
function navmesh.getNearestNavArea(pos, maxDist, checkLOS, checkGround) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the classname of the player spawn entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L121).
---@return string # The classname of the spawn point entity. By default returns "info_player_start"
function navmesh.getPlayerSpawnName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Whether we're currently generating a new navmesh with navmesh.beginGeneration.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L66).
---@return boolean # Whether we're generating a nav mesh or not.
function navmesh.isGenerating() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if a navmesh has been loaded when loading the map.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L72).
---@return boolean # Whether a navmesh has been loaded when loading the map.
function navmesh.isLoaded() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.
--- Requires the 'navmesh.load' privilege.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L78).
function navmesh.load() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Deletes every NavArea and NavLadder on the map without saving the changes.
--- Requires the 'navmesh.reset' privilege.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L85).
function navmesh.reset() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Saves any changes made to navmesh to the .nav file.
--- Requires the 'navmesh.save' privilege.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L92).
function navmesh.save() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the CNavArea as marked, so it can be used with editing console commands.
--- Requires the `navmesh.modify` permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L127).
---@param area NavArea # The CNavArea to set as the marked area.
function navmesh.setMarkedArea(area) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the classname of the default spawn point entity, used before generating a new navmesh with navmesh.beginGeneration.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L135).
---@param spawnPointClass string # The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
function navmesh.setPlayerSpawnName(spawnPointClass) end
