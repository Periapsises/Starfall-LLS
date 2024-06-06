---@meta

---@class NavArea
local NavArea = {}

--- Adds a hiding spot onto this nav area.
--- There's a limit of 255 hiding spots per area.
--- 0 = None (not recommended)
--- 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby
--- 2 = good sniper spot, had at least one decent sniping corridor
--- 4 = perfect sniper spot, can see either very far, or a large area, or both
--- 8 = exposed, spot in the open, usually on a ledge or cliff
--- Values over 255 will be clamped.
---@param pos Vector The position of the hiding spot on the nav area
---@param flags number Flags describing what kind of hiding spot this is.
function NavArea:addHidingSpot(pos, flags) end

--- Sets the attributes for given CNavArea.
---@param attributes number The attribute bitflag. See NAV_MESH enums
function NavArea:setAttributes(attributes) end

--- Sets the new parent of this CNavArea.
---@param parent NavArea The new parent to set
---@param how number How we get from parent to us using NAV_TRAVERSE_TYPE
function NavArea:setParent(parent, how) end

--- Whether this NavArea is placed underwater.
---@return boolean # Whether we're underwater or not.
function NavArea:isUnderwater() end

--- Returns true if this CNavArea is overlapping the given CNavArea.
---@param area NavArea The area to test.
---@return boolean # True if the given CNavArea overlaps this CNavArea at any point.
function NavArea:isOverlappingArea(area) end

--- Returns a random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction.
---@param navDir number The direction, from which to look for CNavAreas, see NAV_DIR enums.
---@return NavArea # The random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction, if any.
function NavArea:getRandomAdjacentAreaAtSide(navDir) end

--- Sets the position of a corner of a nav area.
---@param corner number The corner to set, uses NAV_CORNER enums
---@param pos Vector The new position to set.
function NavArea:setCorner(corner, pos) end

--- Returns the place of the NavArea
---@return string # The place of the nav area, or no value if it doesn't have a place set.
function NavArea:getPlace() end

--- Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.
--- Requires the `navarea.openlist` permission
---@return NavArea # The CNavArea from the Open List with the lowest cost to traverse to from the starting node.
function NavArea:popOpenList() end

--- Returns the total cost when passing from starting area to the goal area through this node. Set by NavArea:setTotalCost.
---@return number # The total cost
function NavArea:getTotalCost() end

--- Returns if we're shaped like a square.
---@return boolean # If we're a square or not.
function NavArea:isRoughlySquare() end

--- Returns true if the given CNavArea has this attribute flag set.
---@param attributes number Attribute mask to check for, see NAV_MESH enums
---@return boolean # True if the CNavArea matches the given mask. False otherwise.
function NavArea:hasAttributes(attributes) end

--- Returns whether this node is in the Closed List.
---@return boolean # Whether this node is in the Closed List.
function NavArea:isClosed() end

--- Returns a table of all the CNavAreas that have a one-way connection to this CNavArea.
--- If a CNavArea has a two-way connection to or from this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreas to get outgoing ( one and two way ) connections.
--- See CNavArea:getIncomingConnectionsAtSide for a function that returns one-way incoming connections from only one side/direction.
---@return table # Table of all CNavAreas with one-way connection to this CNavArea.
function NavArea:getIncomingConnections() end

--- Returns the amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
--- See CNavArea:getAdjacentCount for a function that returns CNavArea count from/in all sides/directions.
---@param The number direction, in which to look for CNavAreas, see NAV_DIR enums.
---@return number # The amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
function NavArea:getAdjacentCountAtSide(The) end

--- Returns whether we can be seen from the given position.
---@param pos Vector The position to check.
---@return boolean # Whether we can be seen or not.
---@return Vector # If we can be seen, this is returned with either the center or one of the corners of the Nav Area.
function NavArea:isVisible(pos) end

--- Returns a table of all the CNavAreas that have a ( one and two way ) connection from this CNavArea in given direction.
--- If an area has a one-way incoming connection to this CNavArea, then it will not be returned from this function, use CNavArea:GetIncomingConnections to get all incoming connections.
--- See CNavArea:getAdjacentAreas for a function that returns all areas from all sides/directions.
---@param navDir number The direction, in which to look for CNavAreas, see NAV_DIR enums
---@return table # A table of all CNavArea that have a ( one and two way ) connection from this CNavArea in given direction.
function NavArea:getAdjacentAreasAtSide(navDir) end

