---@meta

---@class PhysObj
local PhysObj = {}

--- Returns whether the physobj is asleep
---@return boolean # If the physobj is asleep
function PhysObj:isAsleep() end

--- Gets the velocity of the physics object at an arbitrary point in its local reference frame
--- This includes velocity at the point induced by rotational velocity
---@param vec Vector The point to get velocity of in local reference frame
---@return Vector # Vector Local velocity of the physics object at the point
function PhysObj:getVelocityAtPoint(vec) end

--- Sets the movement damping of the bone. Unlike air drag, it doesn't take into account the cross-section of the object.
---@param linear number Number of the linear damping
---@param angular number Number of the angular damping
function PhysObj:setDamping(linear, angular) end

--- Gets the velocity of the physics object in coordinates local to itself
---@return Vector # Vector velocity of the physics object local to itself
function PhysObj:getLocalVelocity() end

--- Sets coefficient of air resistance affecting the bone. Air resistance depends on the cross-section of the object.
---@param coeff number How much drag affects the bone
function PhysObj:setDragCoefficient(coeff) end

--- Sets coefficient of air resistance affecting the bone when rotating. Air resistance depends on the cross-section of the object.
---@param coeff number How much drag affects the bone when rotating
function PhysObj:setAngleDragCoefficient(coeff) end

--- Applies an offset force to a physics object
---@param force Vector The force vector in world coordinates
---@param position Vector The force position in world coordinates
function PhysObj:applyForceOffset(force, position) end

--- Returns whether the entity is affected by gravity.
---@return boolean # Whether the object is affect gravity
function PhysObj:isGravityEnabled() end

--- Gets the center of mass of the physics object in the local reference frame.
---@return Vector # Center of mass vector in the physobject's local reference frame.
function PhysObj:getMassCenter() end

--- Applies a torque to a physics object
---@param torque Vector The world torque vector to apply
function PhysObj:applyTorque(torque) end

--- Sets the buoyancy ratio of a physobject
---@param ratio number The buoyancy ratio to use
function PhysObj:setBuoyancyRatio(ratio) end

--- Sets the angular velocity of an object
---@param angvel Vector The local angvel vector to set
function PhysObj:setAngleVelocity(angvel) end

--- Calculates the linear and angular impulse on the object's center of mass for an offset impulse.
--- The outputs can be used with PhysObj:applyForceCenter and PhysObj:applyTorque, respectively.
--- Be careful to convert the angular impulse to world frame (PhysObj:localToWorldVector)
--- if you are going to use it with applyTorque.
---@param impulse Vector The impulse acting on the object in world coordinates (kg*source_unit/s)
---@param position Vector The location of the impulse in world coordinates
---@return Vector # The calculated linear impulse on the physics object's center of mass in kg*source_unit/s. (World frame)
---@return Vector # The calculated angular impulse on the physics object's center of mass in kg*m^2*degrees/s. (Local frame)
function PhysObj:calculateForceOffset(impulse, position) end

--- Sets the velocity of the physics object
---@param vel Vector The velocity vector to set it to
function PhysObj:setVelocity(vel) end

--- Gets the inertia of the physics object
---@return Vector # Vector Inertia of the physics object
function PhysObj:getInertia() end

--- Returns a structured table, the physics mesh of the physics object. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
---@return table # Table of MeshVertex structures
function PhysObj:getMeshConvexes() end

--- Sets the bone drag state
---@param drag boolean Should the bone have air resistance?
function PhysObj:enableDrag(drag) end

--- Returns whether the entity is able to move.
--- Inverse of Entity:isFrozen
---@return boolean # Whether the object is moveable
function PhysObj:isMoveable() end

--- Returns a normal vector in the reference frame of the world from the local frame of the physicsobject
---@param vec Vector The normal vector to transform
---@return Vector # The transformed vector
function PhysObj:localToWorldVector(vec) end

--- Adds game flags to the physics object. Some flags cannot be modified. Can be:
--- FVPHYSICS.DMG_DISSOLVE
--- FVPHYSICS.DMG_SLICE
--- FVPHYSICS.HEAVY_OBJECT
--- FVPHYSICS.NO_IMPACT_DMG
--- FVPHYSICS.NO_NPC_IMPACT_DMG
--- FVPHYSICS.NO_PLAYER_PICKUP
---@param flags number The flags to add. FVPHYSICS enum.
function PhysObj:addGameFlags(flags) end

--- Applies velocity to an object
---@param vel Vector The world velocity vector to apply
function PhysObj:addVelocity(vel) end

--- Gets the material of the physics object
---@return string # The physics material of the physics object
function PhysObj:getMaterial() end

--- Returns a vector in the reference frame of the world from the local frame of the physicsobject
---@param vec Vector The vector to transform
---@return Vector # The transformed vector
function PhysObj:localToWorld(vec) end

--- Gets the position of the physics object
---@return Vector # Vector position of the physics object
function PhysObj:getPos() end

--- Gets the mass of the physics object
---@return number # Mass of the physics object
function PhysObj:getMass() end

--- Sets bone gravity
---@param grav boolean Should the bone respect gravity?
function PhysObj:enableGravity(grav) end

--- Returns Movement damping of the bone.
---@return number # Linear damping
---@return number # Angular damping
function PhysObj:getDamping() end

--- Sets the mass of a physics object
---@param mass number The mass to set it to
function PhysObj:setMass(mass) end

