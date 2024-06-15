---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Entity type.
---@class Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L57).
local Entity = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the string representation of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L88).
---@return string # String representation of the entity
function Entity:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies a angular velocity to an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L236).
---@param angvel Vector # The local angvel vector to apply
function Entity:addAngleVelocity(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Allows detecting collisions on an entity. You can only do this once for the entity's entire lifespan so use it wisely.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L377).
---@param func function # The callback function with argument, table collsiondata, http://wiki.facepunch.com/gmod/Structures/CollisionData
function Entity:addCollisionListener(func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies velocity to an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L456).
---@param vel Vector # The world velocity vector to apply
function Entity:addVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies angular force to the entity (This function is garbage, use applyTorque instead).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L307).
---@param ang Angle # The force angle
function Entity:applyAngForce(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies damage to an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L114).
---@param amt number # Damage amount
---@param attacker Entity? # Damage attacker
---@param inflictor Entity? # Damage inflictor
---@param dmgtype number? # The damage type number enum
---@param pos Vector? # The position of the damage
function Entity:applyDamage(amt, attacker, inflictor, dmgtype, pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies linear force to the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L273).
---@param vec Vector # The force vector
function Entity:applyForceCenter(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies linear force to the entity with an offset.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L288).
---@param force Vector # The force vector in world coordinates
---@param position Vector # The force position in world coordinates
function Entity:applyForceOffset(force, position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies torque.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L347).
---@param torque Vector # The torque vector
function Entity:applyTorque(torque) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Invokes the entity's breaking animation and removes it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L480).
function Entity:breakEnt() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns whether or not the entity can be drawn using Entity.draw function.
--- Checks Entity against a predefined class whitelist.
--- Entities that have RenderOverride defined or are parented cannot be drawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L261).
---@return boolean # Whether the entity can be drawn
function Entity:canDraw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Stops the entity from being saved on duplication or map save.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L983).
function Entity:doNotDuplicate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the DarkRP door index of a door. Use this to store door information in the database.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L815).
---@return number? # The door index, or nil if not a door.
function Entity:doorIndex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws the entity, requires 3D rendering context.
--- Only certain, whitelisted entities can be drawn. They can't be parented or have RenderOverride defined.
--- Use Entity.canDraw to check if you can draw the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L270).
function Entity:draw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Plays a sound on the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L304).
---@param snd string # Sound path
---@param soundLevel number # Default 75
---@param pitchPercent number # Default 100
---@param volume number # Default 1
---@param channel number # Default CHAN_AUTO or CHAN_WEAPON for weapons
function Entity:emitSound(snd, soundLevel, pitchPercent, volume, channel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity drag state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L654).
---@param drag boolean # Should the entity have air resistance?
function Entity:enableDrag(drag) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets entity gravity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L640).
---@param grav boolean # Should the entity respect gravity?
function Entity:enableGravity(grav) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity movement state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L667).
---@param move boolean # Should the entity move?
function Entity:enableMotion(move) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the physics of an entity to be a sphere.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L696).
---@param enabled boolean # Should the entity be spherical?
---@param radius number? # Optional custom radius to use (max 500). Otherwise the prop's obb is used
function Entity:enableSphere(enabled, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the EntIndex of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L992).
---@return number # The numerical index of the entity
function Entity:entIndex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the game assigned owner of an entity. This doesn't take CPPI into account and will return nil for most standard entities.
--- Used on entities with custom physics like held SWEPs and fired bullets in which case player entity should be returned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1669).
---@return Entity # Owner
function Entity:entOwner() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Extinguishes an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L508).
function Entity:extinguish() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets a table of all constrained entities to each other.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L765).
---@param filter table? # Optional constraint type filter table where keys are the type name and values are 'true'. "Wire" and "Parent" are used for wires and parents.
function Entity:getAllConstrained(filter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the amount of money in a "money bag" or cheque, or number of items in a dropped item stack. DarkRP only.
--- Equivalent to GLua Entity:Getamount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L870).
---@return number? # Amount of money or number of items
function Entity:getAmount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the angular velocity of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1243).
---@return Vector # The angular velocity as a vector
function Entity:getAngleVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the angular velocity of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1252).
---@return Angle # The angular velocity as an angle
function Entity:getAngleVelocityAngle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the angle of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1199).
---@return Angle # The angle
function Entity:getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the position and angle of an attachment.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L677).
---@param index number # The index of the attachment
---@return Vector? # Position, nil if the attachment doesn't exist

