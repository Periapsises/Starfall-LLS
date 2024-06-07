---@meta

---@class Entity
local Entity = {}

--- Returns the bone's position and angle in world coordinates
---@param bone number? Bone index. (def 0)
---@return Vector # Position of the bone
---@return Angle # Angle of the bone
function Entity:getBonePosition(bone) end

--- Gets number of hitboxes in a group.
---@param group number The number of the hitbox group.
---@return number # Number of hitboxes
function Entity:getHitBoxCount(group) end

--- Returns the current count for this Think's CPU Time of the specified starfall.
--- This value increases as more executions are done, may not be exactly as you want.
--- If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
---@return number # Current quota used this Think
function Entity:getQuotaUsed() end

--- Gets the string representation of the entity
---@return string # String representation of the entity
function Entity:__tostring() end

--- Sets the submaterial of the entity
---@param index number Submaterial index.
---@param material string New material name.
function Entity:setSubMaterial(index, material) end

--- Returns the parent index of an entity's bone
---@param bone number? Bone index. (def 0)
---@return number # Parent index of the bone. Returns -1 on error
function Entity:getBoneParent(bone) end

--- Gets a datatable string
---@param key number The number key. Valid keys are 0 - 31
---@return string? # The string or nil if it doesn't exist
function Entity:getDTString(key) end

--- Returns a copy of the entity's sanitized internal glua table.
---@return table # The entity's table.
function Entity:getTable() end

--- Returns all animations of the entity
---@return table # List of animations, starts at index 0 where value is the animation's name
function Entity:getSequenceList() end

--- Gets the clipping of an entity
---@return table # Table containing the clipdata
function Entity:getClipping() end

--- Returns the amount of planes of the brush entity
---@return number # The amount of brush planes
function Entity:getBrushPlaneCount() end

--- Get the number of items remaining in a shipment. DarkRP only.
--- Equivalent to GLua Entity:Getcount.
---@return number? # Number of items remaining, or nil if not a shipment
function Entity:getCount() end

--- Returns the vector manipulate position of the bone (relative to its default position)
---@param bone number Bone index. (def 0)
---@return Vector # Manipulate position of the bone
function Entity:getManipulateBonePosition(bone) end

--- Sets the entity's inertia
---@param vec Vector Inertia tensor
function Entity:setInertia(vec) end

--- Get the index of the contents of the shipment, which should then be looked up in the output of "darkrp.getCustomShipments". DarkRP only.
--- Equivalent to GLua Entity:Getcontents.
--- You may prefer to use Entity:getShipmentContents instead, although that function is slightly slower.
---@return number? # Index of contents, or nil if not a shipment
function Entity:getShipmentContentsIndex() end

--- Returns the matrix of the entity's bone. Note: this method is slow/doesnt work well if the entity isn't animated.
---@param bone number? Bone index. (def 0)
---@return VMatrix # The matrix
function Entity:getBoneMatrix(bone) end

--- Returns how submerged the entity is in water
---@return number # The water level. 0 none, 1 slightly, 2 at least halfway, 3 all the way
function Entity:getWaterLevel() end

--- Get whether this entity is a "money bag", i.e. dropped money from a money printer or /dropmoney. DarkRP only.
---@return boolean # Whether this entity is a money bag.
function Entity:isMoneyBag() end

--- Sets the entity frozen state, same as `Entity.enableMotion` but inverted
---@param freeze boolean Should the entity be frozen?
function Entity:setFrozen(freeze) end

--- Gets the owner of the entity
---@return Entity # Owner
function Entity:getOwner() end

--- Checks if the entity ONGROUND flag is set
---@return boolean # If it's flag is set or not
function Entity:isOnGround() end

--- Sets entity gravity
---@param grav boolean Should the entity respect gravity?
function Entity:enableGravity(grav) end

--- Set's the entity to collide with nothing but the world. Alias to entity:setCollisionGroup(COLLISION_GROUP_WORLD)
---@param nocollide boolean Whether to collide with nothing except world or not.
function Entity:setNocollideAll(nocollide) end

--- Gets the entity's eye position
---@return Vector # Eye position of the entity
---@return Vector? # In case of a ragdoll, the position of the second eye
function Entity:getEyePos() end

--- Gets whether an entity is solid or not
---@return boolean # whether an entity is solid or not
function Entity:isSolid() end

--- Gets a datatable entity
---@param key number The number key. Valid keys are 0 - 31
---@return Entity? # The entity or nil if it doesn't exist
function Entity:getDTEntity(key) end

--- Checks if an entity is an npc.
---@return boolean # True if npc, false if not
function Entity:isNPC() end

--- Gets a datatable angle
---@param key number The number key. Valid keys are 0 - 31
---@return Angle? # The angle or nil if it doesn't exist
function Entity:getDTAngle(key) end

--- Returns if the entity is ignited
---@return boolean # If the entity is on fire or not
function Entity:isOnFire() end

