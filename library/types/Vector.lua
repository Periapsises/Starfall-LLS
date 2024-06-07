---@meta

---@class Vector
---@field x any # The x value of the vector. Can also be indexed with [1]
---@field y any # The y value of the vector. Can also be indexed with [2]
---@field z any # The z value of the vector. Can also be indexed with [3]
local Vector = {}

--- Unary Minus metamethod (Negative)
---@return Vector # Negative vector.
function Vector:__unm() end

--- Rotate the vector by Angle b.
--- Self-Modifies. Does not return anything
---@param b Angle Angle to rotate by.
function Vector:rotate(b) end

--- Constructs a quaternion from the rotation vector. Vector direction is axis of rotation, it's magnitude is angle in degrees
---@return Quaternion # Rotated quaternion
function Vector:getQuaternionFromRotation() end

--- Add v to this vector
--- Self-Modifies. Does not return anything
---@param v Vector Vector to add
function Vector:add(v) end

--- Returns the pythagorean distance between the vector and the other vector.
---@param v Vector Second Vector
---@return number # Vector distance from v
function Vector:getDistance(v) end

--- Returns whenever the given vector is in a box created by the 2 other vectors.
---@param v1 Vector Vector used to define AABox
---@param v2 Vector Second Vector to define AABox
---@return boolean # True/False.
function Vector:withinAABox(v1, v2) end

--- Normalise the vector, same direction, length 1.
--- Self-Modifies. Does not return anything
function Vector:normalize() end

--- Copies x,y,z from a vector and returns a new vector
---@return Vector # The copy of the vector
function Vector:clone() end

--- Copies the values from the second vector to the first vector.
--- Self-Modifies. Does not return anything
---@param v Vector Second Vector
function Vector:set(v) end

--- Returns the vector's euler angle with respect to the other vector as if it were the new vertical axis.
---@param v Vector Second Vector
---@return Angle # Angle
function Vector:getAngleEx(v) end

--- Returns a new vector with the same direction by length of 1.
---@return Vector # Normalized vector
function Vector:getNormalized() end

--- Set's all vector fields to 0.
--- Self-Modifies. Does not return anything
function Vector:setZero() end

--- Returns quaternion for rotation about axis represented by the vector by an angle
---@param ang number Number rotation angle
---@return Quaternion # Rotated quaternion
function Vector:getQuaternionFromAxis(ang) end

--- Return rotated vector by an axis
---@param axis Vector Axis the rotate around
---@param degrees number? Angle to rotate by in degrees or nil if radians.
---@param radians number? Angle to rotate by in radians or nil if degrees.
---@return Vector # Rotated vector
function Vector:rotateAroundAxis(axis, degrees, radians) end

--- Set's the vector's x coordinate and returns the vector after modifying.
---@param x number The x coordinate
---@return Vector # Modified vector after setting X.
function Vector:setX(x) end

--- Is this vector and v equal within tolerance t.
---@param v Vector Second Vector
---@param t number Tolerance number.
---@return boolean # Whether the vector is equal to v within the tolerance.
function Vector:isEqualTol(v, t) end

--- Subtract v from this Vector.
--- Self-Modifies. Does not return anything
---@param v Vector Vector to subtract.
function Vector:sub(v) end

--- Set's the vector's y coordinate and returns the vector after modifying.
---@param y number The y coordinate
---@return Vector # Modified vector after setting Y.
function Vector:setY(y) end

--- Returns an arbitrary orthogonal basis from the direction of the vector. Input must be a normalized vector
---@return number # Basis 1
---@return number # Basis 2
function Vector:getBasis() end

--- Get the vector's length squared ( Saves computation by skipping the square root ).
---@return number # length squared.
function Vector:getLengthSqr() end

--- Returns the length squared of the vector in two dimensions, without the Z axis. ( Saves computation by skipping the square root )
---@return number # Length squared.
function Vector:getLength2DSqr() end

--- Translates the vectors position into 2D user screen coordinates.
---@return table # A table {x=screenx,y=screeny,visible=visible}
function Vector:toScreen() end