--- Returns the closest point of this NavArea from the given position.
---@param pos Vector The given position, can be outside of the NavArea bounds.
---@return Vector # The closest point on the NavArea.
function NavArea:getClosestPointOnArea(pos) end

--- Returns if this position overlaps the NavArea within the given tolerance.
---@param pos Vector The position to test.
---@param tolerance number? The tolerance of the overlapping, set to 0 for no tolerance. (Default 0)
---@return number # Whether the given position overlaps the NavArea or not.
function NavArea:isOverlapping(pos, tolerance) end

--- Disconnects this nav area from given area or ladder. (Only disconnects one way)
---@param other NavArea The other NavArea to disconnect from.
function NavArea:disconnect(other) end

--- Returns size info about the nav area.
--- Vector hi
--- Vector lo
--- number SizeX
--- number SizeY
--- number SizeZ
---@return table # Struct containing the above keys
function NavArea:getExtentInfo() end

--- Returns the amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
--- See CNavArea:GetAdjacentCountAtSide for a function that only returns area count from one side/direction.
---@return number # The amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
function NavArea:getAdjacentCount() end

--- Returns whether the Open List is empty or not.
--- Used in pathfinding via the A* algorithm.
--- More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding
---@return boolean # Whether the Open List is empty or not.
function NavArea:isOpenListEmpty() end

--- Returns whether this Nav Area is in the same plane as the given one.
---@param other NavArea The other NavArea to check against
---@return boolean # Whether we're coplanar or not.
function NavArea:isCoplanar(other) end

--- Moves this open list to appropriate position based on its CNavArea:getTotalCost compared to the total cost of other areas in the open list.
function NavArea:updateOnOpenList() end

--- Returns the elevation of this Nav Area at the given position.
---@param The Vector position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task.
---@return number # Elevation
function NavArea:getZ(The) end

--- Returns true if this NavArea contains the given vector.
---@param v Vector The position to check
---@return boolean # If the vector is inside the area
function NavArea:contains(v) end

--- Returns the attribute mask for the given CNavArea.
---@return number # Attribute mask for this CNavArea, see NAV_MESH for the specific flags.
function NavArea:getAttributes() end

--- Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
--- See NavArea:isConnectedAtSide for a function that only checks for outgoing connections in one direction.
---@param other NavArea The other NavArea to check for connection to.
---@return boolean # Whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
function NavArea:isConnected(other) end

--- Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not.
---@param teamID number? The team ID to test, -2 = any team. Only 2 actual teams are available, 0 and 1. (Default -2)
---@param ignoreNavBlockers boolean? Whether to ignore func_nav_blocker entities. (Default false)
---@return boolean # Whether the area is blocked or not
function NavArea:isBlocked(teamID, ignoreNavBlockers) end

--- Returns the height difference on the Z axis of the two CNavAreas. This is calculated from the center most point on both CNavAreas.
---@param other NavArea The nav area to test against.
---@return number # 
function NavArea:computeGroundHeightChange(other) end

--- Returns the parent NavArea
---@return NavArea # The parent NavArea
function NavArea:getParent() end

--- Sets the total cost when passing from starting area to the goal area through this node.
---@param cost number The total cost of the path to set. (>= 0)
function NavArea:setTotalCost(cost) end

--- Returns the vector position of the corner for the given CNavArea.
---@param cornerId number The target corner to get the position of, takes NAV_CORNER.
---@return Vector # The vector position of the corner.
function NavArea:getCorner(cornerId) end

--- Returns a table of very bad hiding spots in this area.
--- See also NavArea:getHidingSpots
---@return table # A table of Vectors
function NavArea:getExposedSpots() end

--- Returns whether this Nav Area is flat within the tolerance of the nav_coplanar_slope_limit_displacement and nav_coplanar_slope_limit convars.
---@return boolean # Whether this NavArea is mostly flat.
function NavArea:isFlat() end

--- Returns a table of all the CNavAreas that have a one-way connection to this CNavArea from given direction.
--- If a CNavArea has a two-way connection to or from this CNavArea then it will not be returned from this function, use CNavArea:getAdjacentAreas to get outgoing ( one and two way ) connections.
--- See CNavArea:getIncomingConnections for a function that returns one-way incoming connections from all sides/directions.
---@param navDir number The direction, from which to look for CNavAreas, see NAV_DIR enums.
---@return table # Table of all CNavAreas with one-way connection to this CNavArea from given direction.
function NavArea:getIncomingConnectionsAtSide(navDir) end