--- Gets the main physics objects of an entity
---@return PhysObj # The main physics object of the entity
function Entity:getPhysicsObject() end

--- Returns info about the given brush plane
---@param id number Plane index. Starts from 0
---@return Vector # The origin of the plane
---@return Vector # The normal of the plane
---@return number # The distance to the plane
function Entity:getBrushPlane(id) end

--- Sets a component's ability to lock a player's controls
---@param enable boolean Whether the component will lock the player's controls when used
function Entity:setComponentLocksControls(enable) end

--- Allows manipulation of an entity's bones' positions
---@param bone number The bone ID
---@param vec Vector The position it should be manipulated to
function Entity:manipulateBonePosition(bone, vec) end

--- Gets various information about the specified animation
---@param id number The ID of the animation
---@return table # Animation info
function Entity:getSequenceInfo(id) end

--- Returns the starfall or expression2's name
---@return string # The name of the chip
function Entity:getChipName() end

--- Gets the position and angle of an attachment
---@param index number The index of the attachment
---@return Vector? # Position, nil if the attachment doesn't exist
---@return Angle? # Orientation, nil if the attachment doesn't exist
function Entity:getAttachment(index) end

--- Gets the entity's up vector
---@return Vector # Vector up
function Entity:getUp() end

--- Sets the scale of the entity flexes
---@param scale number The scale of the flexes to set
function Entity:setFlexScale(scale) end

--- Returns the vector manipulate scale of the bone
---@param bone number Bone index. (def 0)
---@return Vector # Manipulate scale of the bone
function Entity:getManipulateBoneScale(bone) end

--- Returns entity's creation ID (similar to entIndex, but increments monotonically)
---@return number # The creation ID
function Entity:getCreationID() end

--- Allows detecting collisions on an entity. You can only do this once for the entity's entire lifespan so use it wisely.
---@param func function The callback function with argument, table collsiondata, http://wiki.facepunch.com/gmod/Structures/CollisionData
function Entity:addCollisionListener(func) end

--- Gets the CPU Time max of the specified starfall of the specified starfall or expression2.
--- CPU Time is stored in a buffer of N elements, if the average of this exceeds quotaMax, the chip will error.
---@return number # Max SysTime allowed to take for execution of the chip in a Think.
function Entity:getQuotaMax() end

--- Sets the render mode of the entity
---@param rendermode number Rendermode to use. http://wiki.facepunch.com/gmod/Enums/RENDERMODE
function Entity:setRenderMode(rendermode) end

--- Get the title of this door or vehicle. DarkRP only.
--- If you don't know what this is referring to, that's because it's not a commonly used feature. Press F2 on a door and click "Set Door Title".
---@return string? # The title of the door or vehicle, or nil if none is set.
function Entity:getKeysTitle() end

--- Gets the scale of the entity flexes
---@return number # The scale of the flexes
function Entity:getFlexScale() end

--- Gets the current playing sequence
---@return number # The sequence number
function Entity:getSequence() end

--- Returns the amount of skins of the entity
---@return number # The amount of skins
function Entity:getSkinCount() end

--- Sets the health of the entity.
---@param newhealth number New health value.
function Entity:setHealth(newhealth) end

--- Gets the skin number of the entity
---@return number # Skin number
function Entity:getSkin() end

--- Sets the entity to be Solid or not.
---@param solid boolean Should the entity be solid?
function Entity:setSolid(solid) end

--- Returns the number manipulate jiggle of the bone (0 - 255)
---@param bone number? Bone index. (def 0)
---@return number # Manipulate jiggle of the bone
function Entity:getManipulateBoneJiggle(bone) end

--- Stops the entity from being saved on duplication or map save.
function Entity:doNotDuplicate() end

--- Parents or unparents an entity. Only holograms can be parented to players and clientside holograms can only be parented in the CLIENT realm.
---@param parent Entity? Entity parent (nil to unparent)
---@param attachment number|string|nil Optional attachment name or ID.
---@param bone number|string|nil Optional bone name or ID. Can't be used at the same time as attachment
function Entity:setParent(parent, attachment, bone) end

--- Returns the number of possible values for this bodygroup.
--- Note that bodygroups are 0-indexed, so this will not return the maximum allowed value.
---@param id number The ID of the bodygroup to get the count for.
---@return number # Number of values of specified bodygroup, or 0 if there are none.
function Entity:getBodygroupCount(id) end

--- Checks whether entity has physics
---@return boolean # If entity has physics
function Entity:isValidPhys() end

--- Returns the timer.curtime() time the entity was created on
---@return number # Seconds relative to server map start
function Entity:getCreationTime() end

--- Returns the bodygroup index of the entity with given name
---@param name string The bodygroup's string name
---@return number # The bodygroup index
function Entity:lookupBodygroup(name) end

--- Gets the children (the parented entities) of an entity
---@return table # Table of parented children
function Entity:getChildren() end

--- Sets the entity's angles
---@param ang Angle New angles
function Entity:setAngles(ang) end

