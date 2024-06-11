---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Quaternion type. Recently reworked, for full changelist visit: https://github.com/thegrb93/StarfallEx/pull/953.
---@class Quaternion
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L157).
---@field r any # The r value of the quaternion. Can also be indexed with [1]
---@field i any # The i value of the quaternion. Can also be indexed with [2]
---@field j any # The j value of the quaternion. Can also be indexed with [3]
---@field k any # The k value of the quaternion. Can also be indexed with [4]
local Quaternion = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Addition metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L380).
---@param lhs Quaternion|number # Left side of equation. Quaternion or number
---@param rhs Quaternion|number # Right side of equation. Quaternion or number
---@return Quaternion # Sum
function Quaternion:__add(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Division metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L314).
---@param lhs Quaternion|number # Left side of equation. Quaternion or number
---@param rhs Quaternion|number # Right side of equation. Quaternion or number
---@return Quaternion # Quotient
function Quaternion:__div(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Equivalence metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L434).
---@param rhs Quaternion # Quaternion to compare to
---@return boolean # True if both sides are equal
function Quaternion:__eq(rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Index metamethod.
--- Can be indexed with: 1, 2, 3, 4, r, i, j, k, rr, ri, rj, rk, rrr, rijk, kjir, etc. Numerical lookup is the most efficient.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L248).
---@param Key number|string # 
---@return number # Found value
function Quaternion:__index(Key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplication metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L275).
---@param lhs Quaternion|number # Left side of equation. Quaternion or number
---@param rhs Quaternion|number # Right side of equation. Quaternion or number
---@return Quaternion # Product
function Quaternion:__mul(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Newindex metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L215).
---@param Key number|string # 
---@param Value number # to set
function Quaternion:__newindex(Key, Value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Involution metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L349).
---@param lhs Quaternion|number # Left side of equation. Quaternion or number
---@param rhs Quaternion|number # Right side of equation. Quaternion or number
---@return Quaternion # Power
function Quaternion:__pow(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtraction metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L407).
---@param lhs Quaternion|number # Left side of equation. Quaternion or number
---@param rhs Quaternion|number # Right side of equation. Quaternion or number
---@return Quaternion # Difference
function Quaternion:__sub(lhs, rhs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Tostring metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L441).
---@param q Quaternion # Quaternion
---@return string # Quaternion represented as a string
function Quaternion:__tostring(q) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Unary minus metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L428).
---@return Quaternion # Negated quaternion
function Quaternion:__unm() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a copy of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L469).
---@return Quaternion # Duplicate quaternion
function Quaternion:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Conjugates the quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L604).
function Quaternion:conjugate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns dot product of two quaternions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L652).
---@param quat Quaternion # Second quaternion
---@return number # The dot product
function Quaternion:dot(quat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Raises Euler's constant e to the quaternion's power.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L524).
function Quaternion:exp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns conjugate of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L596).
---@return Quaternion # Quaternion's conjugate
function Quaternion:getConjugate() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the euler angle of rotation in degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L692).
---@return Angle # Angle object
function Quaternion:getEulerAngle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Raises Euler's constant e to the quaternion's power.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L516).
---@return Quaternion # Constant e raised to the quaternion
function Quaternion:getExp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates forward direction of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L570).
---@return Vector # Vector pointing forward
function Quaternion:getForward() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates inverse of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L610).
---@return Quaternion # Inverse of the quaternion
function Quaternion:getInverse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates natural logarithm of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L530).
---@return Quaternion # Logarithmic quaternion
function Quaternion:getLog() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts quaternion to a matrix.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L668).
---@param Optional boolean? # bool, normalizes the quaternion
---@return VMatrix # Transformation matrix
function Quaternion:getMatrix(Optional) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the quaternion representing rotation contained within an angle between 0 and 180 degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L624).
---@return Quaternion # Quaternion with contained rotation
function Quaternion:getMod() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns norm of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L584).
---@return number # norm value
function Quaternion:getNorm() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns squared norm of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L590).
---@return number # squared norm/absolute value
function Quaternion:getNormSqr() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns new normalized quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L638).
---@return Quaternion # Normalized quaternion
function Quaternion:getNormalized() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates right direction of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L558).
---@return Vector # Vector pointing right
function Quaternion:getRight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the angle of rotation in degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L723).
---@param full boolean? # Optional bool, if true returned angle will be between -180 and 180, otherwise between 0 and 360
---@return number # Angle number
function Quaternion:getRotationAngle(full) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the axis of rotation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L746).
---@return Vector # Vector axis
function Quaternion:getRotationAxis() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the rotation vector - rotation axis where magnitude is the angle of rotation in degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L759).
---@return Vector # Rotation vector
function Quaternion:getRotationVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates upward direction of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L546).
---@return Vector # Vector pointing up
function Quaternion:getUp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts quaternion to a vector by dropping the R (real) component.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L661).
---@return Vector # Vector from the quaternion
function Quaternion:getVector() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates inverse of the quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L618).
function Quaternion:inverse() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates natural logarithm of the quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L538).
function Quaternion:log() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Contains quaternion's represented rotation within an angle between 0 and 180 degrees.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L632).
function Quaternion:mod() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Normalizes the quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L646).
function Quaternion:normalize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set components of the quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L450).
---@param r number # R component
---@param i number # I component
---@param j number # J component
---@param k number # K component
function Quaternion:pack(r, i, j, k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies components of the second quaternion to the first quaternion.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L475).
---@param quat Quaternion # Quaternion to copy from
function Quaternion:set(quat) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets I component of the quaternion and returns self after modification.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L490).
---@param i number # Value of the I component
---@return Quaternion # self
function Quaternion:setI(i) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets J component of the quaternion and returns self after modification.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L498).
---@param j number # Value of the J component
---@return Quaternion # self
function Quaternion:setJ(j) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets K component of the quaternion and returns self after modification.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L506).
---@param k number # Value of the K component
---@return Quaternion # self
function Quaternion:setK(k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets R (real) component of the quaternion and returns self after modification.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L482).
---@param r number # Value of the R component
---@return Quaternion # self
function Quaternion:setR(r) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns components of the quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L460).
---@return number # r

---@return number # i

---@return number # j

---@return number # k
function Quaternion:unpack() end

