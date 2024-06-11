---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Find library. Finds entities in various shapes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L7).
find = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds all entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L183).
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.all(filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds all players (including bots).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L174).
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.allPlayers(filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities by class name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L128).
---@param class string # The class name
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byClass(class, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities by model.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L150).
---@param model string # The model file
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byModel(model, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities by their targetname.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L139).
---@param name string # The targetname
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.byName(name, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds the closest entity to a point.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L192).
---@param ents table # The array of entities
---@param pos Vector # The position
---@return Entity # The closest entity
function find.closest(ents, pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns entity that has given Entity:mapCreationID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L288).
---@param num number # Entity's creation id
---@return Entity? # The found entity or nil if not found
function find.getMapCreatedEntity(num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities in a box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L63).
---@param min Vector # Bottom corner
---@param max Vector # Top corner
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inBox(min, max, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities in a cone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L90).
---@param pos Vector # The cone vertex position
---@param dir Vector # The direction to project the cone
---@param distance number # The length to project the cone
---@param radius number # The cosine of angle of the cone. 1 makes a 0° cone, 0.707 makes approximately 90°, 0 makes 180°, and so on.
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inCone(pos, dir, distance, radius, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Finds entities that are in the PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L162).
---@param pos Vector # Vector view point
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inPVS(pos, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities in a ray.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L107).
---@param startpos Vector # The ray start
---@param endpos Vector # The ray end
---@param mins Vector? # If not nil, will define a lower bound of the ray's hull
---@param maxs Vector? # If not nil, will define a upper bound of the ray's hull
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inRay(startpos, endpos, mins, maxs, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds entities in a sphere.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L76).
---@param center Vector # Center of the sphere
---@param radius number # Sphere radius
---@param filter function? # Optional function to filter results
---@return table # An array of found entities
function find.inSphere(center, radius, filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds the player with the given a steamid. Returns nil if not found.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L272).
---@param steamid string # Steam Id to search for
---@return Player? # The player with matching steamid
function find.playerBySteamID(steamid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds the player with the given a 64-bit steamid. Returns nil if not found.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L280).
---@param steamid string # 64-bit steam id to search for
---@return Player? # The player with matching steamid
function find.playerBySteamID64(steamid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds the first player with the given name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L235).
---@param name string # Name to search for
---@param casesensitive boolean? # Boolean should the match be case sensitive?
---@param exact boolean? # Boolean should the name match exactly
---@return table # Table of found players
function find.playersByName(name, casesensitive, exact) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a sorted array of entities by how close they are to a point.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/find.lua#L211).
---@param ents table # The array of entities
---@param pos Vector # The position
---@param furthest boolean # Whether to have the further entities first
---@return table # A table of the closest entities
function find.sortByClosest(ents, pos, furthest) end

