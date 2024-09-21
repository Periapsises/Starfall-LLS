---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- NavArea type, returned by navmesh library functions.
---@class NavArea
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L23).
local NavArea = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a hiding spot onto this nav area.
--- There's a limit of 255 hiding spots per area.
--- 0 = None (not recommended).
--- 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby.
--- 2 = good sniper spot, had at least one decent sniping corridor.
--- 4 = perfect sniper spot, can see either very far, or a large area, or both.
--- 8 = exposed, spot in the open, usually on a ledge or cliff.
--- Values over 255 will be clamped.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L722).
---@param pos Vector # The position of the hiding spot on the nav area
---@param flags number # Flags describing what kind of hiding spot this is.
function NavArea:addHidingSpot(pos, flags) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds this CNavArea to the closed list, a list of areas that have been checked by A* pathfinding algorithm.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L737).
function NavArea:addToClosedList() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds this CNavArea to the Open List.
--- Requires `navarea.openlist` permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L742).
function NavArea:addToOpenList() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Clears the open and closed lists for a new search.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L749).
function NavArea:clearSearchLists() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the height difference between the edges of two connected navareas.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L329).
---@param other NavArea # The nav area to test against.
---@return number # The height change
function NavArea:computeAdjacentConnectionHeightChange(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the NAV_DIR direction that the given vector faces on this NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L313).
---@param pos Vector # The position to compute direction towards.
---@return number # The direction the vector is in relation to this NavArea. See NAV_DIR enums
function NavArea:computeDirection(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the height difference on the Z axis of the two CNavAreas. This is calculated from the center most point on both CNavAreas.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L321).
---@param other NavArea # The nav area to test against.
---@return number #
function NavArea:computeGroundHeightChange(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Connects this CNavArea to another CNavArea with a one way connection. ( From this area to the target ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L754).
---@param other NavArea # The CNavArea this area leads to.
function NavArea:connectTo(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if this NavArea contains the given vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L271).
---@param v Vector # The position to check
---@return boolean # If the vector is inside the area
function NavArea:contains(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Disconnects this nav area from given area or ladder. (Only disconnects one way).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L715).
---@param other NavArea # The other NavArea to disconnect from.
function NavArea:disconnect(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all the CNavAreas that have a ( one and two way ) connection from this NavArea.
--- If an area has a one-way incoming connection to this NavArea, then it will not be returned from this function, use NavArea:getIncomingConnections to get all one-way incoming connections.
--- See NavArea:getAdjacentAreasAtSide for a function that only returns areas from one side/direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L337).
---@return table # A table of all CNavArea that have a ( one and two way ) connection from this CNavArea.
function NavArea:getAdjacentAreas() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all the CNavAreas that have a ( one and two way ) connection from this CNavArea in given direction.
--- If an area has a one-way incoming connection to this CNavArea, then it will not be returned from this function, use CNavArea:GetIncomingConnections to get all incoming connections.
--- See CNavArea:getAdjacentAreas for a function that returns all areas from all sides/directions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L350).
---@param navDir number # The direction, in which to look for CNavAreas, see NAV_DIR enums
---@return table # A table of all CNavArea that have a ( one and two way ) connection from this CNavArea in given direction.
function NavArea:getAdjacentAreasAtSide(navDir) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
--- See CNavArea:GetAdjacentCountAtSide for a function that only returns area count from one side/direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L365).
---@return number # The amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
function NavArea:getAdjacentCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
--- See CNavArea:getAdjacentCount for a function that returns CNavArea count from/in all sides/directions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L373).
---@param The number # direction, in which to look for CNavAreas, see NAV_DIR enums.
---@return number # The amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
function NavArea:getAdjacentCountAtSide(The) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the attribute mask for the given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L383).
---@return number # Attribute mask for this CNavArea, see NAV_MESH for the specific flags.
function NavArea:getAttributes() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the center position of the CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L390).
---@return Vector # The center vector.
function NavArea:getCenter() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the closest point of this NavArea from the given position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L397).
---@param pos Vector # The given position, can be outside of the NavArea bounds.
---@return Vector # The closest point on the NavArea.
function NavArea:getClosestPointOnArea(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the vector position of the corner for the given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L405).
---@param cornerId number # The target corner to get the position of, takes NAV_CORNER.
---@return Vector # The vector position of the corner.
function NavArea:getCorner(cornerId) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the cost from starting area this area when pathfinding. Set by NavArea:setCostSoFar.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L414).
---@return number # The cost so far.
function NavArea:getCostSoFar() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of very bad hiding spots in this area.
--- See also NavArea:getHidingSpots.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L421).
---@return table # A table of Vectors
function NavArea:getExposedSpots() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns size info about the nav area.
--- Vector hi.
--- Vector lo.
--- number SizeX.
--- number SizeY.
--- number SizeZ.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L433).
---@return table # Struct containing the above keys
function NavArea:getExtentInfo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns this CNavAreas unique ID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L445).
---@return number # The unique ID.
function NavArea:getID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all the CNavAreas that have a one-way connection to this CNavArea.
--- If a CNavArea has a two-way connection to or from this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreas to get outgoing ( one and two way ) connections.
--- See CNavArea:getIncomingConnectionsAtSide for a function that returns one-way incoming connections from only one side/direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L452).
---@return table # Table of all CNavAreas with one-way connection to this CNavArea.
function NavArea:getIncomingConnections() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of all the CNavAreas that have a one-way connection to this CNavArea from given direction.
--- If a CNavArea has a two-way connection to or from this CNavArea then it will not be returned from this function, use CNavArea:getAdjacentAreas to get outgoing ( one and two way ) connections.
--- See CNavArea:getIncomingConnections for a function that returns one-way incoming connections from all sides/directions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L465).
---@param navDir number # The direction, from which to look for CNavAreas, see NAV_DIR enums.
---@return table # Table of all CNavAreas with one-way connection to this CNavArea from given direction.
function NavArea:getIncomingConnectionsAtSide(navDir) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the parent NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L481).
---@return NavArea # The parent NavArea
function NavArea:getParent() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns how this CNavArea is connected to its parent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L488).
---@return number #
function NavArea:getParentHow() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the place of the NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L495).
---@return string # The place of the nav area, or no value if it doesn't have a place set.
function NavArea:getPlace() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L502).
---@param navDir number # The direction, from which to look for CNavAreas, see NAV_DIR enums.
---@return NavArea # The random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction, if any.
function NavArea:getRandomAdjacentAreaAtSide(navDir) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a random point on the nav area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L511).
---@return Vector # The random point on the nav area.
function NavArea:getRandomPoint() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the width this Nav Area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L518).
---@return number # Width
function NavArea:getSizeX() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the height this Nav Area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L525).
---@return number # Height
function NavArea:getSizeY() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the total cost when passing from starting area to the goal area through this node. Set by NavArea:setTotalCost.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L532).
---@return number # The total cost
function NavArea:getTotalCost() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the elevation of this Nav Area at the given position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L539).
---@param The Vector # position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task.
---@return number # Elevation
function NavArea:getZ(The) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if the given CNavArea has this attribute flag set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L547).
---@param attributes number # Attribute mask to check for, see NAV_MESH enums
---@return boolean # True if the CNavArea matches the given mask. False otherwise.
function NavArea:hasAttributes(attributes) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L556).
---@param teamID number? # The team ID to test, -2 = any team. Only 2 actual teams are available, 0 and 1. (Default -2)
---@param ignoreNavBlockers boolean? # Whether to ignore func_nav_blocker entities. (Default false)
---@return boolean # Whether the area is blocked or not
function NavArea:isBlocked(teamID, ignoreNavBlockers) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this node is in the Closed List.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L568).
---@return boolean # Whether this node is in the Closed List.
function NavArea:isClosed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this CNavArea can completely (i.e. all corners of this area can see all corners of the given area) see the given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L575).
---@param area NavArea # The area to test visibility with.
---@return boolean # Whether this CNavArea can see the given CNavArea.
function NavArea:isCompletelyVisible(area) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
--- See NavArea:isConnectedAtSide for a function that only checks for outgoing connections in one direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L286).
---@param other NavArea # The other NavArea to check for connection to.
---@return boolean # Whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
function NavArea:isConnected(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea in given direction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L295).
---@param other NavArea # The other NavArea to check for connection to.
---@param navDirType number # The direction, in which to look for the connection. See NAV_DIR enums
---@return boolean #
function NavArea:isConnectedAtSide(other, navDirType) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this Nav Area is in the same plane as the given one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L305).
---@param other NavArea # The other NavArea to check against
---@return boolean # Whether we're coplanar or not.
function NavArea:isCoplanar(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this Nav Area is flat within the tolerance of the nav_coplanar_slope_limit_displacement and nav_coplanar_slope_limit convars.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L279).
---@return boolean # Whether this NavArea is mostly flat.
function NavArea:isFlat() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this area is in the Open List.
--- Used in pathfinding via the A* algorithm.
--- More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L239).
---@return boolean # Whether this area is in the Open List.
function NavArea:isOpen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the Open List is empty or not.
--- Used in pathfinding via the A* algorithm.
--- More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L248).
---@return boolean # Whether the Open List is empty or not.
function NavArea:isOpenListEmpty() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns if this position overlaps the NavArea within the given tolerance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L583).
---@param pos Vector # The position to test.
---@param tolerance number? # The tolerance of the overlapping, set to 0 for no tolerance. (Default 0)
---@return number # Whether the given position overlaps the NavArea or not.
function NavArea:isOverlapping(pos, tolerance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if this CNavArea is overlapping the given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L594).
---@param area NavArea # The area to test.
---@return boolean # True if the given CNavArea overlaps this CNavArea at any point.
function NavArea:isOverlappingArea(area) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this CNavArea can see given position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L602).
---@param pos Vector # The position to test.
---@param ignoreEnt Entity? # If set, the given entity will be ignored when doing LOS tests (Default NULL)
---@return boolean # Whether the given position is visible from this area
function NavArea:isPartiallyVisible(pos, ignoreEnt) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this CNavArea can potentially see the given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L611).
---@param area NavArea # The area to test.
---@return boolean # Whether the given area is visible from this area
function NavArea:isPotentiallyVisible(area) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns if we're shaped like a square.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L619).
---@return boolean # If we're a square or not.
function NavArea:isRoughlySquare() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Whether this NavArea is placed underwater.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L264).
---@return boolean # Whether we're underwater or not.
function NavArea:isUnderwater() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this NavArea is valid or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L257).
---@return boolean # Whether this NavArea is valid or not
function NavArea:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether we can be seen from the given position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L626).
---@param pos Vector # The position to check.
---@return boolean # Whether we can be seen or not.
---@return Vector # If we can be seen, this is returned with either the center or one of the corners of the Nav Area.
function NavArea:isVisible(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Drops a corner or all corners of a CNavArea to the ground below it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L636).
---@param corner number # The corner(s) to drop, uses NAV_CORNER enums
function NavArea:placeOnGround(corner) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.
--- Requires the `navarea.openlist` permission.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L643).
---@return NavArea # The CNavArea from the Open List with the lowest cost to traverse to from the starting node.
function NavArea:popOpenList() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the given NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L652).
function NavArea:remove() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the given NavArea from the Closed List.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L660).
function NavArea:removeFromClosedList() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the attributes for given CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L665).
---@param attributes number # The attribute bitflag. See NAV_MESH enums
function NavArea:setAttributes(attributes) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the position of a corner of a nav area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L672).
---@param corner number # The corner to set, uses NAV_CORNER enums
---@param pos Vector # The new position to set.
function NavArea:setCorner(corner, pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the cost from starting area this area when pathfinding.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L680).
---@param cost number # The cost so far
function NavArea:setCostSoFar(cost) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the new parent of this CNavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L687).
---@param parent NavArea # The new parent to set
---@param how number # How we get from parent to us using NAV_TRAVERSE_TYPE
function NavArea:setParent(parent, how) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the Place of the nav area.
--- There is a limit of 256 Places per nav file.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L695).
---@param place string? # Place to set. Leave as nil to remove place from NavArea
---@return boolean # True if operation succeeded, false otherwise.
function NavArea:setPlace(place) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the total cost when passing from starting area to the goal area through this node.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L703).
---@param cost number # The total cost of the path to set. (>= 0)
function NavArea:setTotalCost(cost) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Moves this open list to appropriate position based on its CNavArea:getTotalCost compared to the total cost of other areas in the open list.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/navmesh.lua#L710).
function NavArea:updateOnOpenList() end
