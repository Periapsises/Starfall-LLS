---@meta

vr = {}

--- Returns the HMD velocities, position and angular
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getHMDVelocities() end

--- Returns the right hand angular velocity
---@return Vector # Angular velocity
function vr.getRightHandAngularVelocity() end

--- Returns position of the left eye
---@return Vector # Position
function vr.getLeftEyePos() end

--- Returns the left hand pose
---@param target Player # Player to get the left hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getLeftHandPose(target) end

--- Returns position of the eye that is currently being used for rendering.
---@return Vector # Position
function vr.getEyePos() end

--- Returns the playspace position and angles
---@return Vector # Position
---@return Angle # Angles
function vr.getOrigin() end

--- Returns the left hand position
---@param target Player # Player to get the left hand position from
---@return Vector # Position
function vr.getLeftHandPos(target) end

--- Returns the right hand velocity
---@return Vector # Velocity
function vr.getRightHandVelocity() end

--- Returns the left hand pose
---@param target Player # Player to get the right hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getRightHandPose(target) end

--- Returns the playspace position
---@return Vector # Position
function vr.getOriginPos() end

--- Returns the Head Mounted Device position
---@param target Player # Player to get the HMD position from
---@return Vector # HMD Position
function vr.getHMDPos(target) end

--- Returns the Head Mounted Device angles
---@param target Player # Player to get the HMD angles from
---@return Angle # HMD Angles
function vr.getHMDAng(target) end

--- Returns the right hand position
---@param target Player # Player to get the right hand position from
---@return Vector # Position
function vr.getRightHandPos(target) end

--- Returns the playspace angles
---@return Angle # Angles
function vr.getOriginAng() end

--- Returns the left hand angles
---@param target Player # Player to get the right hand angles from
---@return Angle # Angles
function vr.getRightHandAng(target) end

--- Returns the left hand velocity
---@return Vector # Velocity
function vr.getLeftHandVelocity() end

--- Returns the HMD velocity
---@return Vector # HMD Velocity
function vr.getHMDVelocity() end

--- Returns the HMD angular velocity
---@return Vector # Angular velocity
function vr.getHMDAngularVelocity() end

--- Returns the a controller's input state, may return boolean, number or vector.
---@param actionname string # ActionName to check control of, see the VR enums
---@return boolean|Vector|number # Boolean, Vector or Number of input
function vr.getInput(actionname) end

--- Returns the left hand angles
---@param target Player # Player to get the left hand angles from
---@return Angle # Angles
function vr.getLeftHandAng(target) end

--- Checks whether the player is in VR
---@param target Player # Player to check
---@return boolean # True if player is in VR
function vr.isPlayerInVR(target) end

--- Returns position of the right eye
---@return Vector # Position
function vr.getRightEyePos() end

--- Returns the left hand angular velocity
---@return Vector # Angular velocity
function vr.getLeftHandAngularVelocity() end

--- Checks whether the player is using empty hands
---@param target Player # Player to check
---@return boolean # True if player is using empty hands
function vr.usingEmptyHands(target) end

--- Returns the HMD pose
---@param target Player # Player to get the HMD pose from
---@return Vector # HMD Position
---@return Angle # HMD Angles
function vr.getHMDPose(target) end

--- Returns the right hand velocities, position and angular
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getRightHandVelocities() end

--- Returns the left hand velocities, position and angular
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getLeftHandVelocities() end

vr.VR = {}
---@type number
vr.VR["BOOLEAN_PRIMARYFIRE"] = nil
---@type number
vr.VR["VECTOR1_PRIMARYFIRE"] = nil
---@type number
vr.VR["BOOLEAN_SECONDARYFIRE"] = nil
---@type number
vr.VR["BOOLEAN_CHANGEWEAPON"] = nil
---@type number
vr.VR["BOOLEAN_USE"] = nil
---@type number
vr.VR["BOOLEAN_SPAWNMENU"] = nil
---@type number
vr.VR["VECTOR2_WALKDIRECTION"] = nil
---@type number
vr.VR["BOOLEAN_WALK"] = nil
---@type number
vr.VR["BOOLEAN_FLASHLIGHT"] = nil
---@type number
vr.VR["BOOLEAN_TURNLEFT"] = nil
---@type number
vr.VR["BOOLEAN_TURNRIGHT"] = nil
---@type number
vr.VR["VECTOR2_SMOOTHTURN"] = nil
---@type number
vr.VR["BOOLEAN_CHAT"] = nil
---@type number
vr.VR["BOOLEAN_RELOAD"] = nil
---@type number
vr.VR["BOOLEAN_JUMP"] = nil
---@type number
vr.VR["BOOLEAN_LEFT_PICKUP"] = nil
---@type number
vr.VR["BOOLEAN_RIGHT_PICKUP"] = nil
---@type number
vr.VR["BOOLEAN_UNDO"] = nil
---@type number
vr.VR["BOOLEAN_SPRINT"] = nil
---@type number
vr.VR["VECTOR1_FORWARD"] = nil
---@type number
vr.VR["VECTOR1_REVERSE"] = nil
---@type number
vr.VR["BOOLEAN_TURBO"] = nil
---@type number
vr.VR["VECTOR2_STEER"] = nil
---@type number
vr.VR["BOOLEAN_HANDBRAKE"] = nil
---@type number
vr.VR["BOOLEAN_EXIT"] = nil
---@type number
vr.VR["BOOLEAN_TURRET"] = nil

