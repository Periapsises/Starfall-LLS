---@meta

math = {}

--- Eases out using math.sin.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutSine(fraction) end

--- Eases in and out like a rubber band.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutElastic(fraction) end

--- Eases in and out like a bouncy ball.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutBounce(fraction) end

--- Eases in by raising the fraction to the power of 5.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuint(fraction) end

--- Increments an angle towards another by specified rate.
---@param currentAngle number # The current angle to increase
---@param targetAngle number # The angle to increase towards
---@param rate number # The amount to approach the target angle by
---@return number # Modified angle
function math.approachAngle(currentAngle, targetAngle, rate) end

--- Eases in using a circular function.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInCirc(fraction) end

--- Remaps the value from one range to another.
---@param value number # The number value
---@param inMin number # The minimum of the initial range
---@param inMax number # The maximum of the initial range
---@param outMin number # The minimum of new range
---@param outMax number # The maximum of new range
---@return number # The number in the new range
function math.remap(value, inMin, inMax, outMin, outMax) end

--- Eases in by raising the fraction to the power of 4.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuart(fraction) end

--- Returns a point along a cubic bezier curve.
---@param ratio number # Number representing how far along the curve, 0-1.
---@param start Vector # The start position of the curve.
---@param tangent1 Vector # First tangent
---@param tangent2 Vector # Second tangent
---@param _end Vector # The end position of the curve.
---@return Vector # Vector representing the point along the curve.
function math.bezierVectorCubic(ratio, start, tangent1, tangent2, _end) end

--- Gradually approaches the target value by the specified amount.
---@param current number # The value we're currently at
---@param target number # The target value. This function will never overshoot this value
---@param change number # The amount that the current value is allowed to change by to approach the target (positive or negative)
---@return number # New current value, closer to the target than it was previously
function math.approach(current, target, change) end

--- Eases in and out using math.sin.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutSine(fraction) end

--- Generates a random float value that should be the same on client and server
---@param uniqueName string # The seed for the random value
---@param Min number # The minimum value of the random range
---@param Max number # The maximum value of the random range
---@param additionalSeed number? # The additional seed. Default 0
---@return number # The random float value
function math.sharedRandom(uniqueName, Min, Max, additionalSeed) end

--- Calculates the fraction of where the current time is relative to the start and end times.
---@param start number # Start time in seconds
---@param _end number # End time in seconds
---@param current number # Current time in seconds
---@return number # The time fraction
function math.timeFraction(start, _end, current) end

--- Calculates point between first and second angle using given fraction and linear interpolation.
---@param ratio number # Ratio of progress through values
---@param from Angle # Angle to begin from
---@param to Angle # Angle to end at
---@return Angle # The interpolated angle
function math.lerpAngle(ratio, from, to) end

--- Calculates the absolute value of a number (effectively removes any negative sign).
---@param x number # The number to get the absolute value of
---@return number # Absolute value
function math.abs(x) end

--- Rounds a number down.
---@param n number # Number to be rounded
---@return number # Rounded number
function math.floor(n) end

--- Rounds a number up.
---@param n number # Number to be rounded
---@return number # Rounded number
function math.ceil(n) end

--- Calculates square root of the number.
---@param value number # The value to get the square root of
---@return number # Square root of the provided value
function math.sqrt(value) end

--- Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10).
---@param x number # The value to get the base from exponent from
---@return number # Logarithm of x to the base 10
function math.log10(x) end

--- Returns the x power of the Euler constant.
---@param x number # The exponent of the function
---@return number # e to the specific power
function math.exp(x) end

--- Eases out like a bouncy ball.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutBounce(fraction) end

--- Calculates cosine of the given angle.
---@param angle number # Angle in radians
---@return number # Cosine of the angle
function math.cos(angle) end

--- Calculates the tangent of the given angle.
---@param ang number # Angle in radians
---@return number # The tangent of the given angle
function math.tan(ang) end

--- Eases out by reversing the direction of the ease slightly before finishing.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutBack(fraction) end

--- Calculates an angle in radians, between 0 and pi, which has the given cos value.
---@param cos number # Cosine value in range of -1 to 1
---@return number # Angle in radians or nothing if the argument is out of range
function math.acos(cos) end

--- Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given tangent.
---@param tan number # Tangent value
---@return number # Angle in radians
function math.atan(tan) end

--- Eases in by squaring the fraction.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuad(fraction) end

--- Calculates hyperbolic cosine of the given angle.
---@param angle number # Angle in radians
---@return number # The hyperbolic cosine of the angle
function math.cosh(angle) end

