---@meta

---@class Angle
---@field p any # The -90 to 90 pitch value of the euler angle. Can also be indexed with [1]
---@field y any # The -180 to 180 yaw value of the euler angle. Can also be indexed with [2]
---@field r any # The -180 to 180 roll value of the euler angle. Can also be indexed with [3]
local Angle = {}

--- Set's the angle's yaw and returns self.
---@param y number The yaw
---@return Angle # Angle after modification
function Angle:setY(y) end

--- Unary Minus metamethod (Negative)
---@return Angle # Negative angle.
function Angle:__unm() end

--- Turns an angle into a string.
---@return string # String representing the angle.
function Angle:__tostring() end

--- Round the angle values.
--- Self-Modifies. Does not return anything
---@param idp number? (Default 0) The integer decimal place to round to.
function Angle:round(idp) end

--- Converts angle to a quaternion
---@return Quaternion # Constructed quaternion
function Angle:getQuaternion() end

--- Copies p,y,r from angle and returns a new angle
---@return Angle # The copy of the angle
function Angle:clone() end

--- Copies p,y,r from angle to another.
--- Self-Modifies. Does not return anything
---@param b Angle The angle to copy from.
function Angle:set(b) end

--- Return the Forward Vector ( direction the angle points ).
---@return Vector # Forward direction.
function Angle:getForward() end

--- Sets p,y,r to 0. This is faster than doing it manually.
--- Self-Modifies. Does not return anything
function Angle:setZero() end

--- Sets a value at a key in the angle
---@param Ang Angle
---@param Key number|string
---@param Value number
function Angle:__newindex(Ang, Key, Value) end

--- Return the Up Vector relative to the angle dir.
---@return Vector # Up direction.
function Angle:getUp() end

--- Set's the angle's roll and returns self.
---@param r number The roll
---@return Angle # Angle after modification
function Angle:setR(r) end

--- Equivalence metamethod
---@param a1 Angle Initial angle.
---@param a2 Angle Angle to check against.
---@return boolean # Whether their fields are equal
function Angle:__eq(a1, a2) end

--- Return the Right Vector relative to the angle dir.
---@return Vector # Right direction.
function Angle:getRight() end

--- Return Rotated angle around the specified axis.
---@param v Vector Vector axis
---@param deg number? Number of degrees or nil if radians.
---@param rad number? Number of radians or nil if degrees.
---@return Angle # The modified angle
function Angle:rotateAroundAxis(v, deg, rad) end

--- Returns if p,y,r are all 0.
---@return boolean # If they are all zero
function Angle:isZero() end

--- Gets a value at a key in the angle
--- Can be indexed with: 1, 2, 3, p, y, r, pitch, yaw, roll. 1,2,3 is most efficient.
---@param Key number|string
---@return number # Value
function Angle:__index(Key) end

--- Set's the angle's pitch and returns self.
---@param p number The pitch
---@return Angle # Angle after modification
function Angle:setP(p) end

--- Addition metamethod
---@param a1 Angle Initial angle.
---@param a2 Angle Angle to add to the first.
---@return Angle # Resultant angle.
function Angle:__add(a1, a2) end

--- Subtraction metamethod
---@param a1 Angle Initial angle.
---@param a2 Angle Angle to subtract.
---@return Angle # Resultant angle.
function Angle:__sub(a1, a2) end

--- Multiplication metamethod
---@param a1 number|Angle Number or Angle multiplicand.
---@param a2 number|Angle Number or Angle multiplier.
---@return Angle # Resultant angle.
function Angle:__mul(a1, a2) end

--- Division metamethod
---@param a1 number|Angle Number or Angle dividend.
---@param a2 number|Angle Number or Angle divisor.
---@return Angle # Resultant angle.
function Angle:__div(a1, a2) end
