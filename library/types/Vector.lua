---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Vector type.
---@class Vector
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L6).
---@field x any # The x value of the vector. Can also be indexed with [1]
---@field y any # The y value of the vector. Can also be indexed with [2]
---@field z any # The z value of the vector. Can also be indexed with [3]
local Vector = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Addition metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L162).
---@param v1 Vector # Initial vector.
---@param v2 Vector # Vector to add to the first.
---@return Vector # Resultant vector after addition operation.
function Vector:__add(v1, v2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Division metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L144).
---@param v1 number|Vector # Number or Vector dividend.
---@param v2 number|Vector # Number or Vector divisor.
---@return Vector # Scaled vector.
function Vector:__div(v1, v2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Equivalence metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L184).
---@param v1 Vector # Initial vector.
---@param v2 Vector # Vector to check against.
---@return boolean # Whether both sides are equal.
function Vector:__eq(v1, v2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a value at a key in the vector.
--- Can be indexed with: 1, 2, 3, x, y, z, xx, xy, xz, xxx, xyz, zyx, etc.. 1,2,3 is most efficient.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L89).
---@param Key number|string # to get the value at
---@return number # The value at the index
function Vector:__index(Key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplication metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L122).
---@param a number|Vector # Number or Vector multiplicand.
---@param b number|Vector # Number or Vector multiplier.
---@return Vector # Multiplied vector.
function Vector:__mul(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a value at a key in the vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L63).
---@param Vec Vector #
---@param Key number|string #
---@param Value number #
function Vector:__newindex(Vec, Key, Value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtraction metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L170).
---@param v1 Vector # Initial Vector
---@param v2 Vector # Vector to subtract
---@return Vector # Resultant vector after subtraction operation.
function Vector:__sub(v1, v2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Turns a vector into a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L116).
---@return string # String representation of the vector.
function Vector:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Unary Minus metamethod (Negative).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L178).
---@return Vector # Negative vector.
function Vector:__unm() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Add v to this vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L291).
---@param v Vector # Vector to add
function Vector:add(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies x,y,z from a vector and returns a new vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L464).
---@return Vector # The copy of the vector
function Vector:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the cross product of the 2 vectors, creates a unique perpendicular vector to both input vectors.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L215).
---@param v Vector # Second Vector
---@return Vector # Vector from cross product
function Vector:cross(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- "Scalar Division" of the vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L320).
---@param n number # Scalar to divide by.
function Vector:div(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Dot product is the cosine of the angle between both vectors multiplied by their lengths. A.B = ||A||||B||cosA.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L236).
---@param v Vector # Second Vector
---@return number # Dot product result between the two vectors
function Vector:dot(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the vector's angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L195).
---@return Angle # Angle representing the vector
function Vector:getAngle() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the vector's euler angle with respect to the other vector as if it were the new vertical axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L208).
---@param v Vector # Second Vector
---@return Angle # Angle
function Vector:getAngleEx(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an arbitrary orthogonal basis from the direction of the vector. Input must be a normalized vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L419).
---@return number # Basis 1
---@return number # Basis 2
function Vector:getBasis() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts vector to color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L479).
---@return Color # New color object
function Vector:getColor() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the pythagorean distance between the vector and the other vector.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L222).
---@param v Vector # Second Vector
---@return number # Vector distance from v
function Vector:getDistance(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the squared distance of 2 vectors, this is faster Vector:getDistance as calculating the square root is an expensive process.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L229).
---@param v Vector # Second Vector
---@return number # Vector distance from v
function Vector:getDistanceSqr(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the vector's Length.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L267).
---@return number # Length of the vector.
function Vector:getLength() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the length of the vector in two dimensions, without the Z axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L279).
---@return number # Vector length
function Vector:getLength2D() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the length squared of the vector in two dimensions, without the Z axis. ( Saves computation by skipping the square root ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L285).
---@return number # Length squared.
function Vector:getLength2DSqr() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the vector's length squared ( Saves computation by skipping the square root ).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L273).
---@return number # length squared.
function Vector:getLengthSqr() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a new vector with the same direction by length of 1.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L243).
---@return Vector # Normalized vector
function Vector:getNormalized() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts vector to quaternion.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L781).
---@param up Vector # Upward direction. If specified, the original vector will act like a forward pointing one
---@return Quaternion # Quaternion from the given vector
function Vector:getQuaternion(up) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns quaternion for rotation about axis represented by the vector by an angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L808).
---@param ang number # Number rotation angle
---@return Quaternion # Rotated quaternion
function Vector:getQuaternionFromAxis(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Constructs a quaternion from the rotation vector. Vector direction is axis of rotation, it's magnitude is angle in degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L819).
---@return Quaternion # Rotated quaternion
function Vector:getQuaternionFromRotation() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns Rotated vector by Angle b.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L409).
---@param b Angle # Angle to rotate by.
---@return Vector # Rotated Vector
function Vector:getRotated(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Is this vector and v equal within tolerance t.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L251).
---@param v Vector # Second Vector
---@param t number # Tolerance number.
---@return boolean # Whether the vector is equal to v within the tolerance.
function Vector:isEqualTol(v, t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether the vector is in world.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L498).
---@return boolean # True/False.
function Vector:isInWorld() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether all fields are zero.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L261).
---@return boolean # Whether all fields are zero
function Vector:isZero() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Scalar Multiplication of the vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L309).
---@param n number # Scalar to multiply with.
function Vector:mul(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Normalise the vector, same direction, length 1.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L381).
function Vector:normalize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rotate the vector by Angle b.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L394).
---@param b Angle # Angle to rotate by.
function Vector:rotate(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Return rotated vector by an axis.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L432).
---@param axis Vector # Axis the rotate around
---@param degrees number? # Angle to rotate by in degrees or nil if radians.
---@param radians number? # Angle to rotate by in radians or nil if degrees.
---@return Vector # Rotated vector
function Vector:rotateAroundAxis(axis, degrees, radians) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Round the vector values.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L455).
---@param idp number # (Default 0) The integer decimal place to round to.
function Vector:round(idp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies the values from the second vector to the first vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L470).
---@param v Vector # Second Vector
function Vector:set(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the vector's x coordinate and returns the vector after modifying.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L357).
---@param x number # The x coordinate
---@return Vector # Modified vector after setting X.
function Vector:setX(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the vector's y coordinate and returns the vector after modifying.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L365).
---@param y number # The y coordinate
---@return Vector # Modified vector after setting Y.
function Vector:setY(y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's the vector's z coordinate and returns the vector after modifying.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L373).
---@param z number # The z coordinate
---@return Vector # Modified vector after setting Z.
function Vector:setZ(z) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Set's all vector fields to 0.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L349).
function Vector:setZero() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtract v from this Vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L300).
---@param v Vector # Vector to subtract.
function Vector:sub(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Translates the vectors position into 2D user screen coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L505).
---@return table # A table {x=screenx,y=screeny,visible=visible}
function Vector:toScreen() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Divide self by a Vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L340).
---@param v Vector # Vector to divide by
function Vector:vdiv(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiply self with a Vector.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L331).
---@param v Vector # Vector to multiply with
function Vector:vmul(v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whenever the given vector is in a box created by the 2 other vectors.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/vectors.lua#L485).
---@param v1 Vector # Vector used to define AABox
---@param v2 Vector # Second Vector to define AABox
---@return boolean # True/False.
function Vector:withinAABox(v1, v2) end