--- Gets the Average CPU Time in the buffer of the specified starfall or expression2.
---@return number # Average CPU Time of the buffer of the specified starfall or expression2.
function Entity:getQuotaAverage() end

--- Gets the hit group of a given hitbox in a given hitbox set.
---@param hitbox number The number of the hit box.
---@param hitboxset number The number of the hit box set. This should be 0 in most cases.
---@return number # The hitbox group of given hitbox. See https://wiki.facepunch.com/gmod/Enums/HITGROUP
function Entity:getHitBoxHitGroup(hitbox, hitboxset) end

--- Plays a sound on the entity
---@param snd string Sound path
---@param soundLevel number Default 75
---@param pitchPercent number Default 100
---@param volume number Default 1
---@param channel number Default CHAN_AUTO or CHAN_WEAPON for weapons
function Entity:emitSound(snd, soundLevel, pitchPercent, volume, channel) end

--- Gets the solid flag enum of the entity
---@return number # The solid flag enum of the entity. https://wiki.facepunch.com/gmod/Enums/FSOLID
function Entity:getSolidFlags() end

--- Checks if an entity is a vehicle.
---@return boolean # True if vehicle, false if not
function Entity:isVehicle() end

--- Adds a trail to the entity with the specified attributes.
---@param startSize number The start size of the trail (0-128)
---@param endSize number The end size of the trail (0-128)
---@param length number The length size of the trail
---@param material string The material of the trail
---@param color Color The color of the trail
---@param attachmentID number? Optional attachmentid the trail should attach to
---@param additive boolean? If the trail's rendering is additive
function Entity:setTrails(startSize, endSize, length, material, color, attachmentID, additive) end

--- Allows manipulation of an entity's bones' angles
---@param bone number The bone ID
---@param ang Angle The angle it should be manipulated to
function Entity:manipulateBoneAngles(bone, ang) end

--- Gets the entity's forward vector
---@return Vector # Vector forward
function Entity:getForward() end

--- Gets the entity's eye angles
---@return Angle # Angles of the entity's eyes
function Entity:getEyeAngles() end

--- Casts a hologram entity into the hologram type
---@return Hologram # Hologram instance
function Entity:toHologram() end

--- Simulate a Use action on the entity by the chip owner
---@param usetype number? The USE_ enum use type. (Default: USE_ON)
---@param value number? The use value (Default: 0)
function Entity:use(usetype, value) end

--- Checks if an engine effect is applied to the entity
---@param effect number The effect to check. EF table values
---@return boolean # True or false
function Entity:isEffectActive(effect) end

--- Returns Entity axis aligned bounding box in world coordinates
---@return Vector # The min bounding box vector
---@return Vector # The max bounding box vector
function Entity:worldSpaceAABB() end

--- Gets the health of an entity
---@return number # Health of the entity
function Entity:getHealth() end

--- Sets a hologram or custom_prop's renderbounds
---@param mins Vector The lower bounding corner coordinate local to the hologram
---@param maxs Vector The upper bounding corner coordinate local to the hologram
function Entity:setRenderBounds(mins, maxs) end

--- Returns the x, y, z size of the entity's outer bounding box (local to the entity)
---@return Vector # The outer bounding box size
function Entity:obbSize() end

--- Sets the weight (value) of a flex.
---@param flexid number The id of the flex
---@param weight number The weight of the flex
function Entity:setFlexWeight(flexid, weight) end

--- Gets what the entity is welded to. If the entity is parented, returns the parent.
---@return Entity # The first welded/parent entity
function Entity:isWeldedTo() end

--- Gets the max health of an entity
---@return number # Max Health of the entity
function Entity:getMaxHealth() end

--- Sets the whether an entity should be drawn or not. If serverside, will also prevent networking the entity to the client. Don't use serverside on a starfall if you want its client code to work.
---@param draw boolean Whether to draw the entity or not.
function Entity:setNoDraw(draw) end

--- Returns an entities wirelink
---@return Wirelink # Wirelink of the entity
function Entity:getWirelink() end

--- Returns a table of brushes surfaces for brush model entities.
---@return table # Table of SurfaceInfos if the entity has a brush model, or no value otherwise.
function Entity:getBrushSurfaces() end

--- Get the info for the contents of the shipment. DarkRP only.
--- Equivalent to "darkrp.getCustomShipments()[ent:getShipmentContentsIndex()]"
---@return table? # Contents, or nil if not a shipment
function Entity:getShipmentContents() end

--- Sets a custom prop's shadow forces, moving the entity to the desired position and angles
--- This gets overriden by Entity.setCustomPropForces and cannot be used together
--- See available parameters here: https://wiki.facepunch.com/gmod/PhysObj:ComputeShadowControl
---@param table any |false data Shadow physics data, excluding 'deltatime'. 'teleportdistance' higher than 0 requires 'entities.setPos'. Pass a falsy value to disable custom physics entirely
function Entity:setCustomPropShadowForce(table) end

--- Returns the EntIndex of the entity
---@return number # The numerical index of the entity
function Entity:entIndex() end

