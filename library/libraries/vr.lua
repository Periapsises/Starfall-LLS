---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- VRMod Library.
--- Addon and module: https://steamcommunity.com/sharedfiles/filedetails/?id=1678408548.
--- Follow install instructions on the addon's page.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L5).
vr = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the eye that is currently being used for rendering.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L292).
---@return Vector # Position
function vr.getEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the Head Mounted Device angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L98).
---@param target Player # Player to get the HMD angles from
---@return Angle # HMD Angles
function vr.getHMDAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L192).
---@return Vector # Angular velocity
function vr.getHMDAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the Head Mounted Device position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L91).
---@param target Player # Player to get the HMD position from
---@return Vector # HMD Position
function vr.getHMDPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the HMD pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L105).
---@param target Player # Player to get the HMD pose from
---@return Vector # HMD Position
---@return Angle # HMD Angles
function vr.getHMDPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L199).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getHMDVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the HMD velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L185).
---@return Vector # HMD Velocity
function vr.getHMDVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the a controller's input state, may return boolean, number or vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L166).
---@param actionname string # ActionName to check control of, see the VR enums
---@return boolean|Vector|number # Boolean, Vector or Number of input
function vr.getInput(actionname) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the left eye.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L299).
---@return Vector # Position
function vr.getLeftEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L123).
---@param target Player # Player to get the left hand angles from
---@return Angle # Angles
function vr.getLeftHandAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L217).
---@return Vector # Angular velocity
function vr.getLeftHandAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L116).
---@param target Player # Player to get the left hand position from
---@return Vector # Position
function vr.getLeftHandPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L130).
---@param target Player # Player to get the left hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getLeftHandPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L224).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getLeftHandVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the left hand velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L210).
---@return Vector # Velocity
function vr.getLeftHandVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace position and angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L281).
---@return Vector # Position
---@return Angle # Angles
function vr.getOrigin() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L274).
---@return Angle # Angles
function vr.getOriginAng() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the playspace position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L267).
---@return Vector # Position
function vr.getOriginPos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns position of the right eye.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L306).
---@return Vector # Position
function vr.getRightEyePos() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L148).
---@param target Player # Player to get the right hand angles from
---@return Angle # Angles
function vr.getRightHandAng(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand angular velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L242).
---@return Vector # Angular velocity
function vr.getRightHandAngularVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the right hand position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L141).
---@param target Player # Player to get the right hand position from
---@return Vector # Position
function vr.getRightHandPos(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the left hand pose.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L155).
---@param target Player # Player to get the right hand pose from
---@return Vector # Position
---@return Angle # Angles
function vr.getRightHandPose(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand velocities, position and angular.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L249).
---@return Vector # Velocity
---@return Vector # Angular velocity
function vr.getRightHandVelocities() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the right hand velocity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L235).
---@return Vector # Velocity
function vr.getRightHandVelocity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the player is in VR.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L75).
---@param target Player # Player to check
---@return boolean # True if player is in VR
function vr.isPlayerInVR(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks whether the player is using empty hands.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vr.lua#L82).
---@param target Player # Player to check
---@return boolean # True if player is using empty hands
function vr.usingEmptyHands(target) end

