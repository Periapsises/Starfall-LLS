---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Angle Type.
---@class Angle
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L7).
---@field p any # The -90 to 90 pitch value of the euler angle. Can also be indexed with [1]
---@field y any # The -180 to 180 yaw value of the euler angle. Can also be indexed with [2]
---@field r any # The -180 to 180 roll value of the euler angle. Can also be indexed with [3]
local Angle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Addition metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L152).
---@param a Angle # Initial angle.
---@param b Angle # Angle to add to the first.
---@return Angle # Resultant angle.
function Angle:__add(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Division metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L120).
---@param a number|Angle # Number or Angle dividend.
---@param b number|Angle # Number or Angle divisor.
---@return Angle # Resultant angle.
function Angle:__div(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Equivalence metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L144).
---@param a Angle # Initial angle.
---@param b Angle # Angle to check against.
---@return boolean # Whether their fields are equal
function Angle:__eq(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a value at a key in the angle.
--- Can be indexed with: 1, 2, 3, p, y, r, pitch, yaw, roll. 1,2,3 is most efficient.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L81).
---@param k number|string #
---@return number|function|nil # Value
function Angle:__index(k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplication metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L102).
---@param a number|Angle # Number or Angle multiplicand.
---@param b number|Angle # Number or Angle multiplier.
---@return Angle # Resultant angle.
function Angle:__mul(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a value at a key in the angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L69).
---@param t Angle #
---@param k number|string #
---@param v number #
function Angle:__newindex(t, k, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtraction metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L160).
---@param a Angle # Initial angle.
---@param b Angle # Angle to subtract.
---@return Angle # Resultant angle.
function Angle:__sub(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Turns an angle into a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L96).
---@return string # String representing the angle.
function Angle:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Unary Minus metamethod (Negative).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L138).
---@return Angle # Negative angle.
function Angle:__unm() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies p,y,r from angle and returns a new angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L220).
---@return Angle # The copy of the angle
function Angle:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Forward Vector ( direction the angle points ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L174).
---@return Vector # Forward direction.
function Angle:getForward() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts angle to a quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L838).
---@return Quaternion # Constructed quaternion
function Angle:getQuaternion() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Right Vector relative to the angle dir.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L180).
---@return Vector # Right direction.
function Angle:getRight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Up Vector relative to the angle dir.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L186).
---@return Vector # Up direction.
function Angle:getUp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if p,y,r are all 0.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L168).
---@return boolean # If they are all zero
function Angle:isZero() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return Rotated angle around the specified axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L192).
---@param v Vector # Vector axis
---@param deg number? # Number of degrees or nil if radians.
---@param rad number? # Number of radians or nil if degrees.
---@return Angle # The modified angle
function Angle:rotateAroundAxis(v, deg, rad) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Round the angle values.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L211).
---@param idp number? # (Default 0) The integer decimal place to round to.
function Angle:round(idp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies p,y,r from angle to another.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L226).
---@param b Angle # The angle to copy from.
function Angle:set(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the angle's pitch and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L243).
---@param p number # The pitch
---@return Angle # Angle after modification
function Angle:setP(p) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the angle's roll and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L259).
---@param r number # The roll
---@return Angle # Angle after modification
function Angle:setR(r) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the angle's yaw and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L251).
---@param y number # The yaw
---@return Angle # Angle after modification
function Angle:setY(y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets p,y,r to 0. This is faster than doing it manually.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L235).
function Angle:setZero() end
