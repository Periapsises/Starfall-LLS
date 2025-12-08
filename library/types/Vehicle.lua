---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Vehicle type.
---@class Vehicle : Entity
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L60).
local Vehicle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Tries to find an exit point for leaving the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L228).
---@param yaw number #
---@param distance number #
---@return Vector # The exit position, or nil if unable to exit in that direction
function Vehicle:checkExitPoint(yaw, distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Ejects the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L159).
function Vehicle:ejectDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the camera distance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L136).
---@return number # distance
function Vehicle:getCameraDistance() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L93).
---@return Player # Driver of vehicle
function Vehicle:getDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the vehicles speed in Half-Life Hammer units.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L248).
---@return number # Speed
function Vehicle:getHLSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a passenger of a vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L99).
---@param n number # The index of the passenger to get
---@return Player # The passenger or NULL if empty
function Vehicle:getPassenger(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the vehicles speed in MPH.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L241).
---@return number # Speed
function Vehicle:getSpeed() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets if third person mode is enabled or disabled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L119).
---@return boolean # true if third person mode is enabled, false if not
function Vehicle:getThirdPersonMode() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the view position and angle of the passenger.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L142).
---@param role number? # 0 is the driver.
---@return Vector # The view position
---@return Angle # The view angles
---@return number # The passengers FOV
function Vehicle:getVehicleViewPosition(role) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Kills the driver of the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L168).
function Vehicle:killDriver() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Will lock the vehicle preventing players from entering or exiting the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L196).
function Vehicle:lock() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the third person camera distance.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L125).
---@param distance number #
function Vehicle:setCameraDistance(distance) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Forces the vehicles camera into third person or first person.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L108).
---@param thirdPerson boolean #
function Vehicle:setThirdPersonMode(thirdPerson) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Strips weapons of the driver.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L179).
---@param class string? # Optional weapon class to strip. Otherwise all are stripped.
function Vehicle:stripDriver(class) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Will unlock the vehicle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L207).
function Vehicle:unlock() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Allows passengers of a vehicle to aim and use things by clicking on them.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vehicles.lua#L216).
---@param enabled boolean # Whether to enable the ability to use by clicking
---@param key number? # Optional IN_KEY alternate control for using (default IN_KEY.ATTACK)
function Vehicle:useEnable(enabled, key) end
