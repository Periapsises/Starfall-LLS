---@meta

prop = {}

--- Creates a seat.
---@param pos Vector # Position of created seat
---@param ang Angle # Angle of created seat
---@param model string # Model of created seat
---@param frozen boolean # True to spawn frozen
---@return Entity # The seat object
function prop.createSeat(pos, ang, model, frozen) end

--- Sets whether the props should be undo-able
---@param on boolean # Whether the props should be undo-able
function prop.setPropUndo(on) end

--- Get a list of all spawnable sents.
---@param categorized boolean? # True to get an categorized list
---@return table # The table
function prop.getSpawnableSents(categorized) end

--- Creates a prop
---@param pos Vector # Initial entity position
---@param ang Angle # Initial entity angles
---@param model string # Model path
---@param frozen boolean? # True to spawn the entity in a frozen state. Default = False
---@return Entity # The prop object
function prop.create(pos, ang, model, frozen) end

--- Creates a sent.
---@param pos Vector # Position of created sent
---@param ang Angle # Angle of created sent
---@param class string # Class of created sent
---@param frozen boolean # True to spawn frozen
---@param data table? # Optional table, additional entity data to be supplied to certain SENTs. See prop.SENT_Data_Structures table in Docs for list of SENTs
---@return Entity # The sent object
function prop.createSent(pos, ang, class, frozen, data) end

--- Sets whether the chip should remove created props when the chip is removed
---@param on boolean # Whether the props should be cleaned or not
function prop.setPropClean(on) end

--- Checks if a user can spawn anymore props.
---@return boolean # True if user can spawn props, False if not.
function prop.canSpawn() end

--- Returns how many props per second the user can spawn
---@return number # Number of props per second the user can spawn
function prop.spawnRate() end

--- Checks how many props can be spawned
---@return number # Number of props able to be spawned
function prop.propsLeft() end

--- Creates a ragdoll
---@param model string # Model path
---@param frozen boolean? # True to spawn the entity in a frozen state. Default = False
---@return Entity # The ragdoll entity
function prop.createRagdoll(model, frozen) end

--- Creates starfall component
--- Allowed components:
--- starfall_hud
--- starfall_screen
---@param pos Vector # Position of created component
---@param ang Angle # Angle of created component
---@param class string # Class of created component
---@param model string # Model of created component
---@param frozen boolean # True to spawn frozen
---@return Entity # Component entity
function prop.createComponent(pos, ang, class, model, frozen) end

--- Creates a custom prop.
---@param pos Vector # The position to spawn the prop
---@param ang Angle # The angles to spawn the prop
---@param vertices table # The table of tables of vertices that make up the physics mesh {{v1,v2,...},{v1,v2,...},...}
---@param frozen boolean # Whether the prop starts frozen
---@return Entity # The prop object
function prop.createCustom(pos, ang, vertices, frozen) end

prop.SENT_Data_Structures = {}