---@return Angle? # Orientation, nil if the attachment doesn't exist
function Entity:getAttachment(index) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the attachment index the entity is parented to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L662).
---@return number # Index of the attachment the entity is parented to or 0
function Entity:getAttachmentParent() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of attachments.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L689).
---@return table? # Table of attachment id and attachment name or nil
function Entity:getAttachments() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the bodygroup value of the entity with given index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L520).
---@param id number # The bodygroup's number index
---@return number # The bodygroup value
function Entity:getBodygroup(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of possible values for this bodygroup.
--- Note that bodygroups are 0-indexed, so this will not return the maximum allowed value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L556).
---@param id number # The ID of the bodygroup to get the count for.
---@return number # Number of values of specified bodygroup, or 0 if there are none.
function Entity:getBodygroupCount(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the bodygroup name of the entity with given index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L546).
---@param id number # The bodygroup's number index
---@return string # The bodygroup name
function Entity:getBodygroupName(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a list of all bodygroups of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L530).
---@return table # Bodygroups as a table of BodyGroupDatas. https://wiki.facepunch.com/gmod/Structures/BodyGroupData
function Entity:getBodygroups() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of an entity's bones.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1060).
---@return number # Number of bones
function Entity:getBoneCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the matrix of the entity's bone. Note: this method is slow/doesnt work well if the entity isn't animated.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1029).
---@param bone number? # Bone index. (def 0)
---@return VMatrix # The matrix
function Entity:getBoneMatrix(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of an entity's bone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1067).
---@param bone number? # Bone index. (def 0)
---@return string # Name of the bone
function Entity:getBoneName(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the parent index of an entity's bone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1076).
---@param bone number? # Bone index. (def 0)
---@return number # Parent index of the bone. Returns -1 on error
function Entity:getBoneParent(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the bone's position and angle in world coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1085).
---@param bone number? # Bone index. (def 0)
---@return Vector # Position of the bone

---@return Angle # Angle of the bone
function Entity:getBonePosition(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the distance between the center of the entity's bounding box and whichever corner of the bounding box is farthest away.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1859).
---@return number # The radius of the bounding box, or 0 for some entities such as worldspawn
function Entity:getBoundingRadius() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns info about the given brush plane.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1751).
---@param id number # Plane index. Starts from 0
---@return Vector # The origin of the plane

---@return Vector # The normal of the plane

---@return number # The distance to the plane
function Entity:getBrushPlane(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of planes of the brush entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1763).
---@return number # The amount of brush planes
function Entity:getBrushPlaneCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of brushes surfaces for brush model entities.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1738).
---@return table # Table of SurfaceInfos if the entity has a brush model, or no value otherwise.
function Entity:getBrushSurfaces() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the children (the parented entities) of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L655).
---@return table # Table of parented children
function Entity:getChildren() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the author of the specified starfall.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L893).
---@return string # The author of the starfall chip.
function Entity:getChipAuthor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the starfall or expression2's name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L882).
---@return string # The name of the chip
function Entity:getChipName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the class of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L999).
---@return string # The string class name
function Entity:getClass() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the clipping of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L775).
---@return table # Table containing the clipdata
function Entity:getClipping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the collision group enum of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L696).
---@return number # The collision group enum of the entity. https://wiki.facepunch.com/gmod/Enums/COLLISION_GROUP
function Entity:getCollisionGroup() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the color of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L768).
---@return Color # Color
function Entity:getColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the number of items remaining in a shipment. DarkRP only.
--- Equivalent to GLua Entity:Getcount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L878).
---@return number? # Number of items remaining, or nil if not a shipment
function Entity:getCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns entity's creation ID (similar to entIndex, but increments monotonically).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L897).
---@return number # The creation ID
function Entity:getCreationID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the timer.curtime() time the entity was created on.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1635).
---@return number # Seconds relative to server map start
function Entity:getCreationTime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1770).
---@param key number # The number key. Valid keys are 0 - 31
---@return Angle? # The angle or nil if it doesn't exist
function Entity:getDTAngle(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable boolean.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1780).
---@param key number # The number key. Valid keys are 0 - 31
---@return boolean? # The boolean or nil if it doesn't exist
function Entity:getDTBool(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1790).
---@param key number # The number key. Valid keys are 0 - 31
---@return Entity? # The entity or nil if it doesn't exist
function Entity:getDTEntity(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable float.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1800).
---@param key number # The number key. Valid keys are 0 - 31
---@return number? # The float or nil if it doesn't exist
function Entity:getDTFloat(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable int.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1810).
---@param key number # The number key. Valid keys are 0 - 31
---@return number? # The int or nil if it doesn't exist
function Entity:getDTInt(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1820).
---@param key number # The number key. Valid keys are 0 - 31
---@return string? # The string or nil if it doesn't exist
function Entity:getDTString(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a datatable vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1830).
---@param key number # The number key. Valid keys are 0 - 31
---@return Vector? # The vector or nil if it doesn't exist
function Entity:getDTVector(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the owner of a door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L830).
---@return Player? # The owner of the door, or nil if the door is unowned.
function Entity:getDoorOwner() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the elasticity of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L762).
---@return number # Elasticity
function Entity:getElasticity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets all players the specified starfall errored for.
--- This excludes the owner of the starfall chip.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L945).
---@return table # A table containing the errored players.
function Entity:getErroredPlayers() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity's eye angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1567).
---@return Angle # Angles of the entity's eyes
function Entity:getEyeAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity's eye position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1574).
---@return Vector # Eye position of the entity