--- Calculates hyperbolic tangent of the given angle.
---@param ang number # Angle in radians
---@return number # The hyperbolic tangent of the given angle
function math.tanh(ang) end

--- Eases in using math.sin.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInSine(fraction) end

--- Returns the integral and fractional component of the modulo operation.
---@param base number # The base value
---@return number # The integral component
---@return number # The fractional component
function math.modf(base) end

--- With one argument, returns the natural logarithm of x (to base e).
--- With two arguments, return the logarithm of x to the given base, calculated as log(x) / log(base).
---@param x number # The value to get the base from exponent from
---@param base number? # Optional logarithmic base. Default 'e'
---@return number # Logarithm of x to the given base
function math.log(x, base) end

--- Calculates the difference between two angles.
---@param a number # The first angle
---@param b number # The second angle
---@return number # The difference between the angles between -180 and 180
function math.angleDifference(a, b) end

--- Converts an angle from degrees to radians.
---@param deg number # Angle in degrees
---@return number # Angle in radians
function math.rad(deg) end

--- Functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output.
---@param y number # The Y coordinate
---@param x number # The X coordinate
---@return number # Angle of the line from (0, 0) to (x, y) in radians, in the range -pi to pi
function math.atan2(y, x) end

--- Eases in and out using a circular function.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutCirc(fraction) end

--- Calculates the modulus of the specified values.
---@param base number # The base value
---@param mod number # The modulator
---@return number # The calculated modulus
function math.fmod(base, mod) end

--- Takes a normalised number and returns the floating point representation.
---@param normalizedFraction number # The value to get the normalized fraction and the exponent from
---@param exponent number # The value to get the normalized fraction and the exponent from
---@return number # Floating point reperesentation
function math.ldexp(normalizedFraction, exponent) end

--- Picks the smallest value of all provided arguments.
---@param numbers ...number # Any amount of number values
---@return number # The smallest number
function math.min(numbers) end

--- Picks the largest value of all provided arguments.
---@param numbers ...number # Any amount of number values
---@return number # The largest number
function math.max(numbers) end

--- When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.
--- When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.
--- When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive.
---@param m number? # Optional integer value. If n is not provided - upper limit; if n is provided - lower limit
---@param n number? # Optional integer value. Upper value
---@return number # Random value
function math.random(m, n) end

--- Performs a linear interpolation from the start number to the end number.
---@param t number # The fraction for finding the result. This number is clamped between 0 and 1
---@param from number # The starting number. The result will be equal to this if value t is 0
---@param to number # The ending number. The result will be equal to this if value t is 1
---@return number # The result of the linear interpolation, (1 - t) * from + t * to
function math.lerp(t, from, to) end

--- Eases in using an exponential equation with a base of 2 and where the fraction is used in the exponent.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInExpo(fraction) end

--- Eases in by cubing the fraction.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInCubic(fraction) end

--- Eases in and out by raising the fraction to the power of 4.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuart(fraction) end

--- Converts an integer to a binary (base-2) string.
---@param int number # Number to be converted
---@return string # Binary number string. The length of this will always be a multiple of 3
function math.intToBin(int) end

--- Eases out by raising the fraction to the power of 4.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutQuart(fraction) end

--- Eases out using a circular function.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutCirc(fraction) end

--- Returns a random float between min and max.
---@param min number # The minimum value
---@param max number # The maximum value
---@return number # Random float between min and max
function math.rand(min, max) end

--- Performs normalized linear interpolation between two quaternions
---@param quat1 Quaternion # Quaternion to start with
---@param quat2 Quaternion # Quaternion to end with
---@param t number # Ratio, 0 = quat1; 1 = quat2
---@return Quaternion # Interpolated quaternion
function math.nlerpQuaternion(quat1, quat2, t) end

--- Eases in and out using an exponential equation with a base of 2 and where the fraction is used in the exponent.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutExpo(fraction) end

--- Eases in like a rubber band.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInElastic(fraction) end

--- Eases in and out by cubing the fraction.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutCubic(fraction) end

--- Returns a point along a bezier curve.
---@param ratio number # Number representing how far along the curve, 0-1.
---@param start Vector # The start position of the curve.
---@param middle Vector # The middle position of the curve.
---@param _end Vector # The end position of the curve.
---@return Vector # Vector representing the point along the curve.
function math.bezierVector(ratio, start, middle, _end) end

--- Calculates the progress of a value fraction, taking in to account given easing fractions.
---@param progress number # Fraction of the progress to ease
---@param easeIn number # Fraction of how much easing to begin with
---@param easeOut number # Fraction of how much easing to end with
---@return number # Eased value
function math.easeInOut(progress, easeIn, easeOut) end

