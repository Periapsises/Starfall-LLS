---@meta

---@class Vehicle
local Vehicle = {}

--- Returns the driver of the vehicle
---@return Player # Driver of vehicle
function Vehicle:getDriver() end

--- Will lock the vehicle preventing players from entering or exiting the vehicle.
function Vehicle:lock() end

--- Strips weapons of the driver
---@param class string? Optional weapon class to strip. Otherwise all are stripped.
function Vehicle:stripDriver(class) end

--- Ejects the driver of the vehicle
function Vehicle:ejectDriver() end

--- Returns a passenger of a vehicle
---@param n number The index of the passenger to get
---@return Player # The passenger or NULL if empty
function Vehicle:getPassenger(n) end

--- Kills the driver of the vehicle
function Vehicle:killDriver() end

--- Will unlock the vehicle.
function Vehicle:unlock() end

