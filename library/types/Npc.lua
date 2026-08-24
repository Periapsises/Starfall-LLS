---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Npc type.
---@class Npc : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L18).
local Npc = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a relationship to the npc with an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L91).
---@param ent Entity # The target entity
---@param disp string # String of the relationship. ("hate", "fear", "like", "neutral")
---@param priority number # How strong the relationship is. Higher number is stronger
function Npc:addEntityRelationship(ent, disp, priority) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a relationship to the npc.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L70).
---@param str string # The relationship string. http://wiki.facepunch.com/gmod/NPC:AddRelationship
function Npc:addRelationship(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the npc do a melee attack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L161).
function Npc:attackMelee() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the npc do a ranged attack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L169).
function Npc:attackRange() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets what the npc is fighting.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L146).
---@return Entity # Entity the npc is fighting
function Npc:getEnemy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the npc's relationship to the target.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L105).
---@param ent Entity # Target entity
---@return string # Relationship of the npc with the target
function Npc:getRelationship(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gives the npc a weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L113).
---@param wep string # The classname of the weapon
function Npc:giveWeapon(wep) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the npc run to a destination.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L187).
---@param vec Vector # The position of the destination
function Npc:goRun(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the npc walk to a destination.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L177).
---@param vec Vector # The position of the destination
function Npc:goWalk(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets whether an npc is lag compensated.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L63).
---@return boolean # Whether the npc is lag compensated
function Npc:isLagCompensated() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Tell the npc to fight this.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L137).
---@param ent Entity # Target entity
function Npc:setEnemy(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets an npc's hitboxes to compensate for lag, but limited number of npcs can be set due to high processing needed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L47).
---@param compensate boolean # Whether to make an npc's hitboxes compensate lag
function Npc:setLagCompensated(compensate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Stops the npc.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/npc.lua#L153).
function Npc:stop() end
