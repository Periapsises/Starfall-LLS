---@meta

---@class Npc
local Npc = {}

--- Makes the npc walk to a destination
---@param vec Vector The position of the destination
function Npc:goWalk(vec) end

--- Makes the npc do a ranged attack
function Npc:attackRange() end

--- Gets what the npc is fighting
---@return Entity # Entity the npc is fighting
function Npc:getEnemy() end

--- Gets the npc's relationship to the target
---@param ent Entity Target entity
---@return string # Relationship of the npc with the target
function Npc:getRelationship(ent) end

--- Gives the npc a weapon
---@param wep string The classname of the weapon
function Npc:giveWeapon(wep) end

--- Adds a relationship to the npc
---@param str string The relationship string. http://wiki.facepunch.com/gmod/NPC:AddRelationship
function Npc:addRelationship(str) end

--- Tell the npc to fight this
---@param ent Entity Target entity
function Npc:setEnemy(ent) end

--- Adds a relationship to the npc with an entity
---@param ent Entity The target entity
---@param disp string String of the relationship. ("hate", "fear", "like", "neutral")
---@param priority number How strong the relationship is. Higher number is stronger
function Npc:addEntityRelationship(ent, disp, priority) end

--- Makes the npc do a melee attack
function Npc:attackMelee() end

--- Stops the npc
function Npc:stop() end

--- Makes the npc run to a destination
---@param vec Vector The position of the destination
function Npc:goRun(vec) end

