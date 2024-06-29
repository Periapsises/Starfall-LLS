---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Library for creating and manipulating physics-less models AKA "Props".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L23).
prop = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if a user can spawn anymore props.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L676).
---@return boolean # True if user can spawn props, False if not.
function prop.canSpawn() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a prop.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L46).
---@param pos Vector # Initial entity position
---@param ang Angle # Initial entity angles
---@param model string # Model path
---@param frozen boolean? # True to spawn the entity in a frozen state. Default = False
---@return Entity # The prop object
function prop.create(pos, ang, model, frozen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates starfall component.
--- Allowed components:.
--- starfall_hud.
--- starfall_screen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L249).
---@param pos Vector # Position of created component
---@param ang Angle # Angle of created component
---@param class string # Class of created component
---@param model string # Model of created component
---@param frozen boolean # True to spawn frozen
---@return Entity # Component entity
function prop.createComponent(pos, ang, class, model, frozen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a custom prop.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L150).
---@param pos Vector # The position to spawn the prop
---@param ang Angle # The angles to spawn the prop
---@param vertices table # The table of tables of vertices that make up the physics mesh {{v1,v2,...},{v1,v2,...},...}
---@param frozen boolean # Whether the prop starts frozen
---@return Entity # The prop object
function prop.createCustom(pos, ang, vertices, frozen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a ragdoll.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L101).
---@param model string # Model path
---@param frozen boolean? # True to spawn the entity in a frozen state. Default = False
---@return Entity # The ragdoll entity
function prop.createRagdoll(model, frozen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a seat.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L346).
---@param pos Vector # Position of created seat
---@param ang Angle # Angle of created seat
---@param model string # Model of created seat
---@param frozen boolean # True to spawn frozen
---@return Entity # The seat object
function prop.createSeat(pos, ang, model, frozen) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a sent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L404).
---@param pos Vector # Position of created sent
---@param ang Angle # Angle of created sent
---@param class string # Class of created sent
---@param frozen boolean # True to spawn frozen
---@param data table? # Optional table, additional entity data to be supplied to certain SENTs. See prop.SENT_Data_Structures table in Docs for list of SENTs
---@return Entity # The sent object
function prop.createSent(pos, ang, class, frozen, data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get a list of all spawnable sents.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L315).
---@param categorized boolean? # True to get an categorized list
---@return table # The table
function prop.getSpawnableSents(categorized) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks how many props can be spawned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L684).
---@return number # Number of props able to be spawned
function prop.propsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the chip should remove created props when the chip is removed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L699).
---@param on boolean # Whether the props should be cleaned or not
function prop.setPropClean(on) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the props should be undo-able.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L705).
---@param on boolean # Whether the props should be undo-able
function prop.setPropUndo(on) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns how many props per second the user can spawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/prop.lua#L692).
---@return number # Number of props per second the user can spawn
function prop.spawnRate() end
