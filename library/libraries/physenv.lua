---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Physenv functions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physenv.lua#L3).
physenv = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the air density.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physenv.lua#L15).
---@return number # Air Density
function physenv.getAirDensity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the gravity vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physenv.lua#L21).
---@return Vector # Gravity Vector ( eg Vector(0,0,-600) )
function physenv.getGravity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the performance settings.
--- See http://wiki.facepunch.com/gmod/Structures/PhysEnvPerformanceSettings for table structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/physenv.lua#L27).
---@return table # Performance Settings Table.
function physenv.getPerformanceSettings() end
