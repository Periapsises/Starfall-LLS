---@meta

---@class Quaternion
---@field r any # The r value of the quaternion. Can also be indexed with [1]
---@field i any # The i value of the quaternion. Can also be indexed with [2]
---@field j any # The j value of the quaternion. Can also be indexed with [3]
---@field k any # The k value of the quaternion. Can also be indexed with [4]
local Quaternion = {}

--- Involution metamethod
---@param lhs Quaternion|number Left side of equation. Quaternion or number
---@param rhs Quaternion|number Right side of equation. Quaternion or number
---@return Quaternion # Power
function Quaternion:__pow(lhs, rhs) end

--- Unary minus metamethod
---@return Quaternion # Negated quaternion
function Quaternion:__unm() end

--- Gets the quaternion representing rotation contained within an angle between 0 and 180 degrees
---@return Quaternion # Quaternion with contained rotation
function Quaternion:getMod() end

--- Tostring metamethod
---@param q Quaternion Quaternion
---@return string # Quaternion represented as a string
function Quaternion:__tostring(q) end

--- Calculates inverse of the quaternion.
--- Self-Modifies. Does not return anything
function Quaternion:inverse() end

--- Normalizes the quaternion.
--- Self-Modifies. Does not return anything
function Quaternion:normalize() end

--- Creates a copy of the quaternion
---@return Quaternion # Duplicate quaternion
function Quaternion:clone() end

--- Copies components of the second quaternion to the first quaternion.
--- Self-Modifies. Does not return anything
---@param quat Quaternion Quaternion to copy from
function Quaternion:set(quat) end

--- Sets J component of the quaternion and returns self after modification
---@param j number Value of the J component
---@return Quaternion # self
function Quaternion:setJ(j) end

--- Returns new normalized quaternion
---@return Quaternion # Normalized quaternion
function Quaternion:getNormalized() end

--- Calculates forward direction of the quaternion
---@return Vector # Vector pointing forward
function Quaternion:getForward() end

--- Calculates upward direction of the quaternion
---@return Vector # Vector pointing up
function Quaternion:getUp() end

--- Sets R (real) component of the quaternion and returns self after modification
---@param r number Value of the R component
---@return Quaternion # self
function Quaternion:setR(r) end

--- Returns the axis of rotation
---@return Vector # Vector axis
function Quaternion:getRotationAxis() end

--- Returns the angle of rotation in degrees
---@param full boolean? Optional bool, if true returned angle will be between -180 and 180, otherwise between 0 and 360
---@return number # Angle number
function Quaternion:getRotationAngle(full) end

--- Calculates natural logarithm of the quaternion
---@return Quaternion # Logarithmic quaternion
function Quaternion:getLog() end

--- Contains quaternion's represented rotation within an angle between 0 and 180 degrees.
--- Self-Modifies. Does not return anything
function Quaternion:mod() end

--- Calculates right direction of the quaternion
---@return Vector # Vector pointing right
function Quaternion:getRight() end

--- Returns the euler angle of rotation in degrees
---@return Angle # Angle object
function Quaternion:getEulerAngle() end

--- Converts quaternion to a matrix
---@param Optional boolean? bool, normalizes the quaternion
---@return VMatrix # Transformation matrix
function Quaternion:getMatrix(Optional) end

--- Returns the rotation vector - rotation axis where magnitude is the angle of rotation in degrees
---@return Vector # Rotation vector
function Quaternion:getRotationVector() end

--- Returns conjugate of the quaternion
---@return Quaternion # Quaternion's conjugate
function Quaternion:getConjugate() end

--- Calculates inverse of the quaternion
---@return Quaternion # Inverse of the quaternion
function Quaternion:getInverse() end

--- Division metamethod
---@param lhs Quaternion|number Left side of equation. Quaternion or number
---@param rhs Quaternion|number Right side of equation. Quaternion or number
---@return Quaternion # Quotient
function Quaternion:__div(lhs, rhs) end

--- Returns components of the quaternion
---@return number # r
---@return number # i
---@return number # j
---@return number # k
function Quaternion:unpack() end

--- Sets I component of the quaternion and returns self after modification
---@param i number Value of the I component
---@return Quaternion # self
function Quaternion:setI(i) end

--- Multiplication metamethod
---@param lhs Quaternion|number Left side of equation. Quaternion or number
---@param rhs Quaternion|number Right side of equation. Quaternion or number
---@return Quaternion # Product
function Quaternion:__mul(lhs, rhs) end

--- Raises Euler's constant e to the quaternion's power.
--- Self-Modifies. Does not return anything
function Quaternion:exp() end

--- Index metamethod
--- Can be indexed with: 1, 2, 3, 4, r, i, j, k, rr, ri, rj, rk, rrr, rijk, kjir, etc. Numerical lookup is the most efficient
---@param Key number|string 
---@return number # Found value
function Quaternion:__index(Key) end

--- Newindex metamethod
---@param Key number|string 
---@param Value number to set
function Quaternion:__newindex(Key, Value) end

--- Conjugates the quaternion.
--- Self-Modifies. Does not return anything
function Quaternion:conjugate() end

--- Sets K component of the quaternion and returns self after modification
---@param k number Value of the K component
---@return Quaternion # self
function Quaternion:setK(k) end

--- Equivalence metamethod
---@param rhs Quaternion Quaternion to compare to
---@return boolean # True if both sides are equal
function Quaternion:__eq(rhs) end

--- Converts quaternion to a vector by dropping the R (real) component
---@return Vector # Vector from the quaternion
function Quaternion:getVector() end

--- Returns squared norm of the quaternion
---@return number # squared norm/absolute value
function Quaternion:getNormSqr() end

--- Returns norm of the quaternion
---@return number # norm value
function Quaternion:getNorm() end

--- Set components of the quaternion
--- Self-Modifies. Does not return anything
---@param r number R component
---@param i number I component
---@param j number J component
---@param k number K component
function Quaternion:pack(r, i, j, k) end

--- Raises Euler's constant e to the quaternion's power
---@return Quaternion # Constant e raised to the quaternion
function Quaternion:getExp() end

--- Addition metamethod
---@param lhs Quaternion|number Left side of equation. Quaternion or number
---@param rhs Quaternion|number Right side of equation. Quaternion or number
---@return Quaternion # Sum
function Quaternion:__add(lhs, rhs) end

--- Subtraction metamethod
---@param lhs Quaternion|number Left side of equation. Quaternion or number
---@param rhs Quaternion|number Right side of equation. Quaternion or number
---@return Quaternion # Difference
function Quaternion:__sub(lhs, rhs) end

--- Calculates natural logarithm of the quaternion.
--- Self-Modifies. Does not return anything
function Quaternion:log() end

--- Returns dot product of two quaternions
---@param quat Quaternion Second quaternion
---@return number # The dot product
function Quaternion:dot(quat) end