--- Sets the skin of the entity
---@param skinIndex number Index of the skin to use.
function Entity:setSkin(skinIndex) end

--- Ignites an entity
---@param length number How long the fire lasts
---@param radius number? (optional) How large the fire hitbox is (entity obb is the max)
function Entity:ignite(length, radius) end

--- Returns pose value range
---@param id number Pose index (starting from 0)
---@return number? # Minimum pose value or nil if pose not found
---@return number? # Maximum pose value or nil if pose not found
function Entity:getPoseRange(id) end

--- Returns how much friction the entity has, default is 1 (100%)
---@return number # friction
function Entity:getFriction() end

--- Get the DarkRP door index of a door. Use this to store door information in the database.
---@return number? # The door index, or nil if not a door.
function Entity:doorIndex() end

--- Sets the entity's linear velocity. Physics entities, use physobj:setVelocity
---@param vel Vector New velocity
function Entity:setVelocity(vel) end

--- Returns the model's radius
---@return number # Radius of the model
function Entity:getModelRadius() end

--- Get the owner of a door. DarkRP only.
---@return Player? # The owner of the door, or nil if the door is unowned.
function Entity:getDoorOwner() end

--- Links starfall components to a starfall processor or vehicle. Screen can only connect to processor. HUD can connect to processor and vehicle.
---@param e Entity? Entity to link the component to, a vehicle or starfall for huds, or a starfall for screens. nil to clear links.
function Entity:linkComponent(e) end

--- Gets the parent of an entity
---@return Entity? # Entity's parent or nil if not parented
function Entity:getParent() end

--- Sets a prop_physics to be unbreakable
---@param on boolean Whether to make the prop unbreakable
function Entity:setUnbreakable(on) end

--- Returns the entity's model bounds. This is different than the collision bounds/hull.
--- This is not scaled with Entity:SetModelScale and will return the model's original, unmodified mins and maxs.
---@return Vector # Minimum vector of the bounds
---@return Vector # Maximum vector of the bounds
function Entity:getModelBounds() end

--- Sets the entity's mass
---@param mass number Mass to set to
function Entity:setMass(mass) end

--- Returns true if the entity is being held by a player. Either by Physics gun, Gravity gun or Use-key.
---@return boolean # If the entity is being held or not
function Entity:isPlayerHolding() end

--- Gets an entities' material
---@return string # String material
function Entity:getMaterial() end

--- Gets all players the specified starfall errored for.
--- This excludes the owner of the starfall chip.
---@return table # A table containing the errored players.
function Entity:getErroredPlayers() end

--- Returns a table of attachments
---@return table? # Table of attachment id and attachment name or nil
function Entity:getAttachments() end

--- Removes an entity
function Entity:remove() end

--- Stops a sound on the entity
---@param snd string string Soundscript path. See http://wiki.facepunch.com/gmod/Entity:StopSound
function Entity:stopSound(snd) end

--- Converts a direction vector in world space to entity local space
---@param data Vector World space direction vector
---@return Vector # data as local space direction vector
function Entity:worldToLocalVector(data) end

--- Gets the model of an entity
---@return string # Model of the entity
function Entity:getModel() end

--- Returns a variable from the entity's internal glua table.
---@param key string The variable's key.
---@return any # The variable.
function Entity:getVar(key) end

--- Returns entity's number of hitbox sets.
---@return number # Number of hitbox sets.
function Entity:getHitBoxSetCount() end

--- Applies torque
---@param torque Vector The torque vector
function Entity:applyTorque(torque) end

--- Removes trails from the entity
function Entity:removeTrails() end

--- Sets the color of the entity
---@param clr Color New color
function Entity:setColor(clr) end

--- Get whether this door is owned or co-owned by this player.
---@param ply Player The player to query.
---@return boolean # Whether this door is (co-)owned by the player.
function Entity:isKeysOwnedBy(ply) end

--- Returns entity's current hit box set.
---@return number? # Hitbox set number, nil if entity has no hitboxes.
---@return string? # Hitbox set name, nil if entity has no hitboxes.
function Entity:getHitBoxSet() end

--- Checks whether the entity should be drawn
---@return boolean # True if should draw, False otherwise
function Entity:getNoDraw() end

--- Get whether this door is owned by someone.
---@return boolean # Whether it's owned.
function Entity:isKeysOwned() end

--- Gets the attachment index the entity is parented to
---@return number # Index of the attachment the entity is parented to or 0
function Entity:getAttachmentParent() end

--- Sets a hologram or custom_prop's custom mesh material
---@param material Material? The material to set it to or nil to set back to default
function Entity:setMeshMaterial(material) end

--- Applies angular force to the entity (This function is garbage, use applyTorque instead)
---@param ang Angle The force angle
function Entity:applyAngForce(ang) end

--- Gets the weight (value) of a flex.
---@param flexid number The id of the flex
---@return number # The weight of the flex
function Entity:getFlexWeight(flexid) end

