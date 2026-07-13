---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- A constraint entity returned by constraint functions.
---@class Constraint
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L27).
local Constraint = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Gets the string representation of the constraint.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L51).
---@return string # String representation of the constraint
function Constraint:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Stops the constraint from being saved on duplication or map save.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L94).
---@param allowDupe boolean? # Set to true to re-enable duplicating (default false)
function Constraint:doNotDuplicate(allowDupe) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Overrides entity isConstraint to return true.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L74).
---@return boolean # Whether this is a constraint
function Constraint:isConstraint() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the constraint is valid or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L87).
---@return boolean # True if valid, false if not
function Constraint:isValid() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the constraint.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/constraint.lua#L66).
function Constraint:remove() end