--- Sets the position of the physics object. Will cause interpolation of the entity in clientside, use entity.setPos to avoid this.
---@param pos Vector The position vector to set it to
function PhysObj:setPos(pos) end

--- Sets the inertia of a physics object
---@param inertia Vector The inertia vector to set it to
function PhysObj:setInertia(inertia) end

--- Returns the stress of the entity.
---@return number # External stress. Usually about the mass of the object if on the ground, usually 0 if in freefall.
---@return number # Internal stress. Usually about the mass of every object resting on top of it combined.
function PhysObj:getStress() end

--- Returns the world transform matrix of the physobj
---@return VMatrix # The matrix
function PhysObj:getMatrix() end

--- Gets the angles of the physics object
---@return Angle # Angle angles of the physics object
function PhysObj:getAngles() end

--- Gets the velocity of the physics object
---@return Vector # Vector velocity of the physics object
function PhysObj:getVelocity() end

--- Returns whether the game flags of the physics object are set.
---@param flags number The flags to test. FVPHYSICS enum.
---@return boolean # If the flags are set
function PhysObj:hasGameFlags(flags) end

--- Gets the entity attached to the physics object
---@return Entity # The entity attached to the physics object
function PhysObj:getEntity() end

--- Sets the bone movement state
---@param move boolean Should the bone move?
function PhysObj:enableMotion(move) end

--- Sets the angles of the physics object. Will cause interpolation of the entity in clientside, use entity.setAngles to avoid this.
---@param ang Angle The angle to set it to
function PhysObj:setAngles(ang) end

--- Clears game flags from the physics object. Some flags cannot be modified. Can be:
--- FVPHYSICS.DMG_DISSOLVE
--- FVPHYSICS.DMG_SLICE
--- FVPHYSICS.HEAVY_OBJECT
--- FVPHYSICS.NO_IMPACT_DMG
--- FVPHYSICS.NO_NPC_IMPACT_DMG
--- FVPHYSICS.NO_PLAYER_PICKUP
---@param flags number The flags to clear. FVPHYSICS enum.
function PhysObj:clearGameFlags(flags) end

--- Makes a physobj go to sleep. (like it's frozen but interacting wakes it back up)
function PhysObj:sleep() end

--- Checks if the physics object is valid
---@return boolean # If the physics object is valid
function PhysObj:isValid() end

--- Calculates the linear and angular velocities on the center of mass for an offset impulse.
--- The outputs can be directly passed to PhysObj:addVelocity and PhysObj:addAngleVelocity, respectively.
---@param impulse Vector The impulse acting on the object in world coordinates (kg*source_unit/s)
---@param position Vector The location of the impulse in world coordinates
---@return Vector # The calculated linear velocity from the impulse on the physics object's center of mass in source_unit/s. (World frame)
---@return Vector # The calculated angular velocity from the impulse on the physics object's center of mass in degrees/s. (Local frame)
function PhysObj:calculateVelocityOffset(impulse, position) end

--- Returns table of tables of friction data of a contact against the physobj
--- PhysObj Other - The other physics object we came in contact with
--- number EnergyAbsorbed -
--- number FrictionCoefficient -
--- number NormalForce -
--- Vector Normal - Direction of the friction event
--- Vector ContactPoint - Contact point of the friction event
--- number Material - Surface Property ID of our physics obj
--- number MaterialOther - Surface Property ID of the physics obj we came in contact with
---@return table # Table of tables of data. Each table will contain:
function PhysObj:getFrictionSnapshot() end

--- Gets the angular velocity of the physics object
---@return Vector # Vector angular velocity of the physics object
function PhysObj:getAngleVelocity() end

--- Applies a force to the center of the physics object
---@param force Vector The force vector to apply
function PhysObj:applyForceCenter(force) end

--- Returns a table of MeshVertex structures where each 3 vertices represent a triangle. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
---@return table # Table of MeshVertex structures
function PhysObj:getMesh() end

--- Returns a normal vector in the local reference frame of the physicsobject from the world frame
---@param vec Vector The normal vector to transform
---@return Vector # The transformed vector
function PhysObj:worldToLocalVector(vec) end

--- Returns a vector in the local reference frame of the physicsobject from the world frame
---@param vec Vector The vector to transform
---@return Vector # The transformed vector
function PhysObj:worldToLocal(vec) end

--- Gets the axis aligned bounding box of the physics object
---@return Vector # The mins of the AABB
---@return Vector # The maxs of the AABB
function PhysObj:getAABB() end

--- Returns the surface area of the object in Hammer units squared.
---@return number? # Surface area, or nil if a generated sphere or box
function PhysObj:getSurfaceArea() end

--- Applies a angular velocity to an object
---@param angvel Vector The local angvel vector to apply
function PhysObj:addAngleVelocity(angvel) end

--- Makes a sleeping physobj wakeup
function PhysObj:wake() end

--- Sets the physical material of a physics object
---@param materialName string The physical material to set it to
function PhysObj:setMaterial(materialName) end

--- Check if bone is affected by air resistance
---@return boolean # If bone is affected by drag
function PhysObj:isDragEnabled() end

--- Returns the volume in source units cubed. Or nil if the PhysObj is a generated sphere or box.
---@return number? # The volume or nil if the PhysObj is a generated sphere or box.
function PhysObj:getVolume() end

