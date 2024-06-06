---@meta

navmesh = {}

--- Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.
--- Requires the 'navmesh.load' privilege
function navmesh.load() end

--- Creates a new NavArea
---@param corner Vector # The first corner of the new NavArea
---@param opposite_corner Vector # The opposite (diagonally) corner of the new NavArea
---@return NavArea? # The new NavArea or nil if we failed for some reason
function navmesh.createNavArea(corner, opposite_corner) end

--- Deletes every NavArea and NavLadder on the map without saving the changes.
--- Requires the 'navmesh.reset' privilege
function navmesh.reset() end

--- Starts the generation of a new navmesh
function navmesh.beginGeneration() end

--- Returns the position of the edit cursor when nav_edit is set to 1.
---@return Vector # The position of the edit cursor.
function navmesh.getGetEditCursorPosition() end

--- Returns the NavArea contained in this position that also satisfies the elevation limit.
---@param pos Vector # The position to search for.
---@param limit number # The elevation limit at which the NavArea will be searched.
---@return NavArea # The NavArea.
function navmesh.getNavArea(pos, limit) end

--- Returns the closest NavArea to given position at the same height, or beneath it.
--- This function will ignore blocked NavAreas.
--- See navmesh.getNavArea for a function that does see blocked areas.
---@param pos Vector # The position to look from
---@param maxDist number # Maximum distance from the given position that the function will look for a CNavArea (Default 10000)
---@param checkLOS boolean # If this is set to true then the function will internally do a trace from the starting position to each potential CNavArea with a MASK_NPCSOLID_BRUSHONLY. If the trace fails then the CNavArea is ignored. If this is set to false then the function will find the closest CNavArea through anything, including the world. (Default false)
---@param checkGround boolean # If checkGround is true then this function will internally call navmesh.getNavArea to check if there is a CNavArea directly below the position, and return it if so, before checking anywhere else. (Default true)
---@return NavArea # The closest NavArea found with the given parameters, or a NULL NavArea if one was not found.
function navmesh.getNearestNavArea(pos, maxDist, checkLOS, checkGround) end

--- Returns an integer indexed table of all `NavArea`s on the current map.
--- If the map doesn't have a navmesh generated then this will return an empty table.
--- The navareas will be immutable.
---@return table # A table of all the `NavArea`s on the current map
function navmesh.getAllNavAreas() end

--- Returns the currently marked NavArea, for use with editing console commands.
---@return NavArea # The currently marked NavArea.
function navmesh.getMarkedArea() end

--- Returns true if a navmesh has been loaded when loading the map.
---@return boolean # Whether a navmesh has been loaded when loading the map.
function navmesh.isLoaded() end

--- Add this position and normal to the list of walkable positions, used before map generation with navmesh.beginGeneration
--- Requires the `navmesh.modify` permission
---@param pos Vector # The terrain position.
---@param normal Vector # The terrain normal.
function navmesh.addWalkableSeed(pos, normal) end

--- Sets the classname of the default spawn point entity, used before generating a new navmesh with navmesh.beginGeneration.
---@param spawnPointClass string # The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
function navmesh.setPlayerSpawnName(spawnPointClass) end

--- Clears all the walkable positions, used before calling navmesh.beginGeneration.
--- Requires the `navmesh.modify` permission
function navmesh.clearWalkableSeeds() end

--- Whether we're currently generating a new navmesh with navmesh.beginGeneration
---@return boolean # Whether we're generating a nav mesh or not.
function navmesh.isGenerating() end

--- Saves any changes made to navmesh to the .nav file.
--- Requires the 'navmesh.save' privilege
function navmesh.save() end

--- Returns a bunch of areas within distance, used to find hiding spots by NextBots for example.
---@param pos Vector # The position to search around
---@param radius number # Radius to search within (max 100000)
---@param stepdown number # Maximum fall distance allowed (max 50000)
---@param stepup number # Maximum jump height allowed (max 50000)
---@return table # A table of immutable `NavArea`s
function navmesh.find(pos, radius, stepdown, stepup) end

--- Returns the classname of the player spawn entity.
---@return string # The classname of the spawn point entity. By default returns "info_player_start"
function navmesh.getPlayerSpawnName() end

--- Sets the CNavArea as marked, so it can be used with editing console commands.
--- Requires the `navmesh.modify` permission
---@param area NavArea # The CNavArea to set as the marked area.
function navmesh.setMarkedArea(area) end

--- Returns the NavArea at the given id.
---@param id number # ID of the NavArea to get. Starts with 1.
---@return NavArea # The NavArea with given ID.
function navmesh.getNavAreaByID(id) end

--- Returns the highest ID of all nav areas on the map.
--- While this can be used to get all nav areas, this number may not actually be the actual number of nav areas on the map.
---@return number # The highest ID of all nav areas on the map.
function navmesh.getNavAreaCount() end

navmesh.NAV_TRAVERSE_TYPE = {}
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_NORTH"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_EAST"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_SOUTH"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_WEST"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_LADDER_UP"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_LADDER_DOWN"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_JUMP"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_ELEVATOR_UP"] = nil
---@type number
navmesh.NAV_TRAVERSE_TYPE["GO_ELEVATOR_DOWN"] = nil

navmesh.NAV_CORNER = {}
---@type number
navmesh.NAV_CORNER["NORTH_WEST"] = nil
---@type number
navmesh.NAV_CORNER["NORTH_EAST"] = nil
---@type number
navmesh.NAV_CORNER["SOUTH_EAST"] = nil
---@type number
navmesh.NAV_CORNER["SOUTH_WEST"] = nil
---@type number
navmesh.NAV_CORNER["NUM_CORNERS"] = nil

navmesh.NAV_MESH = {}
---@type number
navmesh.NAV_MESH["INVALID"] = nil
---@type number
navmesh.NAV_MESH["CROUCH"] = nil
---@type number
navmesh.NAV_MESH["JUMP"] = nil
---@type number
navmesh.NAV_MESH["PRECISE"] = nil
---@type number
navmesh.NAV_MESH["NO_JUMP"] = nil
---@type number
navmesh.NAV_MESH["STOP"] = nil
---@type number
navmesh.NAV_MESH["RUN"] = nil
---@type number
navmesh.NAV_MESH["WALK"] = nil
---@type number
navmesh.NAV_MESH["AVOID"] = nil
---@type number
navmesh.NAV_MESH["TRANSIENT"] = nil
---@type number
navmesh.NAV_MESH["DONT_HIDE"] = nil
---@type number
navmesh.NAV_MESH["STAND"] = nil
---@type number
navmesh.NAV_MESH["NO_HOSTAGES"] = nil
---@type number
navmesh.NAV_MESH["STAIRS"] = nil
---@type number
navmesh.NAV_MESH["NO_MERGE"] = nil
---@type number
navmesh.NAV_MESH["OBSTACLE_TOP"] = nil
---@type number
navmesh.NAV_MESH["CLIFF"] = nil
---@type number
navmesh.NAV_MESH["FUNC_COST"] = nil
---@type number
navmesh.NAV_MESH["HAS_ELEVATOR"] = nil
---@type number
navmesh.NAV_MESH["NAV_BLOCKER"] = nil

navmesh.NAV_DIR = {}
---@type number
navmesh.NAV_DIR["NORTH"] = nil
---@type number
navmesh.NAV_DIR["SOUTH"] = nil
---@type number
navmesh.NAV_DIR["EAST"] = nil
---@type number
navmesh.NAV_DIR["WEST"] = nil