---@return Vector? # In case of a ragdoll, the position of the second eye
function Entity:getEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the ID of the flex based on given name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1430).
---@param flexname string # The name of the flex to get the ID of. Case sensitive.
---@return number # The ID of the flex based on given name.
function Entity:getFlexByName(flexname) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns flex name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1439).
---@param flexid number # The flex id to look up name of.
---@return string # The flex name
function Entity:getFlexName(flexid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the scale of the entity flexes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1494).
---@return number # The scale of the flexes
function Entity:getFlexScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the weight (value) of a flex.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1455).
---@param flexid number # The id of the flex
---@return number # The weight of the flex
function Entity:getFlexWeight(flexid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of flexname -> flexid pairs for use in flex functions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1419).
---@return table # Table of flexes
function Entity:getFlexes() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity's forward vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1628).
---@return Vector # Vector forward
function Entity:getForward() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns how much friction the entity has, default is 1 (100%).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L251).
---@return number # friction
function Entity:getFriction() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the health of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1560).
---@return number # Health of the entity
function Entity:getHealth() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the bone the given hitbox is attached to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1701).
---@param hitbox number # The number of the hitbox.
---@param group number # The number of the hitbox group, 0 in most cases.
---@return number # Bone ID
function Entity:getHitBoxBone(hitbox, group) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the bounds (min and max corners) of a hit box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1677).
---@param hitbox number # The number of the hitbox.
---@param group number # The number of the hitbox group, 0 in most cases.
---@return Vector # Hitbox mins vector.

---@return Vector # Hitbox maxs vector.
function Entity:getHitBoxBounds(hitbox, group) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets number of hitboxes in a group.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1692).
---@param group number # The number of the hitbox group.
---@return number # Number of hitboxes
function Entity:getHitBoxCount(group) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the hit group of a given hitbox in a given hitbox set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1727).
---@param hitbox number # The number of the hit box.
---@param hitboxset number # The number of the hit box set. This should be 0 in most cases.
---@return number # The hitbox group of given hitbox. See https://wiki.facepunch.com/gmod/Enums/HITGROUP
function Entity:getHitBoxHitGroup(hitbox, hitboxset) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns entity's current hit box set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1712).
---@return number? # Hitbox set number, nil if entity has no hitboxes.

---@return string? # Hitbox set name, nil if entity has no hitboxes.
function Entity:getHitBoxSet() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns entity's number of hitbox sets.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1720).
---@return number # Number of hitbox sets.
function Entity:getHitBoxSetCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the principle moments of inertia of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1217).
---@return Vector # The principle moments of inertia as a vector
function Entity:getInertia() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a variable from the entity's save table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1893).
---@param variableName string # Name of the internal save table variable.
---@return any # The internal variable associated with the name.
function Entity:getInternalVariable(variableName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the title of this door or vehicle. DarkRP only.
--- If you don't know what this is referring to, that's because it's not a commonly used feature. Press F2 on a door and click "Set Door Title".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L837).
---@return string? # The title of the door or vehicle, or nil if none is set.
function Entity:getKeysTitle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a list of components linked to a processor. Can also return vehicles linked to a HUD, but only through the server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L340).
---@return table # A list of components linked to the entity
function Entity:getLinkedComponents() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the velocity of the entity in its local coordinate system.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1235).
---@return Vector # Vector velocity of the physics object local to itself
function Entity:getLocalVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the manipulate angle of the bone (relative to its default angle).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1097).
---@param bone number # Bone index. (def 0)
---@return Angle # Manipulate angle of the bone
function Entity:getManipulateBoneAngles(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number manipulate jiggle of the bone (0 - 255).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1106).
---@param bone number? # Bone index. (def 0)
---@return number # Manipulate jiggle of the bone
function Entity:getManipulateBoneJiggle(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vector manipulate position of the bone (relative to its default position).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1115).
---@param bone number # Bone index. (def 0)
---@return Vector # Manipulate position of the bone
function Entity:getManipulateBonePosition(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vector manipulate scale of the bone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1124).
---@param bone number # Bone index. (def 0)
---@return Vector # Manipulate scale of the bone
function Entity:getManipulateBoneScale(bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the mass of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1206).
---@return number # The numerical mass
function Entity:getMass() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the local position of the entity's mass center.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1179).
---@return Vector # The position vector of the mass center
function Entity:getMassCenter() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the world position of the entity's mass center.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1189).
---@return Vector # The position vector of the mass center
function Entity:getMassCenterW() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets an entities' material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1586).
---@return string # String material
function Entity:getMaterial() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets an entities' material list.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1606).
---@return table # Material
function Entity:getMaterials() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the world transform matrix of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1053).
---@return VMatrix # The matrix
function Entity:getMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the max health of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1553).
---@return number # Max Health of the entity
function Entity:getMaxHealth() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the model of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1515).
---@return string # Model of the entity
function Entity:getModel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the entity's model bounds. This is different than the collision bounds/hull.
--- This is not scaled with Entity:SetModelScale and will return the model's original, unmodified mins and maxs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1522).
---@return Vector # Minimum vector of the bounds