--- Eases out by cubing the fraction.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutCubic(fraction) end

--- Eases in and out by squaring the fraction.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuad(fraction) end

--- Rounds the given value to the nearest whole number or to the given decimal places.
---@param value number # The number to be rounded
---@param decimals number? # Optional decimal places to round to. Defaults to 0
function math.round(value, decimals) end

--- Clamps a number between a minimum and maximum value.
---@param current number # Input number
---@param min number # Minimum value
---@param max number # Maximum value
---@return number # Clamped number
function math.clamp(current, min, max) end

--- Eases in by reversing the direction of the ease slightly before returning.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInBack(fraction) end

--- Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given sine value.
---@param sin number # Sine value in the range of -1 to 1
---@return number # Angle in radians or nothing if the argument is out of range
function math.asin(sin) end

--- Eases in and out by reversing the direction of the ease slightly before returning on both ends.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutBack(fraction) end

--- Calculates point between first and second vector using given fraction and linear interpolation.
---@param ratio number # Ratio of progress through values
---@param from Vector # Vector to begin from
---@param Vector Vector # to end at
---@return Vector # The interpolated vector
function math.lerpVector(ratio, from, Vector) end

--- Eases out like a rubber band.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutElastic(fraction) end

--- Returns x raised to the power y
---@param base number # The Base number
---@param exp number # The Exponent
---@return number # Exponent power of base
function math.pow(base, exp) end

--- Gets the distance between a line and a point in 3d space
---@param lineStart Vector # Start of the line
---@param lineEnd Vector # End of the line
---@param pointPos Vector # Position of the point
---@return number # Distance from line
---@return Vector # Nearest point on line
---@return number # Distance along line from start
function math.distanceToLine(lineStart, lineEnd, pointPos) end

--- Eases out by raising the fraction to the power of 5.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutQuint(fraction) end

--- Used to split the number value into a normalized fraction and an exponent
---@param x number # The value to get the normalized fraction and the exponent from
---@return number # Multiplier between 0.5 and 1
---@return number # Exponent integer
function math.frexp(x) end

--- Calculates the sign of a number
---@param x number # The number to get the sign of
---@return number # -1 if negative, 1 if positive, 0 if 0
function math.sign(x) end

--- Calculates the difference between two points in 2D space
---@param x1 number # X position of first point
---@param y1 number # Y position of first point
---@param x2 number # X position of second point
---@param y2 number # Y position of second point
---@return number # Distance between the two points
function math.distance(x1, y1, x2, y2) end

--- Calculates the hyperbolic sine of the given angle.
---@param ang number # Angle in radians
---@return number # The hyperbolic sine of the given angle
function math.sinh(ang) end

--- Normalizes angle, so it returns value between -180 and 180.
---@param ang number # The angle in degrees
---@return number # The normalized angle
function math.normalizeAngle(ang) end

--- Rounds towards zero
---@param val number # The number to truncate
---@param digits number? # The amount of digits to keep after the point. Default 0
---@return number # Rounded number
function math.truncate(val, digits) end

--- Calculates the sine of given angle.
---@param ang number # Angle in radians
---@return number # Sine for given angle
function math.sin(ang) end

--- Eases in like a bouncy ball.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInBounce(fraction) end

--- Converts radians to degrees
---@param rad number # Angle in radians to be converted
---@return number # Angle in degrees
function math.deg(rad) end

--- Returns factorial of given value
---@param value number # The number value
---@return number # Factorial of value
function math.factorial(value) end

--- Calculates B-Spline point.
---@param tDiff number # From 0 to tMax, where alongside the spline the point will be
---@param tPoints number # A table of Vectors. The amount cannot be less than 4
---@param tMax number # Dictates maximum value for tDiff
---@return number # Point on Bezier curve, related to tDiff
function math.bSplinePoint(tDiff, tPoints, tMax) end

--- Eases in and out by raising the fraction to the power of 5.
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuint(fraction) end

--- Performs spherical linear interpolation between two quaternions
---@param quat1 Quaternion # Quaternion to start with
---@param quat2 Quaternion # Quaternion to end with
---@param t number # Ratio, 0 = quat1; 1 = quat2
---@return Quaternion # Interpolated quaternion
function math.slerpQuaternion(quat1, quat2, t) end

--- Converts a binary string into a number.
---@param str string # Binary string to convert
---@return number # Base 10 number
function math.binToInt(str) end

--- Basic code for Bezier-Spline algorithm.
---@param i number # 
---@param k number # 
---@param t number # 
---@param tinc number # 
---@return number # Number value
function math.calcBSplineN(i, k, t, tinc) end

