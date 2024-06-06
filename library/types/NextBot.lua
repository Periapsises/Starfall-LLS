---@meta

---@class NextBot
local NextBot = {}

--- Gets the move speed of the NextBot.
---@return number # NB's move speed.
function NextBot:getMoveSpeed() end

--- Removes a landing callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeLandCallback(callbackid) end

--- Returns whether the Nextbot is allowed to climb or not.
---@return boolean # Whether this bot is allowed to climb.
function NextBot:getClimbAllowed() end

--- Gets the deceleration speed of the NextBot.
---@return number # NB's deceleration value.
function NextBot:getDeceleration() end

--- Sets the move speed of the NextBot.
---@param newmovespeed number NB's new move speed. Default is 200.
function NextBot:setMoveSpeed(newmovespeed) end

--- Sets whether the Nextbot is allowed to climb or not. This is used during path generation. Works similarly to nb_allow_climbing convar. By default bots are allowed to climb.
---@param climballowed boolean Whether this bot should be allowed to climb.
function NextBot:setClimbAllowed(climballowed) end

--- Enable or disable ragdolling on death for the NextBot.
---@param ragdollondeath boolean Whether the nextbot should ragdoll on death.
function NextBot:ragdollOnDeath(ragdollondeath) end

--- Gets the max height the bot can step up.
---@return number # The max height the bot can step up.
function NextBot:getStepHeight() end

--- Gets the acceleration speed of the NextBot.
---@return number # NB's acceleration value.
function NextBot:getAcceleration() end

--- Adds a callback function that will be run when this nextbot is injured.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB gets injured. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
function NextBot:addInjuredCallback(callbackid, callback) end

--- Sets whether the Nextbot is allowed try to to avoid obstacles or not. This is used during path generation. Works similarly to nb_allow_avoiding convar. By default bots are allowed to try to avoid obstacles.
---@param avoidallowed boolean Whether this bot should be allowed to try to avoid obstacles.
function NextBot:setAvoidAllowed(avoidallowed) end

--- Sets the deceleration speed of the NextBot.
---@param newaccel number NB's new deceleration. Default is 400
function NextBot:setDeceleration(newaccel) end

--- Makes the nextbot face towards a specified position. Has to be called continuously to be effective.
---@param facepos Vector Position to face towards.
function NextBot:faceTowards(facepos) end

--- Returns the Vector the nextbot is trying to go to, set by setGotoPos
---@return Vector? # Where the nextbot is trying to go to if it exists, else returns nil.
function NextBot:getGotoPos() end

--- Removes a nav area change callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeNavChangeCallback(callbackid) end

--- Sets the activity the nextbot uses for idling.
---@param runact number The activity the nextbot will use.
function NextBot:setIdleAct(runact) end

--- Adds a callback function that will be run when this nextbot lands on the ground.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB lands on the ground. The arguments are: (The entity the NB landed on.)
function NextBot:addLandCallback(callbackid, callback) end

--- Makes the bot jump across a gap. The bot must be on ground (Entity:isOnGround). Its model must have the ACT_JUMP activity for proper animation.
---@param landGoal Vector The goal the nextbot should aim for.
---@param landForward Vector Presumably the direction vector the entity should be aiming in when landing.
function NextBot:jumpAcrossGap(landGoal, landForward) end

--- Removes a ignite callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeIgniteCallback(callbackid) end

--- Sets the max height the bot can step up.
---@param stepheight number Height (default is 18)
function NextBot:setStepHeight(stepheight) end

--- Gets the activity the nextbot uses for idling.
---@return number # The idle activity.
function NextBot:getIdleAct() end

--- Sets the height of the bot's jump
---@param jumpheight number Height (default is 58)
function NextBot:setJumpHeight(jumpheight) end

--- Removes a landing callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeLeaveGroundCallback(callbackid) end

--- Removes the "approach" position from the NextBot.
function NextBot:removeApproachPos() end

--- Adds a callback function that will be run when this nextbot reaches a destination set by setApproachPos or setGotoPos.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB reaches its destination.
function NextBot:addReachCallback(callbackid, callback) end

--- Removes the "go to" position from the NextBot.
function NextBot:removeGotoPos() end

--- Adds a callback function that will be run when this nextbot dies.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB dies. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
function NextBot:addDeathCallback(callbackid, callback) end

--- Returns whether the nextbot this locomotion is attached to is on ground or not.
---@return boolean # Whether the nextbot is on ground or not.
function NextBot:isOnGround() end

--- Returns whether the Nextbot is allowed to avoid obstacles or not.
---@return boolean # Whether this bot is allowed to try to avoid obstacles.
function NextBot:getAvoidAllowed() end

--- Removes a reach callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeReachCallback(callbackid) end

--- Gets the max rate at which the NextBot can visually rotate.
---@param The number NextBot's max yaw rate.
function NextBot:getMaxYawRate(The) end

