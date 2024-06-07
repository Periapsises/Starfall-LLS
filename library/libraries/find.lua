---@meta

find = {}

--- Finds the first player with the given name
---@param name string # Name to search for
---@param casesensitive boolean? # Boolean should the match be case sensitive?
---@param exact boolean? # Boolean should the name match exactly
---@return table # Table of found players
function find.playersByName(name, casesensitive, exact) end

--- Finds entities by class name
---@param class string # The class name
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byClass(class, filter) end

--- Finds entities in a sphere
---@param center Vector # Center of the sphere
---@param radius number # Sphere radius
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inSphere(center, radius, filter) end

--- Finds the closest entity to a point
---@param ents table # The array of entities
---@param pos Vector # The position
---@return Entity # The closest entity
function find.closest(ents, pos) end

--- Returns a sorted array of entities by how close they are to a point
---@param ents table # The array of entities
---@param pos Vector # The position
---@param furthest boolean # Whether to have the further entities first
---@return table # A table of the closest entities
function find.sortByClosest(ents, pos, furthest) end

--- Returns entity that has given Entity:mapCreationID.
---@param num number # Entity's creation id
---@return Entity? # The found entity or nil if not found
function find.getMapCreatedEntity(num) end

--- Finds entities by model
---@param model string # The model file
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byModel(model, filter) end

--- Finds the player with the given a steamid. Returns nil if not found
---@param steamid string # Steam Id to search for
---@return Player? # The player with matching steamid
function find.playerBySteamID(steamid) end

--- Finds all players (including bots)
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.allPlayers(filter) end

--- Finds entities in a box
---@param min Vector # Bottom corner
---@param max Vector # Top corner
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inBox(min, max, filter) end

--- Finds entities in a ray
---@param startpos Vector # The ray start
---@param endpos Vector # The ray end
---@param mins Vector? # If not nil, will define a lower bound of the ray's hull
---@param maxs Vector? # If not nil, will define a upper bound of the ray's hull
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inRay(startpos, endpos, mins, maxs, filter) end

--- Finds entities in a cone
---@param pos Vector # The cone vertex position
---@param dir Vector # The direction to project the cone
---@param distance number # The length to project the cone
---@param radius number # The cosine of angle of the cone. 1 makes a 0° cone, 0.707 makes approximately 90°, 0 makes 180°, and so on.
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inCone(pos, dir, distance, radius, filter) end

--- Finds the player with the given a 64-bit steamid. Returns nil if not found
---@param steamid string # 64-bit steam id to search for
---@return Player? # The player with matching steamid
function find.playerBySteamID64(steamid) end

--- Finds entities by their targetname
---@param name string # The targetname
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byName(name, filter) end

--- Finds entities that are in the PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
---@param pos Vector # Vector view point
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inPVS(pos, filter) end

--- Finds all entities
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.all(filter) end
