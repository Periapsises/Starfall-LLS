---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- PhysObj Type.
---@class PhysObj
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L22).
local PhysObj = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies a angular velocity to an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L327).
---@param angvel Vector # The local angvel vector to apply
function PhysObj:addAngleVelocity(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Adds game flags to the physics object. Some flags cannot be modified. Can be:.
--- FVPHYSICS.DMG_DISSOLVE.
--- FVPHYSICS.DMG_SLICE.
--- FVPHYSICS.HEAVY_OBJECT.
--- FVPHYSICS.NO_IMPACT_DMG.
--- FVPHYSICS.NO_NPC_IMPACT_DMG.
--- FVPHYSICS.NO_PLAYER_PICKUP.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L385).
---@param flags number # The flags to add. FVPHYSICS enum.
function PhysObj:addGameFlags(flags) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies velocity to an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L258).
---@param vel Vector # The world velocity vector to apply
function PhysObj:addVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies a force to the center of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L285).
---@param force Vector # The force vector to apply
function PhysObj:applyForceCenter(force) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies an offset force to a physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L298).
---@param force Vector # The force vector in world coordinates
---@param position Vector # The force position in world coordinates
function PhysObj:applyForceOffset(force, position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Applies a torque to a physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L340).
---@param torque Vector # The world torque vector to apply
function PhysObj:applyTorque(torque) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Calculates the linear and angular impulse on the object's center of mass for an offset impulse.
--- The outputs can be used with PhysObj:applyForceCenter and PhysObj:applyTorque, respectively.
--- Be careful to convert the angular impulse to world frame (PhysObj:localToWorldVector).
--- if you are going to use it with applyTorque.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L564).
---@param impulse Vector # The impulse acting on the object in world coordinates (kg*source_unit/s)
---@param position Vector # The location of the impulse in world coordinates
---@return Vector # The calculated linear impulse on the physics object's center of mass in kg*source_unit/s. (World frame)

---@return Vector # The calculated angular impulse on the physics object's center of mass in kg*m^2*degrees/s. (Local frame)
function PhysObj:calculateForceOffset(impulse, position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Calculates the linear and angular velocities on the center of mass for an offset impulse.
--- The outputs can be directly passed to PhysObj:addVelocity and PhysObj:addAngleVelocity, respectively.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L586).
---@param impulse Vector # The impulse acting on the object in world coordinates (kg*source_unit/s)
---@param position Vector # The location of the impulse in world coordinates
---@return Vector # The calculated linear velocity from the impulse on the physics object's center of mass in source_unit/s. (World frame)

---@return Vector # The calculated angular velocity from the impulse on the physics object's center of mass in degrees/s. (Local frame)
function PhysObj:calculateVelocityOffset(impulse, position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Clears game flags from the physics object. Some flags cannot be modified. Can be:.
--- FVPHYSICS.DMG_DISSOLVE.
--- FVPHYSICS.DMG_SLICE.
--- FVPHYSICS.HEAVY_OBJECT.
--- FVPHYSICS.NO_IMPACT_DMG.
--- FVPHYSICS.NO_NPC_IMPACT_DMG.
--- FVPHYSICS.NO_PLAYER_PICKUP.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L405).
---@param flags number # The flags to clear. FVPHYSICS enum.
function PhysObj:clearGameFlags(flags) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the bone drag state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L443).
---@param drag boolean # Should the bone have air resistance?
function PhysObj:enableDrag(drag) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets bone gravity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L434).
---@param grav boolean # Should the bone respect gravity?
function PhysObj:enableGravity(grav) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the bone movement state.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L497).
---@param move boolean # Should the bone move?
function PhysObj:enableMotion(move) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the axis aligned bounding box of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L90).
---@return Vector # The mins of the AABB

---@return Vector # The maxs of the AABB
function PhysObj:getAABB() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the angular velocity of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L108).
---@return Vector # Vector angular velocity of the physics object
function PhysObj:getAngleVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the angles of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L68).
---@return Angle # Angle angles of the physics object
function PhysObj:getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Movement damping of the bone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L476).
---@return number # Linear damping

---@return number # Angular damping
function PhysObj:getDamping() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the entity attached to the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L47).
---@return Entity # The entity attached to the physics object
function PhysObj:getEntity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns table of tables of friction data of a contact against the physobj.
--- PhysObj Other - The other physics object we came in contact with.
--- number EnergyAbsorbed -.
--- number FrictionCoefficient -.
--- number NormalForce -.
--- Vector Normal - Direction of the friction event.
--- Vector ContactPoint - Contact point of the friction event.
--- number Material - Surface Property ID of our physics obj.
--- number MaterialOther - Surface Property ID of the physics obj we came in contact with.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L530).
---@return table # Table of tables of data. Each table will contain:
function PhysObj:getFrictionSnapshot() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the inertia of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L129).
---@return Vector # Vector Inertia of the physics object
function PhysObj:getInertia() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the velocity of the physics object in coordinates local to itself.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L82).
---@return Vector # Vector velocity of the physics object local to itself
function PhysObj:getLocalVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the mass of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L115).
---@return number # Mass of the physics object
function PhysObj:getMass() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the center of mass of the physics object in the local reference frame.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L122).
---@return Vector # Center of mass vector in the physobject's local reference frame.
function PhysObj:getMassCenter() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the material of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L136).
---@return string # The physics material of the physics object
function PhysObj:getMaterial() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the world transform matrix of the physobj.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L61).
---@return VMatrix # The matrix
function PhysObj:getMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of MeshVertex structures where each 3 vertices represent a triangle. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L171).
---@return table # Table of MeshVertex structures
function PhysObj:getMesh() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a structured table, the physics mesh of the physics object. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L178).
---@return table # Table of MeshVertex structures
function PhysObj:getMeshConvexes() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the position of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L54).
---@return Vector # Vector position of the physics object
function PhysObj:getPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the stress of the entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L556).
---@return number # External stress. Usually about the mass of the object if on the ground, usually 0 if in freefall.