--- Returns a list of components linked to a processor. Can also return vehicles linked to a HUD, but only through the server.
---@return table # A list of components linked to the entity
function Entity:getLinkedComponents() end

--- Applies linear force to the entity
---@param vec Vector The force vector
function Entity:applyForceCenter(vec) end

--- Gets the animation number from the animation name
---@param animation string Name of the animation
---@return number # Animation index or -1 if invalid
function Entity:lookupSequence(animation) end

--- Sets the entity movement state
---@param move boolean Should the entity move?
function Entity:enableMotion(move) end

--- Get whether this entity is considered a door by DarkRP.
---@return boolean # Whether it's a door.
function Entity:isDoor() end

--- Converts a ragdoll bone id to the corresponding physobject id
---@param boneid number The ragdoll boneid
---@return number # The physobj id
function Entity:translateBoneToPhysBone(boneid) end

--- Checks whether the animation is playing
---@return boolean # True if the animation is currently playing, False otherwise
function Entity:isSequenceFinished() end

--- Gets the renderfx of the entity
---@return number # Renderfx, https://wiki.facepunch.com/gmod/Enums/kRenderFx
function Entity:getRenderFX() end

--- Check if the given Entity or Vector is within this entity's PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
---@param other Entity|Vector Entity or Vector to test
---@return boolean # If the Entity/Vector is within the PVS
function Entity:testPVS(other) end

--- Sets the physical material of the entity
---@param materialName string Material to use
function Entity:setPhysMaterial(materialName) end

--- Returns the name of an entity's bone
---@param bone number? Bone index. (def 0)
---@return string # Name of the bone
function Entity:getBoneName(bone) end

--- Returns entity's networked variables table (data table).
---@return table? # The networked variables table of the entity or nil if it doesn't have one.
function Entity:getNetworkVars() end

--- Checks if an entity is a weapon.
---@return boolean # True if weapon, false if not
function Entity:isWeapon() end

--- Returns the world position of the entity's mass center
---@return Vector # The position vector of the mass center
function Entity:getMassCenterW() end

--- Returns the contents of the entity's current model
---@return number # Contents of the entity's model. https://wiki.facepunch.com/gmod/Enums/CONTENTS
function Entity:getModelContents() end

--- Returns the local position of the entity's mass center
---@return Vector # The position vector of the mass center
function Entity:getMassCenter() end

--- Applies damage to an entity
---@param amt number Damage amount
---@param attacker Entity? Damage attacker
---@param inflictor Entity? Damage inflictor
---@param dmgtype number? The damage type number enum
---@param pos Vector? The position of the damage
function Entity:applyDamage(amt, attacker, inflictor, dmgtype, pos) end

--- Returns whether or not the the entity has had flex manipulations performed with Entity:setFlexWeight or Entity:setFlexScale.
---@return boolean # True if the entity has flex manipulations, false otherwise.
function Entity:hasFlexManipulations() end

--- Gets the bone the given hitbox is attached to.
---@param hitbox number The number of the hitbox.
---@param group number The number of the hitbox group, 0 in most cases.
---@return number # Bone ID
function Entity:getHitBoxBone(hitbox, group) end

--- Set the function to run whenever the physics of the entity are updated.
--- This won't be called if the physics object goes asleep.
--- You can only use this function on these classes:
--- - starfall_prop
--- - starfall_processor
---@param func function|nil The callback function. Use nil to remove an existing callback.
function Entity:setPhysicsUpdateListener(func) end

--- Returns the class of the entity
---@return string # The string class name
function Entity:getClass() end

--- Checks the entities frozen state
---@return boolean # True if entity is frozen
function Entity:isFrozen() end

--- Gets the attachment index via the entity and it's attachment name
---@param name string of the attachment to lookup
---@return number # Number of the attachment index, or 0 if it doesn't exist
function Entity:lookupAttachment(name) end

--- Gets the solid enum of the entity
---@return number # The solid enum of the entity. https://wiki.facepunch.com/gmod/Enums/SOLID
function Entity:getSolid() end

--- Returns the world transform matrix of the entity
---@return VMatrix # The matrix
function Entity:getMatrix() end

--- Converts a vector in entity local space to world space
---@param data Vector Local space vector
---@return Vector # data as world space vector
function Entity:localToWorld(data) end

--- Returns the position of the entity
---@return Vector # The position vector
function Entity:getPos() end

--- Sets the physics of an entity to be a sphere
---@param enabled boolean Should the entity be spherical?
---@param radius number? Optional custom radius to use (max 500). Otherwise the prop's obb is used
function Entity:enableSphere(enabled, radius) end

--- Returns if the entity is a constraint.
---@return boolean # If the entity is a constraint
function Entity:isConstraint() end

--- Sets the elasticity of the entity
---@param elasticity number
function Entity:setElasticity(elasticity) end

--- Returns the ragdoll bone index given a bone name
---@param name string The bone's string name
---@return number # The bone index
function Entity:lookupBone(name) end

