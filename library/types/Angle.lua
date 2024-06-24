---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Angle Type.
---@class Angle
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L5).
---@field p any # The -90 to 90 pitch value of the euler angle. Can also be indexed with [1]
---@field y any # The -180 to 180 yaw value of the euler angle. Can also be indexed with [2]
---@field r any # The -180 to 180 roll value of the euler angle. Can also be indexed with [3]
local Angle = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Addition metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L135).
---@param a1 Angle # Initial angle.
---@param a2 Angle # Angle to add to the first.
---@return Angle # Resultant angle.
function Angle:__add(a1, a2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Division metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L103).
---@param a1 number|Angle # Number or Angle dividend.
---@param a2 number|Angle # Number or Angle divisor.
---@return Angle # Resultant angle.
function Angle:__div(a1, a2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Equivalence metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L127).
---@param a1 Angle # Initial angle.
---@param a2 Angle # Angle to check against.
---@return boolean # Whether their fields are equal
function Angle:__eq(a1, a2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a value at a key in the angle.
--- Can be indexed with: 1, 2, 3, p, y, r, pitch, yaw, roll. 1,2,3 is most efficient.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L64).
---@param Key number|string # 
---@return number # Value
function Angle:__index(Key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplication metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L85).
---@param a1 number|Angle # Number or Angle multiplicand.
---@param a2 number|Angle # Number or Angle multiplier.
---@return Angle # Resultant angle.
function Angle:__mul(a1, a2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a value at a key in the angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L52).
---@param Ang Angle # 
---@param Key number|string # 
---@param Value number # 
function Angle:__newindex(Ang, Key, Value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtraction metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L143).
---@param a1 Angle # Initial angle.
---@param a2 Angle # Angle to subtract.
---@return Angle # Resultant angle.
function Angle:__sub(a1, a2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Turns an angle into a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L79).
---@return string # String representing the angle.
function Angle:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Unary Minus metamethod (Negative).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L121).
---@return Angle # Negative angle.
function Angle:__unm() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies p,y,r from angle and returns a new angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L206).
---@return Angle # The copy of the angle
function Angle:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Forward Vector ( direction the angle points ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L157).
---@return Vector # Forward direction.
function Angle:getForward() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts angle to a quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L835).
---@return Quaternion # Constructed quaternion
function Angle:getQuaternion() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Right Vector relative to the angle dir.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L163).
---@return Vector # Right direction.
function Angle:getRight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return the Up Vector relative to the angle dir.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L169).
---@return Vector # Up direction.
function Angle:getUp() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns if p,y,r are all 0.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L151).
---@return boolean # If they are all zero
function Angle:isZero() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return Rotated angle around the specified axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L175).
---@param v Vector # Vector axis
---@param deg number? # Number of degrees or nil if radians.
---@param rad number? # Number of radians or nil if degrees.
---@return Angle # The modified angle
function Angle:rotateAroundAxis(v, deg, rad) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Round the angle values.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L197).
---@param idp number? # (Default 0) The integer decimal place to round to.
function Angle:round(idp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies p,y,r from angle to another.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L212).
---@param b Angle # The angle to copy from.
function Angle:set(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the angle's pitch and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L229).
---@param p number # The pitch
---@return Angle # Angle after modification
function Angle:setP(p) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the angle's roll and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L245).
---@param r number # The roll
---@return Angle # Angle after modification
function Angle:setR(r) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the angle's yaw and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L237).
---@param y number # The yaw
---@return Angle # Angle after modification
function Angle:setY(y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets p,y,r to 0. This is faster than doing it manually.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/angles.lua#L221).
function Angle:setZero() end