--- Subtraction metamethod
---@param v1 Vector Initial Vector
---@param v2 Vector Vector to subtract
---@return Vector # Resultant vector after subtraction operation.
function Vector:__sub(v1, v2) end

--- Converts vector to quaternion
---@param up Vector Upward direction. If specified, the original vector will act like a forward pointing one
---@return Quaternion # Quaternion from the given vector
function Vector:getQuaternion(up) end

--- Divide self by a Vector.
--- Self-Modifies. Does not return anything
---@param v Vector Vector to divide by
function Vector:vdiv(v) end

--- Converts vector to color
---@return Color # New color object
function Vector:getColor() end

--- Returns Rotated vector by Angle b
---@param b Angle Angle to rotate by.
---@return Vector # Rotated Vector
function Vector:getRotated(b) end

--- Returns whether all fields are zero
---@return boolean # Whether all fields are zero
function Vector:isZero() end

--- Multiply self with a Vector.
--- Self-Modifies. Does not return anything
---@param v Vector Vector to multiply with
function Vector:vmul(v) end

--- Get the vector's angle.
---@return Angle # Angle representing the vector
function Vector:getAngle() end

--- Turns a vector into a string.
---@return string # String representation of the vector.
function Vector:__tostring() end

--- Returns the length of the vector in two dimensions, without the Z axis.
---@return number # Vector length
function Vector:getLength2D() end

--- Calculates the cross product of the 2 vectors, creates a unique perpendicular vector to both input vectors.
---@param v Vector Second Vector
---@return Vector # Vector from cross product
function Vector:cross(v) end

--- Gets a value at a key in the vector
--- Can be indexed with: 1, 2, 3, x, y, z, xx, xy, xz, xxx, xyz, zyx, etc.. 1,2,3 is most efficient.
---@param Key number|string to get the value at
---@return number # The value at the index
function Vector:__index(Key) end

--- Sets a value at a key in the vector
---@param Vec Vector
---@param Key number|string
---@param Value number
function Vector:__newindex(Vec, Key, Value) end

--- Get the vector's Length.
---@return number # Length of the vector.
function Vector:getLength() end

--- Scalar Multiplication of the vector.
--- Self-Modifies. Does not return anything
---@param n number Scalar to multiply with.
function Vector:mul(n) end

--- Returns whether the vector is in world
---@return boolean # True/False.
function Vector:isInWorld() end

--- Division metamethod
---@param v1 number|Vector Number or Vector dividend.
---@param v2 number|Vector Number or Vector divisor.
---@return Vector # Scaled vector.
function Vector:__div(v1, v2) end

--- "Scalar Division" of the vector.
--- Self-Modifies. Does not return anything
---@param n number Scalar to divide by.
function Vector:div(n) end

--- Round the vector values.
--- Self-Modifies. Does not return anything
---@param idp number (Default 0) The integer decimal place to round to.
function Vector:round(idp) end

--- Equivalence metamethod
---@param v1 Vector Initial vector.
---@param v2 Vector Vector to check against.
---@return boolean # Whether both sides are equal.
function Vector:__eq(v1, v2) end

--- Returns the squared distance of 2 vectors, this is faster Vector:getDistance as calculating the square root is an expensive process.
---@param v Vector Second Vector
---@return number # Vector distance from v
function Vector:getDistanceSqr(v) end

--- Addition metamethod
---@param v1 Vector Initial vector.
---@param v2 Vector Vector to add to the first.
---@return Vector # Resultant vector after addition operation.
function Vector:__add(v1, v2) end

--- Set's the vector's z coordinate and returns the vector after modifying.
---@param z number The z coordinate
---@return Vector # Modified vector after setting Z.
function Vector:setZ(z) end

--- Multiplication metamethod
---@param a number|Vector Number or Vector multiplicand.
---@param b number|Vector Number or Vector multiplier.
---@return Vector # Multiplied vector.
function Vector:__mul(a, b) end

--- Dot product is the cosine of the angle between both vectors multiplied by their lengths. A.B = ||A||||B||cosA.
---@param v Vector Second Vector
---@return number # Dot product result between the two vectors
function Vector:dot(v) end