--- Sets the entity's position. No interpolation will occur clientside, use physobj.setPos to have interpolation.
---@param vec Vector New position
function Entity:setPos(vec) end

--- Gets a datatable float
---@param key number The number key. Valid keys are 0 - 31
---@return number? # The float or nil if it doesn't exist
function Entity:getDTFloat(key) end

--- Sets the bodygroup of the entity
---@param bodygroup number The ID of the bodygroup you're setting.
---@param value number The value you're setting the bodygroup to.
function Entity:setBodygroup(bodygroup, value) end

--- Removes a collision listening hook from the entity so that a new one can be added
function Entity:removeCollisionListener() end

--- Returns the angle of the entity
---@return Angle # The angle
function Entity:getAngles() end

--- Gets a physics objects of an entity
---@param id number The physics object id (starts at 0)
---@return PhysObj # The physics object of the entity
function Entity:getPhysicsObjectNum(id) end

--- Returns flex name.
---@param flexid number The flex id to look up name of.
---@return string # The flex name
function Entity:getFlexName(flexid) end

--- Returns a variable from the entity's save table.
---@param variableName string Name of the internal save table variable.
---@return any # The internal variable associated with the name.
function Entity:getInternalVariable(variableName) end

--- Returns the local position of the entity's outer bounding box
---@return Vector # The position vector of the outer bounding box center
function Entity:obbCenter() end

--- Returns the world position of the entity's outer bounding box
---@return Vector # The position vector of the outer bounding box center
function Entity:obbCenterW() end

--- Returns the game assigned owner of an entity. This doesn't take CPPI into account and will return nil for most standard entities.
--- Used on entities with custom physics like held SWEPs and fired bullets in which case player entity should be returned.
---@return Entity # Owner
function Entity:entOwner() end

--- Sets a hologram or custom_prop model to a custom Mesh
---@param mesh Mesh? The mesh to set it to or nil to set back to normal
function Entity:setMesh(mesh) end

--- Returns max local bounding box vector of the entity
---@return Vector # The max bounding box vector
function Entity:obbMaxs() end

--- Returns the ID of the flex based on given name.
---@param flexname string The name of the flex to get the ID of. Case sensitive.
---@return number # The ID of the flex based on given name.
function Entity:getFlexByName(flexname) end

--- Sets the sheet color of a player-model
--- Can only be used on players, bots, ragdolls, holograms and Starfall NextBots
---@param clr Color RGB color to use, alpha channel not supported
function Entity:setSheetColor(clr) end

--- Returns the model's scale
---@return number # Scale of the model
function Entity:getModelScale() end

--- Returns the bodygroup name of the entity with given index
---@param id number The bodygroup's number index
---@return string # The bodygroup name
function Entity:getBodygroupName(id) end

--- Sets the entity's friction multiplier
---@param friction number
function Entity:setFriction(friction) end

--- Draws the entity, requires 3D rendering context
--- Only certain, whitelisted entities can be drawn. They can't be parented or have RenderOverride defined
--- Use Entity.canDraw to check if you can draw the entity
function Entity:draw() end

--- Gets a table of all constrained entities to each other
---@param filter table? Optional constraint type filter table where keys are the type name and values are 'true'. "Wire" and "Parent" are used for wires and parents.
function Entity:getAllConstrained(filter) end

--- Get whether this door/vehicle is locked. DarkRP only.
---@return boolean # Whether it's locked.
function Entity:isLocked() end

--- Get the physical material of the entity
---@return string # The physical material
function Entity:getPhysMaterial() end

--- Applies a angular velocity to an object
---@param angvel Vector The local angvel vector to apply
function Entity:addAngleVelocity(angvel) end

--- Checks if an entity is a player.
---@return boolean # True if player, false if not
function Entity:isPlayer() end

--- Gets the color of an entity
---@return Color # Color
function Entity:getColor() end

--- Marks entity as persistent, disallowing players from physgunning it. Persistent entities save on server shutdown when sbox_persist is set
---@param persist boolean True to make persistent
function Entity:setPersistent(persist) end

--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by SOLID_NONE
---@param The Vector vector to start the intersection from.
---@return Vector # The nearest hit point of the entity's bounding box in world coordinates, or Vector(0, 0, 0) for some entities such as worldspawn.
function Entity:getNearestPoint(The) end

--- Sets the maximum health for entity. Note, that you can still set entity's health above this amount with Entity:setHealth.
---@param newmaxhealth number New max health value.
function Entity:setMaxHealth(newmaxhealth) end

--- Gets an entities' submaterial
---@param index number Number index of the sub material
---@return string # String material
function Entity:getSubMaterial(index) end

--- Converts a physobject id to the corresponding ragdoll bone id
---@param boneid number The physobject id
---@return number # The ragdoll bone id
function Entity:translatePhysBoneToBone(boneid) end

--- Gets the collision group enum of the entity
---@return number # The collision group enum of the entity. https://wiki.facepunch.com/gmod/Enums/COLLISION_GROUP
function Entity:getCollisionGroup() end

