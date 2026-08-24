---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- VRMod Library.
--- Addon and module: https://steamcommunity.com/sharedfiles/filedetails/?id=1678408548.
--- Follow install instructions on the addon's page.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L5).
vr = {}

---@enum VR
--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- VRmod library enums
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/enum.lua#L1056).
vr.VR = {
	BOOLEAN_PRIMARYFIRE = 1,
	VECTOR1_PRIMARYFIRE = 2,
	BOOLEAN_SECONDARYFIRE = 3,
	BOOLEAN_CHANGEWEAPON = 4,
	BOOLEAN_USE = 5,
	BOOLEAN_SPAWNMENU = 6,
	VECTOR2_WALKDIRECTION = 7,
	BOOLEAN_WALK = 8,
	BOOLEAN_FLASHLIGHT = 9,
	BOOLEAN_TURNLEFT = 10,
	BOOLEAN_TURNRIGHT = 11,
	VECTOR2_SMOOTHTURN = 12,
	BOOLEAN_CHAT = 13,
	BOOLEAN_RELOAD = 14,
	BOOLEAN_JUMP = 15,
	BOOLEAN_LEFT_PICKUP = 16,
	BOOLEAN_RIGHT_PICKUP = 17,
	BOOLEAN_UNDO = 18,
	BOOLEAN_SPRINT = 19,
	VECTOR1_FORWARD = 20,
	VECTOR1_REVERSE = 21,
	BOOLEAN_TURBO = 22,
	VECTOR2_STEER = 23,
	BOOLEAN_HANDBRAKE = 24,
	BOOLEAN_EXIT = 25,
	BOOLEAN_TURRET = 26,
}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the eye that is currently being used for rendering.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L288).
---@return Vector # Position
function vr.getEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the Head Mounted Device angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L94).
---@param target Player # Player to get the HMD angles from
---@return Angle # HMD Angles
function vr.getHMDAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L188).
---@return Vector # Angular velocity
function vr.getHMDAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the Head Mounted Device position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L87).
---@param target Player # Player to get the HMD position from
---@return Vector # HMD Position
function vr.getHMDPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the HMD pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L101).
---@param target Player # Player to get the HMD pose from
---@return Vector # HMD Position
---@return Angle # HMD Angles
function vr.getHMDPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L195).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getHMDVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L181).
---@return Vector # HMD Velocity
function vr.getHMDVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the a controller's input state, may return boolean, number or vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L162).
---@param actionname string # ActionName to check control of, see the VR enums
---@return boolean|Vector|number # Boolean, Vector or Number of input
function vr.getInput(actionname) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the left eye.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L295).
---@return Vector # Position
function vr.getLeftEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L119).
---@param target Player # Player to get the left hand angles from
---@return Angle # Angles
function vr.getLeftHandAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L213).
---@return Vector # Angular velocity
function vr.getLeftHandAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L112).
---@param target Player # Player to get the left hand position from
---@return Vector # Position
function vr.getLeftHandPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L126).
---@param target Player # Player to get the left hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getLeftHandPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L220).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getLeftHandVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L206).
---@return Vector # Velocity
function vr.getLeftHandVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace position and angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L277).
---@return Vector # Position
---@return Angle # Angles
function vr.getOrigin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L270).
---@return Angle # Angles
function vr.getOriginAng() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L263).
---@return Vector # Position
function vr.getOriginPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the right eye.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L302).
---@return Vector # Position
function vr.getRightEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the right hand angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L144).
---@param target Player # Player to get the right hand angles from
---@return Angle # Angles
function vr.getRightHandAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L238).
---@return Vector # Angular velocity
function vr.getRightHandAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the right hand position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L137).
---@param target Player # Player to get the right hand position from
---@return Vector # Position
function vr.getRightHandPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the right hand pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L151).
---@param target Player # Player to get the right hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getRightHandPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L245).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getRightHandVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L231).
---@return Vector # Velocity
function vr.getRightHandVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the player is in VR.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L71).
---@param target Player # Player to check
---@return boolean # True if player is in VR
function vr.isPlayerInVR(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the player is using empty hands.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L78).
---@param target Player # Player to check
---@return boolean # True if player is using empty hands
function vr.usingEmptyHands(target) end
