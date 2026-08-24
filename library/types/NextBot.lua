---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- NextBot type.
---@class NextBot : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L5).
local NextBot = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a callback function that will be run when this nextbot touches another entity. Only 1 per NB. Setting a new callback will replace the old one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L477).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB touches another entity. The arguments are: (The entity the NB touched.)
function NextBot:addContactCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot dies.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L345).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB dies. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
function NextBot:addDeathCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot gets ignited.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L433).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB gets ignited.
function NextBot:addIgniteCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot is injured.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L367).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB gets injured. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
function NextBot:addInjuredCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot lands on the ground.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L389).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB lands on the ground. The arguments are: (The entity the NB landed on.)
function NextBot:addLandCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot leaves the ground.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L411).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB leaves the ground. The arguments are: (The entity the NB "jumped" from.)
function NextBot:addLeaveGroundCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when the nextbot enters a new nav area.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L455).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB enters a new nav area. The arguments are: (Old Nav Area, New Nav Area)
function NextBot:addNavChangeCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when the nextbot create a ragdoll. Note: this will be called only if nb:ragdollOnDeath() is set to True.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L499).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB create a ragdoll. The arguments are: (The ragdoll entity the NB created.)
function NextBot:addRagdollCreationCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a callback function that will be run when this nextbot reaches a destination set by setApproachPos or setGotoPos.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L323).
---@param id string # The unique ID this callback will use.
---@param func function # The function to run when the NB reaches its destination.
function NextBot:addReachCallback(id, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the nextbot face towards a specified position. Has to be called continuously to be effective.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L247).
---@param pos Vector # Position to face towards.
function NextBot:faceTowards(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the acceleration speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L560).
---@return number # NB's acceleration value.
function NextBot:getAcceleration() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the Vector the nextbot is trying to go to, set by setApproachPos.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L190).
---@return Vector? # Where the nextbot is trying to go to if it exists, else returns nil.
function NextBot:getApproachPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the Nextbot is allowed to avoid obstacles or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L695).
---@return boolean # Whether this bot is allowed to try to avoid obstacles.
function NextBot:getAvoidAllowed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the Nextbot is allowed to climb or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L713).
---@return boolean # Whether this bot is allowed to climb.
function NextBot:getClimbAllowed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the height the nextbot is scared to fall from.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L632).
---@return number # Height nextbot is afraid of.
function NextBot:getDeathDropHeight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the deceleration speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L578).
---@return number # NB's deceleration value.
function NextBot:getDeceleration() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the Vector the nextbot is trying to go to, set by setGotoPos.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L220).
---@return Vector? # Where the nextbot is trying to go to if it exists, else returns nil.
function NextBot:getGotoPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the gravity of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L604).
---@return number # The nextbot's current gravity value.
function NextBot:getGravity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L658).
---@return Vector # A vector representing the X and Y movement.
function NextBot:getGroundMotionVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the activity the nextbot uses for idling.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L288).
---@return number # The idle activity.
function NextBot:getIdleAct() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the Nextbot is allowed to jump gaps or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L731).
---@return boolean # Whether this bot is allowed to jump gaps.
function NextBot:getJumpGapsAllowed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the height of the bot's jump.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L749).
---@return number # Jump height
function NextBot:getJumpHeight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the max rate at which the NextBot can visually rotate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L586).
---@return number # The nextbot's current maximum yaw rate.
function NextBot:getMaxYawRate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the move speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L542).
---@return number # NB's move speed.
function NextBot:getMoveSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the activity the nextbot uses for running.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L268).
---@return number # The run activity.
function NextBot:getRunAct() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the max height the bot can step up.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L650).
---@return number # The max height the bot can step up.
function NextBot:getStepHeight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the nextbot's velocity as a vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L305).
---@return Vector # NB's velocity.
function NextBot:getVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether this nextbot can reach and/or traverse/move in given NavArea.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L674).
---@param nav NavArea # NavArea to check.
---@return boolean # Whether this nextbot can traverse given NavArea.
function NextBot:isAreaTraversable(nav) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the nextbot this locomotion is attached to is on ground or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L666).
---@return boolean # Whether the nextbot is on ground or not.
function NextBot:isOnGround() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Forces the nextbot to jump.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L313).
---@param act number? # The activity ID of the anim to play when jumping.
function NextBot:jump(act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the bot jump across a gap. The bot must be on ground (Entity:isOnGround). Its model must have the ACT_JUMP activity for proper animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L757).
---@param landGoal Vector # The goal the nextbot should aim for.
---@param landForward Vector # Presumably the direction vector the entity should be aiming in when landing.
function NextBot:jumpAcrossGap(landGoal, landForward) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the nextbot play a sequence. This takes priority over movement. Will go to set pos after animation plays.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L228).
---@param seq string # The name of the sequence to play.
function NextBot:playSequence(seq) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Enable or disable ragdolling on death for the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L521).
---@param bool boolean # Whether the nextbot should ragdoll on death.
function NextBot:ragdollOnDeath(bool) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the given nextbot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L159).
function NextBot:remove() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the "approach" position from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L182).
function NextBot:removeApproachPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the contact callback function from the NextBot if present.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L489).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeContactCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a death callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L357).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeDeathCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the "go to" position from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L212).
function NextBot:removeGotoPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a ignite callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L445).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeIgniteCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a injury callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L379).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeInjuredCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a landing callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L401).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeLandCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a landing callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L423).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeLeaveGroundCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a nav area change callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L467).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeNavChangeCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the ragdoll creation callback function from the NextBot if present.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L511).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeRagdollCreationCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a reach callback function from the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L335).
---@param id string # The unique ID of the callback to remove.
function NextBot:removeReachCallback(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the acceleration speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L550).
---@param val number # NB's new acceleration. Default is 400
function NextBot:setAcceleration(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the nextbot try to go to a specified position without using navmesh pathfinding (in a straight line).
--- setGotoPos takes priority.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L167).
---@param pos Vector # The vector we want to get to.
function NextBot:setApproachPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the Nextbot is allowed try to to avoid obstacles or not. This is used during path generation. Works similarly to nb_allow_avoiding convar. By default bots are allowed to try to avoid obstacles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L685).
---@param val boolean # Whether this bot should be allowed to try to avoid obstacles.
function NextBot:setAvoidAllowed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the Nextbot is allowed to climb or not. This is used during path generation. Works similarly to nb_allow_climbing convar. By default bots are allowed to climb.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L703).
---@param val boolean # Whether this bot should be allowed to climb.
function NextBot:setClimbAllowed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the height the nextbot is scared to fall from.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L622).
---@param val number # New height nextbot is afraid of. Default is 200.
function NextBot:setDeathDropHeight(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the deceleration speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L568).
---@param val number # NB's new deceleration. Default is 400
function NextBot:setDeceleration(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes the nextbot try to go to a specified position using navmesh pathfinding.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L198).
---@param pos Vector # The position the nextbot will continuosly try to go to.
function NextBot:setGotoPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the gravity of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L612).
---@param val number # NB's new gravity. Default is 1000
function NextBot:setGravity(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the activity the nextbot uses for idling.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L276).
---@param act number # The activity the nextbot will use.
function NextBot:setIdleAct(act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether the Nextbot is allowed to jump gaps or not. This is used during path generation. Works similarly to nb_allow_gap_jumping convar. By default bots are allowed to jump gaps.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L721).
---@param val boolean # Whether this bot should be allowed to jump gaps.
function NextBot:setJumpGapsAllowed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the height of the bot's jump.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L739).
---@param val number # Height (default is 58)
function NextBot:setJumpHeight(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L594).
---@param val number # Desired new maximum yaw rate
function NextBot:setMaxYawRate(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the move speed of the NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L531).
---@param val number # NB's new move speed. Default is 200.
function NextBot:setMoveSpeed(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the activity the nextbot uses for running.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L256).
---@param act number # The activity the nextbot will use.
function NextBot:setRunAct(act) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the max height the bot can step up.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L640).
---@param val number # Height (default is 18)
function NextBot:setStepHeight(val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the nextbot's velocity. Seems to work only when used if nextbot is in air after using nextbot:jump().
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L296).
---@param vel Vector # Velocity.
function NextBot:setVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Start doing an activity (animation).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L238).
---@param act number # The ACT enum to play.
function NextBot:startActivity(act) end