--- Converts an angle in world space to entity local space
---@param data Angle World space angle
---@return Angle # data as local space angle
function Entity:worldToLocalAngles(data) end

--- Gets the velocity of the entity in its local coordinate system
---@return Vector # Vector velocity of the physics object local to itself
function Entity:getLocalVelocity() end

--- Gets an entities' material list
---@return table # Material
function Entity:getMaterials() end

--- Sets the bone matrix of given bone to given matrix. See also Entity:getBoneMatrix.
---@param bone number The bone ID
---@param matrix VMatrix The matrix to set
function Entity:setBoneMatrix(bone, matrix) end

--- Returns whether the entity is dormant or not, i.e. whether or not information about the entity is being sent to your client. Not to be confused with PhysObj:isAsleep
--- Clientside, this will usually be true if the object is outside of your PVS (potentially visible set).
--- Serverside, this will almost always be false.
---@return boolean # Whether entity is dormant or not.
function Entity:isDormant() end

--- Returns the amount of pose parameters the entity has
---@return number # Amount of poses
function Entity:getPoseCount() end

--- Applies linear force to the entity with an offset
---@param force Vector The force vector in world coordinates
---@param position Vector The force position in world coordinates
function Entity:applyForceOffset(force, position) end

--- Returns the angular velocity of the entity
---@return Angle # The angular velocity as an angle
function Entity:getAngleVelocityAngle() end

--- Converts an angle in entity local space to world space
---@param data Angle Local space angle
---@return Angle # data as world space angle
function Entity:localToWorldAngles(data) end

--- Returns a table of save values for an entity.
--- These tables are not the same between the client and the server, and different entities may have different fields.
---@param showAll boolean If set, shows all variables, not just the ones for save.
---@return table # A table containing all save values in key/value format. The value may be a sequential table (starting to 1) if the field in question is an array in engine.
function Entity:getSaveTable(showAll) end

--- Get the amount of money in a "money bag" or cheque, or number of items in a dropped item stack. DarkRP only.
--- Equivalent to GLua Entity:Getamount.
---@return number? # Amount of money or number of items
function Entity:getAmount() end

--- Checks if an entity is valid.
---@return boolean # True if valid, false if not
function Entity:isValid() end

--- Sets a custom prop's physics simulation forces. Thrusters and balloons use this.
--- This takes precedence over Entity.setCustomPropShadowForce and cannot be used together
---@param ang Vector Angular Force (Torque)
---@param lin Vector Linear Force
---@param mode number The physics mode to use. 0 = Off (disables custom physics entirely), 1 = Local acceleration, 2 = Local force, 3 = Global Acceleration, 4 = Global force
function Entity:setCustomPropForces(ang, lin, mode) end

--- Returns the elasticity of the entity
---@return number # Elasticity
function Entity:getElasticity() end

--- Allows manipulation of an entity's bones' jiggle status
---@param bone number The bone ID
---@param enabled boolean Whether to make the bone jiggly or not
function Entity:manipulateBoneJiggle(bone, enabled) end

--- Returns entity's map creation ID. Unlike Entity:entIndex or Entity:getCreationID, it will always be the same on same map, no matter how much you clean up or restart it.
---@return number # The map creation ID or -1 if the entity is not compiled into the map.
function Entity:mapCreationID() end

--- Set the angular velocity of an object
---@param angvel Vector The local angvel vector to set
function Entity:setAngleVelocity(angvel) end

--- Allows manipulation of an entity's bones' scale
---@param bone number The bone ID
---@param vec Vector The scale it should be manipulated to
function Entity:manipulateBoneScale(bone, vec) end

--- Returns the distance between the center of the entity's bounding box and whichever corner of the bounding box is farthest away.
---@return number # The radius of the bounding box, or 0 for some entities such as worldspawn
function Entity:getBoundingRadius() end

--- Returns the principle moments of inertia of the entity
---@return Vector # The principle moments of inertia as a vector
function Entity:getInertia() end

--- Extinguishes an entity
function Entity:extinguish() end

--- Returns a table of flexname -> flexid pairs for use in flex functions.
---@return table # Table of flexes
function Entity:getFlexes() end

--- Gets the name of a sequence
---@param id number The id of the animation
---@return string # The sequence name
function Entity:getSequenceName(id) end

--- Checks if entity is marked as persistent
---@return boolean # True if the entity is persistent
function Entity:getPersistent() end

--- Gets the movetype enum of the entity
---@return number # The movetype enum of the entity. https://wiki.facepunch.com/gmod/Enums/MOVETYPE
function Entity:getMoveType() end

--- Converts a vector in world space to entity local space
---@param data Vector World space vector
---@return Vector # data as local space vector
function Entity:worldToLocal(data) end

--- Returns a list of all bodygroups of the entity
---@return table # Bodygroups as a table of BodyGroupDatas. https://wiki.facepunch.com/gmod/Structures/BodyGroupData
function Entity:getBodygroups() end