--- Makes the nextbot try to go to a specified position using navmesh pathfinding.
---@param gotopos Vector The position the nextbot will continuosly try to go to.
function NextBot:setGotoPos(gotopos) end

--- Adds a callback function that will be run when the nextbot enters a new nav area.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB enters a new nav area. The arguments are: (Old Nav Area, New Nav Area)
function NextBot:addNavChangeCallback(callbackid, callback) end

--- Gets the nextbot's velocity as a vector.
---@return Vector # NB's velocity.
function NextBot:getVelocity() end

--- Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing.
---@param newmaxyawrate number Desired new maximum yaw rate
function NextBot:setMaxYawRate(newmaxyawrate) end

--- Gets the height the nextbot is scared to fall from.
---@return number # Height nextbot is afraid of.
function NextBot:getDeathDropHeight() end

--- Sets the nextbot's velocity. Seems to work only when used if nextbot is in air after using nextbot:jump()
---@param newvel Vector Velocity.
function NextBot:setVelocity(newvel) end

--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving
---@return Vector # A vector representing the X and Y movement.
function NextBot:getGroundMotionVector() end

--- Returns the Vector the nextbot is trying to go to, set by setApproachPos
---@return Vector? # Where the nextbot is trying to go to if it exists, else returns nil.
function NextBot:getApproachPos() end

--- Makes the nextbot try to go to a specified position without using navmesh pathfinding (in a straight line).
--- setGotoPos takes priority.
---@param goal Vector The vector we want to get to.
function NextBot:setApproachPos(goal) end

--- Makes the nextbot play a sequence. This takes priority over movement. Will go to set pos after animation plays.
---@param seqtoplay string The name of the sequence to play.
function NextBot:playSequence(seqtoplay) end

--- Sets the acceleration speed of the NextBot.
---@param newaccel number NB's new acceleration. Default is 400
function NextBot:setAcceleration(newaccel) end

--- Gets the height of the bot's jump
---@return number # Jump height
function NextBot:getJumpHeight() end

--- Forces the nextbot to jump.
---@param jumpAct number? The activity ID of the anim to play when jumping.
function NextBot:jump(jumpAct) end

--- Sets whether the Nextbot is allowed to jump gaps or not. This is used during path generation. Works similarly to nb_allow_gap_jumping convar. By default bots are allowed to jump gaps.
---@param jumpgapsallowed boolean Whether this bot should be allowed to jump gaps.
function NextBot:setJumpGapsAllowed(jumpgapsallowed) end

--- Sets a callback function that will be run when this nextbot touches another entity. Only 1 per NB. Setting a new callback will replace the old one.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB touches another entity. The arguments are: (The entity the NB touched.)
function NextBot:addContactCallback(callbackid, callback) end

--- Removes a death callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeDeathCallback(callbackid) end

--- Returns whether this nextbot can reach and/or traverse/move in given NavArea.
---@param NavArea NavArea to check.
---@return boolean # Whether this nextbot can traverse given NavArea.
function NextBot:isAreaTraversable(NavArea) end

--- Gets the activity the nextbot uses for running.
---@return number # The run activity.
function NextBot:getRunAct() end

--- Gets the gravity of the NextBot.
---@return number # The nextbot's current gravity value.
function NextBot:getGravity() end

--- Removes the contact callback function from the NextBot if present.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeContactCallback(callbackid) end

--- Sets the height the nextbot is scared to fall from.
---@param newdeathdropheight number New height nextbot is afraid of. Default is 200.
function NextBot:setDeathDropHeight(newdeathdropheight) end

--- Sets the gravity of the NextBot.
---@param newgravity number NB's new gravity. Default is 1000
function NextBot:setGravity(newgravity) end

--- Adds a callback function that will be run when this nextbot gets ignited.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB gets ignited.
function NextBot:addIgniteCallback(callbackid, callback) end

--- Returns whether the Nextbot is allowed to jump gaps or not.
---@return boolean # Whether this bot is allowed to jump gaps.
function NextBot:getJumpGapsAllowed() end

--- Sets the activity the nextbot uses for running.
---@param runact number The activity the nextbot will use.
function NextBot:setRunAct(runact) end

--- Start doing an activity (animation).
---@param act number The ACT enum to play.
function NextBot:startActivity(act) end

--- Removes a injury callback function from the NextBot.
---@param callbackid string The unique ID of the callback to remove.
function NextBot:removeInjuredCallback(callbackid) end

--- Adds a callback function that will be run when this nextbot leaves the ground.
---@param callbackid string The unique ID this callback will use.
---@param callback function The function to run when the NB leaves the ground. The arguments are: (The entity the NB "jumped" from.)
function NextBot:addLeaveGroundCallback(callbackid, callback) end

