---@meta

---@class Constraint
local Constraint = {}

--- Gets the string representation of the constraint
---@return string # String representation of the constraint
function Constraint:__tostring() end

--- Removes the constraint
function Constraint:remove() end

--- Returns whether the constraint is valid or not
---@return boolean # True if valid, false if not
function Constraint:isValid() end

