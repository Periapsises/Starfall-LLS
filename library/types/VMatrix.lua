---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- VMatrix type.
---@class VMatrix
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L6).
local VMatrix = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Adds two matrices (why would you do this?).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L351).
---@param lhs VMatrix # Initial Matrix
---@param rhs VMatrix # Matrix to add to the first
---@return VMatrix # Added matrix
function VMatrix:__add(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplies two matrices (Left must be a VMatrix).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L367).
---@param lhs VMatrix # Matrix multiplicand
---@param rhs VMatrix|Vector # Matrix or Vector multiplier
---@return VMatrix # Result matrix
function VMatrix:__mul(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtracts two matrices (why would you do this?).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L359).
---@param lhs VMatrix # Initial Matrix
---@param rhs VMatrix # Matrix to subtract from the first
---@return VMatrix # Subtracted matrix
function VMatrix:__sub(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- tostring metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L57).
---@return string # String representing the matrix.
function VMatrix:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies The matrix and returns a new matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L202).
---@return VMatrix # The copy of the matrix
function VMatrix:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L63).
---@return Angle # Angles
function VMatrix:getAngles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the rotation axis and angle of rotation of the rotation matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L296).
---@return Vector # The axis of rotation
---@return number # The angle of rotation
function VMatrix:getAxisAngle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a specific field in the matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L81).
---@param row number # A number from 1 to 4
---@param column number # A number from 1 to 4
---@return number # Value of the specified field
function VMatrix:getField(row, column) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns forward vector of matrix. First matrix column.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L118).
---@return Vector # Translation
function VMatrix:getForward() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an inverted matrix. Inverting the matrix will fail if its determinant is 0 or close to 0.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L106).
---@return VMatrix # Inverted matrix
function VMatrix:getInverse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an inverted matrix. Efficiently for translations and rotations.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L112).
---@return VMatrix # Inverted matrix
function VMatrix:getInverseTR() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns right vector of matrix. Negated second matrix column.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L124).
---@return Vector # Translation
function VMatrix:getRight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the input matrix rotated by an axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L96).
---@param axis Vector # Axis to rotate around
---@param ang number # Angle to rotate by in radians
---@return VMatrix # The rotated matrix
function VMatrix:getRotatedAroundAxis(axis, ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns scale.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L69).
---@return Vector # Scale
function VMatrix:getScale() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns translation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L75).
---@return Vector # Translation
function VMatrix:getTranslation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns up vector of matrix. Third matrix column.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L130).
---@return Vector # Translation
function VMatrix:getUp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Inverts the matrix. Inverting the matrix will fail if its determinant is 0 or close to 0.
--- Self-Modifies.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L246).
---@return boolean # Whether the matrix was inverted or not
function VMatrix:invert() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Inverts the matrix efficiently for translations and rotations.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L253).
function VMatrix:invertTR() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the matrix is equal to Identity matrix or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L234).
---@return boolean # True/False
function VMatrix:isIdentity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether the matrix is a rotation matrix or not. Checks if the forward, right and up vectors are orthogonal and normalized.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L240).
---@return boolean # True/False
function VMatrix:isRotationMatrix() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rotate the matrix.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L89).
---@param ang Angle # Angle to rotate by
function VMatrix:rotate(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Scale the matrix.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L143).
---@param vec Vector # Vector to scale by
function VMatrix:scale(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Scales the absolute translation.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L150).
---@param num number # Amount to scale by
function VMatrix:scaleTranslation(num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies the values from the second matrix to the first matrix.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L221).
---@param src VMatrix # Second matrix
function VMatrix:set(src) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the angles.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L158).
---@param ang Angle # New angles
function VMatrix:setAngles(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the rotation or the matrix to the rotation by an axis and angle.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L271).
---@param axis Vector # The normalized axis of rotation
---@param ang number # The angle of rotation in radians
function VMatrix:setAxisAngle(axis, ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a specific field in the matrix.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L193).
---@param row number # A number from 1 to 4
---@param column number # A number from 1 to 4
---@param value number # Value to set
function VMatrix:setField(row, column, value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the forward direction of the matrix. First column.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L172).
---@param forward Vector # The forward vector
function VMatrix:setForward(forward) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Initializes the matrix as Identity matrix.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L228).
function VMatrix:setIdentity() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the right direction of the matrix. Negated second column.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L179).
---@param right Vector # The right vector
function VMatrix:setRight(right) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the scale.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L136).
---@param vec Vector # New scale
function VMatrix:setScale(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the translation.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L165).
---@param vec Vector # New translation
function VMatrix:setTranslation(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Allows you to set all 16 fields in row-major order.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L214).
---@param ... number # The 16 fields
function VMatrix:setUnpacked(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the up direction of the matrix. Third column.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L186).
---@param up Vector # The up vector
function VMatrix:setUp(up) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts the matrix to a 4x4 table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L265).
---@return table # The 4x4 table
function VMatrix:toTable() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Translate the matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L259).
---@param vec Vector # Vector to translate by
function VMatrix:translate(vec) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns all 16 fields of the matrix in row-major order.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vmatrix.lua#L208).
---@return ...number # The 16 fields
function VMatrix:unpack() end