---@return number # Internal stress. Usually about the mass of every object resting on top of it combined.
function PhysObj:getStress() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the surface area of the object in Hammer units squared.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L198).
---@return number? # Surface area, or nil if a generated sphere or box
function PhysObj:getSurfaceArea() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the velocity of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L75).
---@return Vector # Vector velocity of the physics object
function PhysObj:getVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the velocity of the physics object at an arbitrary point in its local reference frame.
--- This includes velocity at the point induced by rotational velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L99).
---@param vec Vector # The point to get velocity of in local reference frame
---@return Vector # Vector Local velocity of the physics object at the point
function PhysObj:getVelocityAtPoint(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the volume in source units cubed. Or nil if the PhysObj is a generated sphere or box.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L549).
---@return number? # The volume or nil if the PhysObj is a generated sphere or box.
function PhysObj:getVolume() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the game flags of the physics object are set.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L425).
---@param flags number # The flags to test. FVPHYSICS enum.
---@return boolean # If the flags are set
function PhysObj:hasGameFlags(flags) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the physobj is asleep.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L506).
---@return boolean # If the physobj is asleep
function PhysObj:isAsleep() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Check if bone is affected by air resistance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L451).
---@return boolean # If bone is affected by drag
function PhysObj:isDragEnabled() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the entity is affected by gravity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L211).
---@return boolean # Whether the object is affect gravity
function PhysObj:isGravityEnabled() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the entity is able to move.
--- Inverse of Entity:isFrozen.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L204).
---@return boolean # Whether the object is moveable
function PhysObj:isMoveable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the physics object is valid.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L40).
---@return boolean # If the physics object is valid
function PhysObj:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a vector in the reference frame of the world from the local frame of the physicsobject.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L150).
---@param vec Vector # The vector to transform
---@return Vector # The transformed vector
function PhysObj:localToWorld(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a normal vector in the reference frame of the world from the local frame of the physicsobject.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L164).
---@param vec Vector # The normal vector to transform
---@return Vector # The transformed vector
function PhysObj:localToWorldVector(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets coefficient of air resistance affecting the bone when rotating. Air resistance depends on the cross-section of the object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L467).
---@param coeff number # How much drag affects the bone when rotating
function PhysObj:setAngleDragCoefficient(coeff) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the angular velocity of an object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L314).
---@param angvel Vector # The local angvel vector to set
function PhysObj:setAngleVelocity(angvel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the angles of the physics object. Will cause interpolation of the entity in clientside, use entity.setAngles to avoid this.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L232).
---@param ang Angle # The angle to set it to
function PhysObj:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the buoyancy ratio of a physobject.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L270).
---@param ratio number # The buoyancy ratio to use
function PhysObj:setBuoyancyRatio(ratio) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the movement damping of the bone. Unlike air drag, it doesn't take into account the cross-section of the object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L484).
---@param linear number # Number of the linear damping
---@param angular number # Number of the angular damping
function PhysObj:setDamping(linear, angular) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets coefficient of air resistance affecting the bone. Air resistance depends on the cross-section of the object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L458).
---@param coeff number # How much drag affects the bone
function PhysObj:setDragCoefficient(coeff) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the inertia of a physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L366).
---@param inertia Vector # The inertia vector to set it to
function PhysObj:setInertia(inertia) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the mass of a physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L353).
---@param mass number # The mass to set it to
function PhysObj:setMass(mass) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the physical material of a physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L185).
---@param materialName string # The physical material to set it to
function PhysObj:setMaterial(materialName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the position of the physics object. Will cause interpolation of the entity in clientside, use entity.setPos to avoid this.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L219).
---@param pos Vector # The position vector to set it to
function PhysObj:setPos(pos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Sets the velocity of the physics object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L245).
---@param vel Vector # The velocity vector to set it to
function PhysObj:setVelocity(vel) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes a physobj go to sleep. (like it's frozen but interacting wakes it back up).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L514).
function PhysObj:sleep() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Makes a sleeping physobj wakeup.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L522).
function PhysObj:wake() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a vector in the local reference frame of the physicsobject from the world frame.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L143).
---@param vec Vector # The vector to transform
---@return Vector # The transformed vector
function PhysObj:worldToLocal(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a normal vector in the local reference frame of the physicsobject from the world frame.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physobj.lua#L157).
---@param vec Vector # The normal vector to transform
---@return Vector # The transformed vector
function PhysObj:worldToLocalVector(vec) end