--- Get the length of an animation
---@param id number? (Optional) The id of the sequence, or will default to the currently playing sequence
---@return number # Length of the animation in seconds
function Entity:sequenceDuration(id) end

--- Gets the number of animations the entity has
---@return number # Count of entity's animations
function Entity:getSequenceCount() end

--- Returns the mass of the entity
---@return number # The numerical mass
function Entity:getMass() end

--- Gets the bounds (min and max corners) of a hit box.
---@param hitbox number The number of the hitbox.
---@param group number The number of the hitbox group, 0 in most cases.
---@return Vector # Hitbox mins vector.
---@return Vector # Hitbox maxs vector.
function Entity:getHitBoxBounds(hitbox, group) end

--- Returns whether or not the entity can be drawn using Entity.draw function
--- Checks Entity against a predefined class whitelist
--- Entities that have RenderOverride defined or are parented cannot be drawn
---@return boolean # Whether the entity can be drawn
function Entity:canDraw() end

--- Sets the entity's collision group
---@param group number The COLLISION_GROUP value to set it to
function Entity:setCollisionGroup(group) end

--- Gets a datatable boolean
---@param key number The number key. Valid keys are 0 - 31
---@return boolean? # The boolean or nil if it doesn't exist
function Entity:getDTBool(key) end

--- Sets whether an entity's shadow should be drawn
---@param draw boolean Whether the shadow should draw
function Entity:setDrawShadow(draw) end

--- Sets the renderfx of the entity, most effects require entity's alpha to be less than 255 to take effect
---@param renderfx number Renderfx to use. http://wiki.facepunch.com/gmod/Enums/kRenderFx
function Entity:setRenderFX(renderfx) end

--- Gets a datatable int
---@param key number The number key. Valid keys are 0 - 31
---@return number? # The int or nil if it doesn't exist
function Entity:getDTInt(key) end

--- Returns pose name corresponding to the given index
---@param id number Pose index (starting from 0)
---@return string # Pose name or empty string if not found
function Entity:getPoseName(id) end

--- Returns the velocity of the entity
---@return Vector # The velocity vector
function Entity:getVelocity() end

--- Returns the bodygroup value of the entity with given index
---@param id number The bodygroup's number index
---@return number # The bodygroup value
function Entity:getBodygroup(id) end

--- Invokes the entity's breaking animation and removes it.
function Entity:breakEnt() end

--- Converts a direction vector in entity local space to world space
---@param data Vector Local space vector direction
---@return Vector # data as world space vector direction
function Entity:localToWorldVector(data) end

--- Gets the number of physicsobjects of an entity
---@return number # The number of physics objects on the entity
function Entity:getPhysicsObjectCount() end

--- Returns pose index corresponding to the given name
---@param pose string Pose name
---@return number # Pose index or -1 if not found
function Entity:getPoseIndex(pose) end

--- Gets the render mode of the entity
---@return number # rendermode https://wiki.facepunch.com/gmod/Enums/RENDERMODE
function Entity:getRenderMode() end

--- Gets the table of all networked things on an entity
---@return table # The table of networked objects
function Entity:getNWVarTable() end

--- Sets the entity drag state
---@param drag boolean Should the entity have air resistance?
function Entity:enableDrag(drag) end

--- Returns min local bounding box vector of the entity
---@return Vector # The min bounding box vector
function Entity:obbMins() end

--- Returns the angular velocity of the entity
---@return Vector # The angular velocity as a vector
function Entity:getAngleVelocity() end

--- Gets a networked variable of an entity
---@param key string The string key to get
---@return any # The object associated with that key or nil if it's not set
function Entity:getNWVar(key) end

--- Gets the author of the specified starfall.
---@return string # The author of the starfall chip.
function Entity:getChipAuthor() end

--- Get the pose value of an animation
---@param pose string Pose parameter name
---@return number # Value of the pose parameter
function Entity:getPose(pose) end

--- Applies velocity to an object
---@param vel Vector The world velocity vector to apply
function Entity:addVelocity(vel) end

--- Gets the entity's right vector
---@return Vector # Vector right
function Entity:getRight() end

--- Returns the number of an entity's bones
---@return number # Number of bones
function Entity:getBoneCount() end

--- Returns the manipulate angle of the bone (relative to its default angle)
---@param bone number Bone index. (def 0)
---@return Angle # Manipulate angle of the bone
function Entity:getManipulateBoneAngles(bone) end

--- Gets a datatable vector
---@param key number The number key. Valid keys are 0 - 31
---@return Vector? # The vector or nil if it doesn't exist
function Entity:getDTVector(key) end

--- Sets the material of the entity
---@param material string New material name.
function Entity:setMaterial(material) end

--- Set the pose value of an animation. Turret/Head angles for example.
---@param pose string Name of the pose parameter
---@param value number Value to set it to.
function Entity:setPose(pose, value) end

--- Converts entity angles to a quaternion
---@return Quaternion # Constructed quaternion
function Entity:getQuaternion() end