---@return Vector # Maximum vector of the bounds
function Entity:getModelBounds() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the contents of the entity's current model.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1532).
---@return number # Contents of the entity's model. https://wiki.facepunch.com/gmod/Enums/CONTENTS
function Entity:getModelContents() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the model's radius.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1539).
---@return number # Radius of the model
function Entity:getModelRadius() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the model's scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1546).
---@return number # Scale of the model
function Entity:getModelScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the movetype enum of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L720).
---@return number # The movetype enum of the entity. https://wiki.facepunch.com/gmod/Enums/MOVETYPE
function Entity:getMoveType() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a networked variable of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1840).
---@param key string # The string key to get
---@return any # The object associated with that key or nil if it's not set
function Entity:getNWVar(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the table of all networked things on an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1852).
---@return table # The table of networked objects
function Entity:getNWVarTable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by SOLID_NONE.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1875).
---@param The Vector # vector to start the intersection from.
---@return Vector # The nearest hit point of the entity's bounding box in world coordinates, or Vector(0, 0, 0) for some entities such as worldspawn.
function Entity:getNearestPoint(The) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns entity's networked variables table (data table).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1910).
---@return table? # The networked variables table of the entity or nil if it doesn't have one.
function Entity:getNetworkVars() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the entity should be drawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L441).
---@return boolean # True if should draw, False otherwise
function Entity:getNoDraw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the owner of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L97).
---@return Entity # Owner
function Entity:getOwner() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the parent of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L648).
---@return Entity? # Entity's parent or nil if not parented
function Entity:getParent() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if entity is marked as persistent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1662).
---@return boolean # True if the entity is persistent
function Entity:getPersistent() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the physical material of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L607).
---@return string # The physical material
function Entity:getPhysMaterial() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the main physics objects of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L746).
---@return PhysObj # The main physics object of the entity
function Entity:getPhysicsObject() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the number of physicsobjects of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L740).
---@return number # The number of physics objects on the entity
function Entity:getPhysicsObjectCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a physics objects of an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L754).
---@param id number # The physics object id (starts at 0)
---@return PhysObj # The physics object of the entity
function Entity:getPhysicsObjectNum(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the position of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1006).
---@return Vector # The position vector
function Entity:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the pose value of an animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1384).
---@param pose string # Pose parameter name
---@return number # Value of the pose parameter
function Entity:getPose(pose) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of pose parameters the entity has.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1391).
---@return number # Amount of poses
function Entity:getPoseCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns pose index corresponding to the given name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1397).
---@param pose string # Pose name
---@return number # Pose index or -1 if not found
function Entity:getPoseIndex(pose) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns pose name corresponding to the given index.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1404).
---@param id number # Pose index (starting from 0)
---@return string # Pose name or empty string if not found
function Entity:getPoseName(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns pose value range.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1411).
---@param id number # Pose index (starting from 0)
---@return number? # Minimum pose value or nil if pose not found

