---@meta

physenv = {}

--- Gets the gravity vector
---@return Vector # Gravity Vector ( eg Vector(0,0,-600) )
function physenv.getGravity() end

--- Gets the air density.
---@return number # Air Density
function physenv.getAirDensity() end

--- Gets the performance settings.
--- See http://wiki.facepunch.com/gmod/Structures/PhysEnvPerformanceSettings for table structure.
---@return table # Performance Settings Table.
function physenv.getPerformanceSettings() end
