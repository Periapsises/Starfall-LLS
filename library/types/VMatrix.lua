---@meta

---@class VMatrix
local VMatrix = {}

--- Returns an inverted matrix. Efficiently for translations and rotations
---@return VMatrix # Inverted matrix
function VMatrix:getInverseTR() end

--- Sets a specific field in the matrix
--- Self-Modifies. Does not return anything
---@param row number A number from 1 to 4
---@param column number A number from 1 to 4
---@param value number Value to set
function VMatrix:setField(row, column, value) end

--- tostring metamethod
---@return string # String representing the matrix.
function VMatrix:__tostring() end

--- Sets the rotation or the matrix to the rotation by an axis and angle
--- Self-Modifies. Does not return anything
---@param axis Vector The normalized axis of rotation
---@param angle number The angle of rotation in radians
function VMatrix:setAxisAngle(axis, angle) end

--- Sets the angles
--- Self-Modifies. Does not return anything
---@param ang Angle New angles
function VMatrix:setAngles(ang) end

--- Copies The matrix and returns a new matrix
---@return VMatrix # The copy of the matrix
function VMatrix:clone() end

--- Copies the values from the second matrix to the first matrix.
--- Self-Modifies. Does not return anything
---@param src VMatrix Second matrix
function VMatrix:set(src) end

--- Sets the right direction of the matrix. Negated second column
--- Self-Modifies. Does not return anything
---@param right Vector The right vector
function VMatrix:setRight(right) end

--- Gets the rotation axis and angle of rotation of the rotation matrix
---@return Vector # The axis of rotation
---@return number # The angle of rotation
function VMatrix:getAxisAngle() end

--- Returns up vector of matrix. Third matrix column
---@return Vector # Translation
function VMatrix:getUp() end

--- Inverts the matrix. Inverting the matrix will fail if its determinant is 0 or close to 0
--- Self-Modifies.
---@return boolean # Whether the matrix was inverted or not
function VMatrix:invert() end

--- Returns whether the matrix is equal to Identity matrix or not
---@return boolean # True/False
function VMatrix:isIdentity() end

--- Returns the input matrix rotated by an axis
---@param axis Vector Axis to rotate around
---@param ang number Angle to rotate by in radians
---@return VMatrix # The rotated matrix
function VMatrix:getRotatedAroundAxis(axis, ang) end

--- Translate the matrix
---@param vec Vector Vector to translate by
function VMatrix:translate(vec) end

--- Sets the forward direction of the matrix. First column
--- Self-Modifies. Does not return anything
---@param forward Vector The forward vector
function VMatrix:setForward(forward) end

--- Returns an inverted matrix. Inverting the matrix will fail if its determinant is 0 or close to 0
---@return VMatrix # Inverted matrix
function VMatrix:getInverse() end

--- Sets the translation
--- Self-Modifies. Does not return anything
---@param vec Vector New translation
function VMatrix:setTranslation(vec) end

--- Sets the scale
--- Self-Modifies. Does not return anything
---@param vec Vector New scale
function VMatrix:setScale(vec) end

--- Scales the absolute translation
--- Self-Modifies. Does not return anything
---@param num number Amount to scale by
function VMatrix:scaleTranslation(num) end

--- Allows you to set all 16 fields in row-major order
--- Self-Modifies. Does not return anything
---@param fields ...number The 16 fields
function VMatrix:setUnpacked(fields) end

--- Returns a specific field in the matrix
---@param row number A number from 1 to 4
---@param column number A number from 1 to 4
---@return number # Value of the specified field
function VMatrix:getField(row, column) end

--- Inverts the matrix efficiently for translations and rotations
--- Self-Modifies. Does not return anything
function VMatrix:invertTR() end

--- Returns scale
---@return Vector # Scale
function VMatrix:getScale() end

--- Converts the matrix to a 4x4 table
---@return table # The 4x4 table
function VMatrix:toTable() end

--- Returns right vector of matrix. Negated second matrix column
---@return Vector # Translation
function VMatrix:getRight() end

--- Multiplies two matrices (Left must be a VMatrix)
---@param lhs VMatrix Matrix multiplicand
---@param rhs VMatrix|Vector Matrix or Vector multiplier
---@return VMatrix # Result matrix
function VMatrix:__mul(lhs, rhs) end

--- Returns whether the matrix is a rotation matrix or not. Checks if the forward, right and up vectors are orthogonal and normalized.
---@return boolean # True/False
function VMatrix:isRotationMatrix() end

--- Initializes the matrix as Identity matrix
--- Self-Modifies. Does not return anything
function VMatrix:setIdentity() end

--- Sets the up direction of the matrix. Third column
--- Self-Modifies. Does not return anything
---@param up Vector The up vector
function VMatrix:setUp(up) end

--- Returns forward vector of matrix. First matrix column
---@return Vector # Translation
function VMatrix:getForward() end

--- Scale the matrix
--- Self-Modifies. Does not return anything
---@param vec Vector Vector to scale by
function VMatrix:scale(vec) end

--- Returns all 16 fields of the matrix in row-major order
---@return ...number # The 16 fields
function VMatrix:unpack() end

--- Returns angles
---@return Angle # Angles
function VMatrix:getAngles() end

--- Adds two matrices (why would you do this?)
---@param lhs VMatrix Initial Matrix
---@param rhs VMatrix Matrix to add to the first
---@return VMatrix # Added matrix
function VMatrix:__add(lhs, rhs) end

--- Subtracts two matrices (why would you do this?)
---@param lhs VMatrix Initial Matrix
---@param rhs VMatrix Matrix to subtract from the first
---@return VMatrix # Subtracted matrix
function VMatrix:__sub(lhs, rhs) end

--- Returns translation
---@return Vector # Translation
function VMatrix:getTranslation() end

--- Rotate the matrix
--- Self-Modifies. Does not return anything
---@param ang Angle Angle to rotate by
function VMatrix:rotate(ang) end