--- Returns the height this Nav Area.
---@return number # Height
function NavArea:getSizeY() end

--- Returns whether this area is in the Open List.
--- Used in pathfinding via the A* algorithm.
--- More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding
---@return boolean # Whether this area is in the Open List.
function NavArea:isOpen() end

--- Returns the center position of the CNavArea.
---@return Vector # The center vector.
function NavArea:getCenter() end

--- Sets the cost from starting area this area when pathfinding.
---@param cost number The cost so far
function NavArea:setCostSoFar(cost) end

--- Returns the cost from starting area this area when pathfinding. Set by NavArea:setCostSoFar
---@return number # The cost so far.
function NavArea:getCostSoFar() end

--- Returns this CNavAreas unique ID.
---@return number # The unique ID.
function NavArea:getID() end

--- Returns the height difference between the edges of two connected navareas.
---@param other NavArea The nav area to test against.
---@return number # The height change
function NavArea:computeAdjacentConnectionHeightChange(other) end

--- Returns the width this Nav Area.
---@return number # Width
function NavArea:getSizeX() end

--- Returns a random point on the nav area.
---@return Vector # The random point on the nav area.
function NavArea:getRandomPoint() end

--- Returns whether this CNavArea can completely (i.e. all corners of this area can see all corners of the given area) see the given CNavArea.
---@param area NavArea The area to test visibility with.
---@return boolean # Whether this CNavArea can see the given CNavArea.
function NavArea:isCompletelyVisible(area) end

--- Returns whether this NavArea is valid or not.
---@return boolean # Whether this NavArea is valid or not
function NavArea:isValid() end

--- Returns a table of all the CNavAreas that have a ( one and two way ) connection from this NavArea.
--- If an area has a one-way incoming connection to this NavArea, then it will not be returned from this function, use NavArea:getIncomingConnections to get all one-way incoming connections.
--- See NavArea:getAdjacentAreasAtSide for a function that only returns areas from one side/direction.
---@return table # A table of all CNavArea that have a ( one and two way ) connection from this CNavArea.
function NavArea:getAdjacentAreas() end

--- Removes the given NavArea from the Closed List
function NavArea:removeFromClosedList() end

--- Drops a corner or all corners of a CNavArea to the ground below it.
---@param corner number The corner(s) to drop, uses NAV_CORNER enums
function NavArea:placeOnGround(corner) end

--- Removes the given NavArea.
function NavArea:remove() end

--- Adds this CNavArea to the closed list, a list of areas that have been checked by A* pathfinding algorithm.
function NavArea:addToClosedList() end

--- Returns how this CNavArea is connected to its parent.
---@return number # 
function NavArea:getParentHow() end

--- Adds this CNavArea to the Open List.
--- Requires `navarea.openlist` permission
function NavArea:addToOpenList() end

--- Connects this CNavArea to another CNavArea with a one way connection. ( From this area to the target )
---@param other NavArea The CNavArea this area leads to.
function NavArea:connectTo(other) end

--- Returns the NAV_DIR direction that the given vector faces on this NavArea.
---@param pos Vector The position to compute direction towards.
---@return number # The direction the vector is in relation to this NavArea. See NAV_DIR enums
function NavArea:computeDirection(pos) end

--- Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea in given direction.
---@param other NavArea The other NavArea to check for connection to.
---@param navDirType number The direction, in which to look for the connection. See NAV_DIR enums
---@return boolean # 
function NavArea:isConnectedAtSide(other, navDirType) end

--- Returns whether this CNavArea can see given position.
---@param pos Vector The position to test.
---@param ignoreEnt Entity? If set, the given entity will be ignored when doing LOS tests (Default NULL)
---@return boolean # Whether the given position is visible from this area
function NavArea:isPartiallyVisible(pos, ignoreEnt) end

--- Returns whether this CNavArea can potentially see the given CNavArea.
---@param area NavArea The area to test.
---@return boolean # Whether the given area is visible from this area
function NavArea:isPotentiallyVisible(area) end

--- Sets the Place of the nav area.
--- There is a limit of 256 Places per nav file
---@param place string? Place to set. Leave as nil to remove place from NavArea
---@return boolean # True if operation succeeded, false otherwise.
function NavArea:setPlace(place) end

--- Clears the open and closed lists for a new search.
function NavArea:clearSearchLists() end