---@return number? # Maximum pose value or nil if pose not found
function Entity:getPoseRange(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts entity angles to a quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L841).
---@return Quaternion # Constructed quaternion
function Entity:getQuaternion() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the Average CPU Time in the buffer of the specified starfall or expression2.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L915).
---@return number # Average CPU Time of the buffer of the specified starfall or expression2.
function Entity:getQuotaAverage() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the CPU Time max of the specified starfall of the specified starfall or expression2.
--- CPU Time is stored in a buffer of N elements, if the average of this exceeds quotaMax, the chip will error.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L929).
---@return number # Max SysTime allowed to take for execution of the chip in a Think.
function Entity:getQuotaMax() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the current count for this Think's CPU Time of the specified starfall.
--- This value increases as more executions are done, may not be exactly as you want.
--- If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L903).
---@return number # Current quota used this Think
function Entity:getQuotaUsed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the renderfx of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L640).
---@return number # Renderfx, https://wiki.facepunch.com/gmod/Enums/kRenderFx
function Entity:getRenderFX() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the render mode of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L614).
---@return number # rendermode https://wiki.facepunch.com/gmod/Enums/RENDERMODE
function Entity:getRenderMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity's right vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1621).
---@return Vector # Vector right
function Entity:getRight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of save values for an entity.
--- These tables are not the same between the client and the server, and different entities may have different fields.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1884).
---@param showAll boolean # If set, shows all variables, not just the ones for save.
---@return table # A table containing all save values in key/value format. The value may be a sequential table (starting to 1) if the field in question is an array in engine.
function Entity:getSaveTable(showAll) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the current playing sequence.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1319).
---@return number # The sequence number
function Entity:getSequence() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the number of animations the entity has.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1352).
---@return number # Count of entity's animations
function Entity:getSequenceCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets various information about the specified animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1333).
---@param id number # The ID of the animation
---@return table # Animation info
function Entity:getSequenceInfo(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns all animations of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1346).
---@return table # List of animations, starts at index 0 where value is the animation's name
function Entity:getSequenceList() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the name of a sequence.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1325).
---@param id number # The id of the animation
---@return string # The sequence name
function Entity:getSequenceName(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the info for the contents of the shipment. DarkRP only.
--- Equivalent to "darkrp.getCustomShipments()[ent:getShipmentContentsIndex()]".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L895).
---@return table? # Contents, or nil if not a shipment
function Entity:getShipmentContents() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the index of the contents of the shipment, which should then be looked up in the output of "darkrp.getCustomShipments". DarkRP only.
--- Equivalent to GLua Entity:Getcontents.
--- You may prefer to use Entity:getShipmentContents instead, although that function is slightly slower.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L886).
---@return number? # Index of contents, or nil if not a shipment
function Entity:getShipmentContentsIndex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the skin number of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L582).
---@return number # Skin number
function Entity:getSkin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the amount of skins of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L589).
---@return number # The amount of skins
function Entity:getSkinCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the solid enum of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L702).
---@return number # The solid enum of the entity. https://wiki.facepunch.com/gmod/Enums/SOLID
function Entity:getSolid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the solid flag enum of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L708).
---@return number # The solid flag enum of the entity. https://wiki.facepunch.com/gmod/Enums/FSOLID
function Entity:getSolidFlags() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets an entities' submaterial.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1594).
---@param index number # Number index of the sub material
---@return string # String material
function Entity:getSubMaterial(index) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a copy of the entity's sanitized internal glua table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L938).
---@return table # The entity's table.
function Entity:getTable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity's up vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1614).
---@return Vector # Vector up
function Entity:getUp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a variable from the entity's internal glua table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L946).
---@param key string # The variable's key.
---@return any # The variable.
function Entity:getVar(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the velocity of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1228).
---@return Vector # The velocity vector
function Entity:getVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns how submerged the entity is in water.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1013).
---@return number # The water level. 0 none, 1 slightly, 2 at least halfway, 3 all the way
function Entity:getWaterLevel() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns an entities wirelink.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L629).
---@return Wirelink # Wirelink of the entity
function Entity:getWirelink() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the the entity has had flex manipulations performed with Entity:setFlexWeight or Entity:setFlexScale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1448).
---@return boolean # True if the entity has flex manipulations, false otherwise.
function Entity:hasFlexManipulations() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ignites an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L490).
---@param length number # How long the fire lasts
---@param radius number? # (optional) How large the fire hitbox is (entity obb is the max)
function Entity:ignite(length, radius) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns if the entity is a constraint.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L633).
---@return boolean # If the entity is a constraint
function Entity:isConstraint() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this entity is considered a door by DarkRP.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L844).
---@return boolean # Whether it's a door.
function Entity:isDoor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the entity is dormant or not, i.e. whether or not information about the entity is being sent to your client. Not to be confused with PhysObj:isAsleep.
--- Clientside, this will usually be true if the object is outside of your PVS (potentially visible set).
--- Serverside, this will almost always be false.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1866).
---@return boolean # Whether entity is dormant or not.
function Entity:isDormant() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an engine effect is applied to the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1642).
---@param effect number # The effect to check. EF table values
---@return boolean # True or false
function Entity:isEffectActive(effect) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks the entities frozen state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L687).
---@return boolean # True if entity is frozen
function Entity:isFrozen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this door is owned by someone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L850).
---@return boolean # Whether it's owned.
function Entity:isKeysOwned() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this door is owned or co-owned by this player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L856).
---@param ply Player # The player to query.
---@return boolean # Whether this door is (co-)owned by the player.
function Entity:isKeysOwnedBy(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get whether this door/vehicle is locked. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L822).
---@return boolean # Whether it's locked.
function Entity:isLocked() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this entity is a "money bag", i.e. dropped money from a money printer or /dropmoney. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L864).
---@return boolean # Whether this entity is a money bag.
function Entity:isMoneyBag() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an entity is an npc.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L861).
---@return boolean # True if npc, false if not
function Entity:isNPC() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if the entity is ignited.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L875).
---@return boolean # If the entity is on fire or not
function Entity:isOnFire() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the entity ONGROUND flag is set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L868).
---@return boolean # If it's flag is set or not
function Entity:isOnGround() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an entity is a player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L840).
---@return boolean # True if player, false if not
function Entity:isPlayer() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns true if the entity is being held by a player. Either by Physics gun, Gravity gun or Use-key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L625).
---@return boolean # If the entity is being held or not
function Entity:isPlayerHolding() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the animation is playing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1358).
---@return boolean # True if the animation is currently playing, False otherwise
function Entity:isSequenceFinished() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets whether an entity is solid or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L714).
---@return boolean # whether an entity is solid or not
function Entity:isSolid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an entity is valid.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L833).
---@return boolean # True if valid, false if not
function Entity:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks whether entity has physics.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L617).
---@return boolean # If entity has physics
function Entity:isValidPhys() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an entity is a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L854).
---@return boolean # True if vehicle, false if not
function Entity:isVehicle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if an entity is a weapon.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L847).
---@return boolean # True if weapon, false if not
function Entity:isWeapon() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets what the entity is welded to. If the entity is parented, returns the parent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L748).
---@return Entity # The first welded/parent entity
function Entity:isWeldedTo() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Links starfall components to a starfall processor or vehicle. Screen can only connect to processor. HUD can connect to processor and vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L72).
---@param e Entity? # Entity to link the component to, a vehicle or starfall for huds, or a starfall for screens. nil to clear links.
function Entity:linkComponent(e) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a vector in entity local space to world space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1262).
---@param data Vector # Local space vector
---@return Vector # data as world space vector
function Entity:localToWorld(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts an angle in entity local space to world space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1278).
---@param data Angle # Local space angle
---@return Angle # data as world space angle
function Entity:localToWorldAngles(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a direction vector in entity local space to world space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1270).
---@param data Vector # Local space vector direction
---@return Vector # data as world space vector direction
function Entity:localToWorldVector(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the attachment index via the entity and it's attachment name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L669).
---@param name string # of the attachment to lookup
---@return number # Number of the attachment index, or 0 if it doesn't exist
function Entity:lookupAttachment(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the bodygroup index of the entity with given name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L537).
---@param name string # The bodygroup's string name
---@return number # The bodygroup index
function Entity:lookupBodygroup(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the ragdoll bone index given a bone name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1020).
---@param name string # The bone's string name
---@return number # The bone index
function Entity:lookupBone(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the animation number from the animation name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1310).
---@param animation string # Name of the animation
---@return number # Animation index or -1 if invalid
function Entity:lookupSequence(animation) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Allows manipulation of an entity's bones' angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L142).
---@param bone number # The bone ID
---@param ang Angle # The angle it should be manipulated to
function Entity:manipulateBoneAngles(bone, ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Allows manipulation of an entity's bones' jiggle status.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L158).
---@param bone number # The bone ID
---@param enabled boolean # Whether to make the bone jiggly or not
function Entity:manipulateBoneJiggle(bone, enabled) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Allows manipulation of an entity's bones' positions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L110).
---@param bone number # The bone ID
---@param vec Vector # The position it should be manipulated to
function Entity:manipulateBonePosition(bone, vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Allows manipulation of an entity's bones' scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L126).
---@param bone number # The bone ID
---@param vec Vector # The scale it should be manipulated to
function Entity:manipulateBoneScale(bone, vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns entity's map creation ID. Unlike Entity:entIndex or Entity:getCreationID, it will always be the same on same map, no matter how much you clean up or restart it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1903).
---@return number # The map creation ID or -1 if the entity is not compiled into the map.
function Entity:mapCreationID() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the local position of the entity's outer bounding box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1141).
---@return Vector # The position vector of the outer bounding box center
function Entity:obbCenter() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the world position of the entity's outer bounding box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1148).
---@return Vector # The position vector of the outer bounding box center
function Entity:obbCenterW() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns max local bounding box vector of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1163).
---@return Vector # The max bounding box vector
function Entity:obbMaxs() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns min local bounding box vector of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1156).
---@return Vector # The min bounding box vector
function Entity:obbMins() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the x, y, z size of the entity's outer bounding box (local to the entity).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1133).
---@return Vector # The outer bounding box size
function Entity:obbSize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes an entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L471).
function Entity:remove() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes a collision listening hook from the entity so that a new one can be added.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L396).
function Entity:removeCollisionListener() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes trails from the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L849).
function Entity:removeTrails() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the length of an animation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1364).
---@param id number? # (Optional) The id of the sequence, or will default to the currently playing sequence
---@return number # Length of the animation in seconds
function Entity:sequenceDuration(id) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Set the angular velocity of an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L221).
---@param angvel Vector # The local angvel vector to set
function Entity:setAngleVelocity(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L432).
---@param ang Angle # New angles
function Entity:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the bodygroup of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L501).
---@param bodygroup number # The ID of the bodygroup you're setting.
---@param value number # The value you're setting the bodygroup to.
function Entity:setBodygroup(bodygroup, value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the bone matrix of given bone to given matrix. See also Entity:getBoneMatrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1039).
---@param bone number # The bone ID
---@param matrix VMatrix # The matrix to set
function Entity:setBoneMatrix(bone, matrix) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's collision group.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L537).
---@param group number # The COLLISION_GROUP value to set it to
function Entity:setCollisionGroup(group) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the color of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L413).
---@param clr Color # New color
function Entity:setColor(clr) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a component's ability to lock a player's controls.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L101).
---@param enable boolean # Whether the component will lock the player's controls when used
function Entity:setComponentLocksControls(enable) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a custom prop's physics simulation forces. Thrusters and balloons use this.
--- This takes precedence over Entity.setCustomPropShadowForce and cannot be used together.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L146).
---@param ang Vector # Angular Force (Torque)
---@param lin Vector # Linear Force
---@param mode number # The physics mode to use. 0 = Off (disables custom physics entirely), 1 = Local acceleration, 2 = Local force, 3 = Global Acceleration, 4 = Global force
function Entity:setCustomPropForces(ang, lin, mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a custom prop's shadow forces, moving the entity to the desired position and angles.
--- This gets overriden by Entity.setCustomPropForces and cannot be used together.
--- See available parameters here: https://wiki.facepunch.com/gmod/PhysObj:ComputeShadowControl.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L174).
---@param table any # |false data Shadow physics data, excluding 'deltatime'. 'teleportdistance' higher than 0 requires 'entities.setPos'. Pass a falsy value to disable custom physics entirely
function Entity:setCustomPropShadowForce(table) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets whether an entity's shadow should be drawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L412).
---@param draw boolean # Whether the shadow should draw
function Entity:setDrawShadow(draw) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the elasticity of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L265).
---@param elasticity number # 
function Entity:setElasticity(elasticity) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the scale of the entity flexes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1500).
---@param scale number # The scale of the flexes to set
function Entity:setFlexScale(scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the weight (value) of a flex.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1471).
---@param flexid number # The id of the flex
---@param weight number # The weight of the flex
function Entity:setFlexWeight(flexid, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's friction multiplier.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L257).
---@param friction number # 
function Entity:setFriction(friction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity frozen state, same as `Entity.enableMotion` but inverted.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L681).
---@param freeze boolean # Should the entity be frozen?
function Entity:setFrozen(freeze) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the health of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L963).
---@param newhealth number # New health value.
function Entity:setHealth(newhealth) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's inertia.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L575).
---@param vec Vector # Inertia tensor
function Entity:setInertia(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the Level Of Detail model to use with this entity. This may not work for all models if the model doesn't include any LOD sub models.
--- This function works exactly like the clientside r_lod convar and takes priority over it.
--- -1 leaves the engine to automatically set the Level of Detail. The Level Of Detail may range from 0 to 8, with 0 being the highest quality and 8 the lowest.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L248).
---@param lod number # The Level Of Detail model ID to use.
function Entity:setLOD(lod) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's mass.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L559).
---@param mass number # Mass to set to
function Entity:setMass(mass) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the material of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L448).
---@param material string # New material name.
function Entity:setMaterial(material) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the maximum health for entity. Note, that you can still set entity's health above this amount with Entity:setHealth.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L973).
---@param newmaxhealth number # New max health value.
function Entity:setMaxHealth(newmaxhealth) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a hologram or custom_prop model to a custom Mesh.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L174).
---@param mesh Mesh? # The mesh to set it to or nil to set back to normal
function Entity:setMesh(mesh) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a hologram or custom_prop's custom mesh material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L191).
---@param material Material? # The material to set it to or nil to set back to default
function Entity:setMeshMaterial(material) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the whether an entity should be drawn or not. If serverside, will also prevent networking the entity to the client. Don't use serverside on a starfall if you want its client code to work.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L431).
---@param draw boolean # Whether to draw the entity or not.
function Entity:setNoDraw(draw) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Set's the entity to collide with nothing but the world. Alias to entity:setCollisionGroup(COLLISION_GROUP_WORLD).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L549).
---@param nocollide boolean # Whether to collide with nothing except world or not.
function Entity:setNocollideAll(nocollide) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Parents or unparents an entity. Only holograms can be parented to players and clientside holograms can only be parented in the CLIENT realm.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L365).
---@param parent Entity? # Entity parent (nil to unparent)
---@param attachment number|string|nil # Optional attachment name or ID.
---@param bone number|string|nil # Optional bone name or ID. Can't be used at the same time as attachment
function Entity:setParent(parent, attachment, bone) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Marks entity as persistent, disallowing players from physgunning it. Persistent entities save on server shutdown when sbox_persist is set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1652).
---@param persist boolean # True to make persistent
function Entity:setPersistent(persist) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the physical material of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L593).
---@param materialName string # Material to use
function Entity:setPhysMaterial(materialName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Set the function to run whenever the physics of the entity are updated.
--- This won't be called if the physics object goes asleep.
--- You can only use this function on these classes:.
--- - starfall_prop.
--- - starfall_processor.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L909).
---@param func function|nil # The callback function. Use nil to remove an existing callback.
function Entity:setPhysicsUpdateListener(func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's position. No interpolation will occur clientside, use physobj.setPos to have interpolation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L421).
---@param vec Vector # New position
function Entity:setPos(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set the pose value of an animation. Turret/Head angles for example.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1374).
---@param pose string # Name of the pose parameter
---@param value number # Value to set it to.
function Entity:setPose(pose, value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a hologram or custom_prop's renderbounds.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L232).
---@param mins Vector # The lower bounding corner coordinate local to the hologram
---@param maxs Vector # The upper bounding corner coordinate local to the hologram
function Entity:setRenderBounds(mins, maxs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the renderfx of the entity, most effects require entity's alpha to be less than 255 to take effect.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L622).
---@param renderfx number # Renderfx to use. http://wiki.facepunch.com/gmod/Enums/kRenderFx
function Entity:setRenderFX(renderfx) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the render mode of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L596).
---@param rendermode number # Rendermode to use. http://wiki.facepunch.com/gmod/Enums/RENDERMODE
function Entity:setRenderMode(rendermode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the sheet color of a player-model.
--- Can only be used on players, bots, ragdolls, holograms and Starfall NextBots.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L213).
---@param clr Color # RGB color to use, alpha channel not supported
function Entity:setSheetColor(clr) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the skin of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L566).
---@param skinIndex number # Index of the skin to use.
function Entity:setSkin(skinIndex) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity to be Solid or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L527).
---@param solid boolean # Should the entity be solid?
function Entity:setSolid(solid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the submaterial of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L466).
---@param index number # Submaterial index.
---@param material string # New material name.
function Entity:setSubMaterial(index, material) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Adds a trail to the entity with the specified attributes.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L818).
---@param startSize number # The start size of the trail (0-128)
---@param endSize number # The end size of the trail (0-128)
---@param length number # The length size of the trail
---@param material string # The material of the trail
---@param color Color # The color of the trail
---@param attachmentID number? # Optional attachmentid the trail should attach to
---@param additive boolean? # If the trail's rendering is additive
function Entity:setTrails(startSize, endSize, length, material, color, attachmentID, additive) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets a prop_physics to be unbreakable.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L857).
---@param on boolean # Whether to make the prop unbreakable
function Entity:setUnbreakable(on) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the entity's linear velocity. Physics entities, use physobj:setVelocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L443).
---@param vel Vector # New velocity
function Entity:setVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Stops a sound on the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L325).
---@param snd string # string Soundscript path. See http://wiki.facepunch.com/gmod/Entity:StopSound
function Entity:stopSound(snd) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Check if the given Entity or Vector is within this entity's PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L879).
---@param other Entity|Vector # Entity or Vector to test
---@return boolean # If the Entity/Vector is within the PVS
function Entity:testPVS(other) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Casts a hologram entity into the hologram type.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hologram.lua#L89).
---@return Hologram # Hologram instance
function Entity:toHologram() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a ragdoll bone id to the corresponding physobject id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L726).
---@param boneid number # The ragdoll boneid
---@return number # The physobj id
function Entity:translateBoneToPhysBone(boneid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a physobject id to the corresponding ragdoll bone id.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L733).
---@param boneid number # The physobject id
---@return number # The ragdoll bone id
function Entity:translatePhysBoneToBone(boneid) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Simulate a Use action on the entity by the chip owner.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/entities.lua#L516).
---@param usetype number? # The USE_ enum use type. (Default: USE_ON)
---@param value number? # The use value (Default: 0)
function Entity:use(usetype, value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Entity axis aligned bounding box in world coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1170).
---@return Vector # The min bounding box vector

---@return Vector # The max bounding box vector
function Entity:worldSpaceAABB() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a vector in world space to entity local space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1286).
---@param data Vector # World space vector
---@return Vector # data as local space vector
function Entity:worldToLocal(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts an angle in world space to entity local space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1302).
---@param data Angle # World space angle
---@return Angle # data as local space angle
function Entity:worldToLocalAngles(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a direction vector in world space to entity local space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/entities.lua#L1294).
---@param data Vector # World space direction vector
---@return Vector # data as local space direction vector
function Entity:worldToLocalVector(data) end

