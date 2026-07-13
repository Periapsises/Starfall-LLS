---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Vehicle type.
---@class Vehicle : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L60).
local Vehicle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Tries to find an exit point for leaving the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L222).
---@param yaw number # Yaw/roll from vehicle angle to check for exit
---@param dist number # Distance from origin to drop player
---@return Vector # The exit position, or nil if unable to exit in that direction
function Vehicle:checkExitPoint(yaw, dist) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ejects the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L150).
function Vehicle:ejectDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the camera distance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L127).
---@return number # distance
function Vehicle:getCameraDistance() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L84).
---@return Player # Driver of vehicle
function Vehicle:getDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the vehicles speed in Half-Life Hammer units.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L242).
---@return number # Speed
function Vehicle:getHLSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a passenger of a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L90).
---@param n number # The index of the passenger to get
---@return Player # The passenger or NULL if empty
function Vehicle:getPassenger(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the vehicles speed in MPH.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L235).
---@return number # Speed
function Vehicle:getSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets if third person mode is enabled or disabled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L110).
---@return boolean # true if third person mode is enabled, false if not
function Vehicle:getThirdPersonMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the view position and angle of the passenger.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L133).
---@param role number? # 0 is the driver.
---@return Vector # The view position
---@return Angle # The view angles
---@return number # The passengers FOV
function Vehicle:getVehicleViewPosition(role) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Kills the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L162).
function Vehicle:killDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Will lock the vehicle preventing players from entering or exiting the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L190).
function Vehicle:lock() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the third person camera distance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L116).
---@param distance number #
function Vehicle:setCameraDistance(distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Forces the vehicles camera into third person or first person.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L99).
---@param thirdPerson boolean #
function Vehicle:setThirdPersonMode(thirdPerson) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips weapons of the driver.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L173).
---@param class string? # Optional weapon class to strip. Otherwise all are stripped.
function Vehicle:stripDriver(class) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Will unlock the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L201).
function Vehicle:unlock() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Allows passengers of a vehicle to aim and use things by clicking on them.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L210).
---@param enabled boolean # Whether to enable the ability to use by clicking
---@param key number? # Optional IN_KEY alternate control for using (default IN_KEY.ATTACK)
function Vehicle:useEnable(enabled, key) end
