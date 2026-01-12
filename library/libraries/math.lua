---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua math library https://wiki.garrysmod.com/page/Category:math.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L4).
math = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the absolute value of a number (effectively removes any negative sign).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L27).
---@param x number # The number to get the absolute value of
---@return number # Absolute value
function math.abs(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates an angle in radians, between 0 and pi, which has the given cos value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L41).
---@param cos number # Cosine value in range of -1 to 1
---@return number # Angle in radians or nothing if the argument is out of range
function math.acos(cos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the difference between two angles.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L47).
---@param a number # The first angle
---@param b number # The second angle
---@return number # The difference between the angles between -180 and 180
function math.angleDifference(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gradually approaches the target value by the specified amount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L54).
---@param current number # The value we're currently at
---@param target number # The target value. This function will never overshoot this value
---@param change number # The amount that the current value is allowed to change by to approach the target (positive or negative)
---@return number # New current value, closer to the target than it was previously
function math.approach(current, target, change) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Increments an angle towards another by specified rate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L62).
---@param currentAngle number # The current angle to increase
---@param targetAngle number # The angle to increase towards
---@param rate number # The amount to approach the target angle by
---@return number # Modified angle
function math.approachAngle(currentAngle, targetAngle, rate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given sine value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L70).
---@param sin number # Sine value in the range of -1 to 1
---@return number # Angle in radians or nothing if the argument is out of range
function math.asin(sin) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given tangent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L76).
---@param tan number # Tangent value
---@return number # Angle in radians
function math.atan(tan) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L82).
---@param y number # The Y coordinate
---@param x number # The X coordinate
---@return number # Angle of the line from (0, 0) to (x, y) in radians, in the range -pi to pi
function math.atan2(y, x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates B-Spline point.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L334).
---@param tDiff number # From 0 to tMax, where alongside the spline the point will be
---@param tPoints number # A table of Vectors. The amount cannot be less than 4
---@param tMax number # Dictates maximum value for tDiff
---@return number # Point on Bezier curve, related to tDiff
function math.bSplinePoint(tDiff, tPoints, tMax) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a point along a bezier curve.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L391).
---@param ratio number # Number representing how far along the curve, 0-1.
---@param start Vector # The start position of the curve.
---@param middle Vector # The middle position of the curve.
---@param _end Vector # The end position of the curve.
---@return Vector # Vector representing the point along the curve.
function math.bezierVector(ratio, start, middle, _end) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a point along a cubic bezier curve.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L409).
---@param ratio number # Number representing how far along the curve, 0-1.
---@param start Vector # The start position of the curve.
---@param tangent1 Vector # First tangent
---@param tangent2 Vector # Second tangent
---@param _end Vector # The end position of the curve.
---@return Vector # Vector representing the point along the curve.
function math.bezierVectorCubic(ratio, start, tangent1, tangent2, _end) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a binary string into a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L89).
---@param str string # Binary string to convert
---@return number # Base 10 number
function math.binToInt(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Basic code for Bezier-Spline algorithm.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L95).
---@param i number #
---@param k number #
---@param t number #
---@param tinc number #
---@return number # Number value
function math.calcBSplineN(i, k, t, tinc) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rounds a number up.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L104).
---@param n number # Number to be rounded
---@return number # Rounded number
function math.ceil(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Clamps a number between a minimum and maximum value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L110).
---@param current number # Input number
---@param min number # Minimum value
---@param max number # Maximum value
---@return number # Clamped number
function math.clamp(current, min, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates cosine of the given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L118).
---@param angle number # Angle in radians
---@return number # Cosine of the angle
function math.cos(angle) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates hyperbolic cosine of the given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L124).
---@param angle number # Angle in radians
---@return number # The hyperbolic cosine of the angle
function math.cosh(angle) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts radians to degrees.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L130).
---@param rad number # Angle in radians to be converted
---@return number # Angle in degrees
function math.deg(rad) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the difference between two points in 2D space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L136).
---@param x1 number # X position of first point
---@param y1 number # Y position of first point
---@param x2 number # X position of second point
---@param y2 number # Y position of second point
---@return number # Distance between the two points
function math.distance(x1, y1, x2, y2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets the distance between a line and a point in 3d space.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L379).
---@param lineStart Vector # Start of the line
---@param lineEnd Vector # End of the line
---@param pointPos Vector # Position of the point
---@return number # Distance from line
---@return Vector # Nearest point on line
---@return number # Distance along line from start
function math.distanceToLine(lineStart, lineEnd, pointPos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in by reversing the direction of the ease slightly before returning.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L445).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInBack(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in like a bouncy ball.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L451).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInBounce(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in using a circular function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L457).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInCirc(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in by cubing the fraction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L463).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInCubic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in like a rubber band.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L469).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInElastic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in using an exponential equation with a base of 2 and where the fraction is used in the exponent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L475).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInExpo(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the progress of a value fraction, taking in to account given easing fractions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L145).
---@param progress number # Fraction of the progress to ease
---@param easeIn number # Fraction of how much easing to begin with
---@param easeOut number # Fraction of how much easing to end with
---@return number # Eased value
function math.easeInOut(progress, easeIn, easeOut) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out by reversing the direction of the ease slightly before returning on both ends.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L481).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutBack(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out like a bouncy ball.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L487).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutBounce(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out using a circular function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L493).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutCirc(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out by cubing the fraction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L499).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutCubic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out like a rubber band.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L505).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutElastic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out using an exponential equation with a base of 2 and where the fraction is used in the exponent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L511).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutExpo(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out by squaring the fraction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L517).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuad(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out by raising the fraction to the power of 4.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L523).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuart(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out by raising the fraction to the power of 5.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L529).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutQuint(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in and out using math.sin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L535).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInOutSine(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in by squaring the fraction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L541).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuad(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in by raising the fraction to the power of 4.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L547).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuart(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in by raising the fraction to the power of 5.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L553).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInQuint(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases in using math.sin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L559).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeInSine(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out by reversing the direction of the ease slightly before finishing.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L565).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutBack(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out like a bouncy ball.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L571).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutBounce(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out using a circular function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L577).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutCirc(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out by cubing the fraction.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L583).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutCubic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out like a rubber band.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L589).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutElastic(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out by raising the fraction to the power of 4.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L595).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutQuart(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out by raising the fraction to the power of 5.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L601).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutQuint(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Eases out using math.sin.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L607).
---@param fraction number # Fraction of the progress to ease, from 0 to 1
---@return number # "Eased" Value
function math.easeOutSine(fraction) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the x power of the Euler constant.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L153).
---@param x number # The exponent of the function
---@return number # e to the specific power
function math.exp(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns factorial of given value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L244).
---@param value number # The number value
---@return number # Factorial of value
function math.factorial(value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rounds a number down.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L159).
---@param n number # Number to be rounded
---@return number # Rounded number
function math.floor(n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the modulus of the specified values.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L165).
---@param base number # The base value
---@param mod number # The modulator
---@return number # The calculated modulus
function math.fmod(base, mod) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Used to split the number value into a normalized fraction and an exponent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L172).
---@param x number # The value to get the normalized fraction and the exponent from
---@return number # Multiplier between 0.5 and 1
---@return number # Exponent integer
function math.frexp(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts an integer to a binary (base-2) string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L181).
---@param int number # Number to be converted
---@return string # Binary number string. The length of this will always be a multiple of 3
function math.intToBin(int) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Takes a normalised number and returns the floating point representation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L187).
---@param normalizedFraction number # The value to get the normalized fraction and the exponent from
---@param exponent number # The value to get the normalized fraction and the exponent from
---@return number # Floating point reperesentation
function math.ldexp(normalizedFraction, exponent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs a linear interpolation from the start number to the end number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L344).
---@param t number # The fraction for finding the result. This number is clamped between 0 and 1
---@param from number # The starting number. The result will be equal to this if value t is 0
---@param to number # The ending number. The result will be equal to this if value t is 1
---@return number # The result of the linear interpolation, (1 - t) * from + t * to
function math.lerp(t, from, to) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates point between first and second angle using given fraction and linear interpolation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L357).
---@param ratio number # Ratio of progress through values
---@param from Angle # Angle to begin from
---@param to Angle # Angle to end at
---@return Angle # The interpolated angle
function math.lerpAngle(ratio, from, to) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates point between first and second vector using given fraction and linear interpolation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L368).
---@param ratio number # Ratio of progress through values
---@param from Vector # Vector to begin from
---@param Vector Vector # to end at
---@return Vector # The interpolated vector
function math.lerpVector(ratio, from, Vector) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- With one argument, returns the natural logarithm of x (to base e).
--- With two arguments, return the logarithm of x to the given base, calculated as log(x) / log(base).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L194).
---@param x number # The value to get the base from exponent from
---@param base number? # Optional logarithmic base. Default 'e'
---@return number # Logarithm of x to the given base
function math.log(x, base) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L202).
---@param x number # The value to get the base from exponent from
---@return number # Logarithm of x to the base 10
function math.log10(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Picks the largest value of all provided arguments.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L208).
---@param ... number # Any amount of number values
---@return number # The largest number
function math.max(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the averaged of all numbers provided.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L613).
---@param numbers table # Any amount of number values
---@return number # Number average of all values
function math.mean(numbers) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Picks the smallest value of all provided arguments.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L214).
---@param ... number # Any amount of number values
---@return number # The smallest number
function math.min(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the integral and fractional component of the modulo operation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L220).
---@param base number # The base value
---@return number # The integral component
---@return number # The fractional component
function math.modf(base) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs normalized linear interpolation between two quaternions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L878).
---@param quat1 Quaternion # Quaternion to start with
---@param quat2 Quaternion # Quaternion to end with
---@param t number # Ratio, 0 = quat1; 1 = quat2
---@return Quaternion # Interpolated quaternion
function math.nlerpQuaternion(quat1, quat2, t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Normalizes angle, so it returns value between -180 and 180.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L227).
---@param ang number # The angle in degrees
---@return number # The normalized angle
function math.normalizeAngle(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns x raised to the power y.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L237).
---@param base number # The Base number
---@param exp number # The Exponent
---@return number # Exponent power of base
function math.pow(base, exp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts an angle from degrees to radians.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L250).
---@param deg number # Angle in degrees
---@return number # Angle in radians
function math.rad(deg) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a random float between min and max.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L256).
---@param min number # The minimum value
---@param max number # The maximum value
---@return number # Random float between min and max
function math.rand(min, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.
--- When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.
--- When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L263).
---@param m number? # Optional integer value. If n is not provided - upper limit; if n is provided - lower limit
---@param n number? # Optional integer value. Upper value
---@return number # Random value
function math.random(m, n) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Remaps the value from one range to another.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L272).
---@param value number # The number value
---@param inMin number # The minimum of the initial range
---@param inMax number # The maximum of the initial range
---@param outMin number # The minimum of new range
---@param outMax number # The maximum of new range
---@return number # The number in the new range
function math.remap(value, inMin, inMax, outMin, outMax) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rounds the given value to the nearest whole number or to the given decimal places.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L282).
---@param value number # The number to be rounded
---@param decimals number? # Optional decimal places to round to. Defaults to 0
---@return number # The rounded value
function math.round(value, decimals) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Generates a random float value that should be the same on client and server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L433).
---@param uniqueName string # The seed for the random value
---@param Min number # The minimum value of the random range
---@param Max number # The maximum value of the random range
---@param additionalSeed number? # The additional seed. Default 0
---@return number # The random float value
function math.sharedRandom(uniqueName, Min, Max, additionalSeed) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the sign of a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L33).
---@param x number # The number to get the sign of
---@return number # -1 if negative, 1 if positive, 0 if 0
function math.sign(x) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the sine of given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L289).
---@param ang number # Angle in radians
---@return number # Sine for given angle
function math.sin(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the hyperbolic sine of the given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L295).
---@param ang number # Angle in radians
---@return number # The hyperbolic sine of the given angle
function math.sinh(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs spherical linear interpolation between two quaternions.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/quaternion.lua#L851).
---@param quat1 Quaternion # Quaternion to start with
---@param quat2 Quaternion # Quaternion to end with
---@param t number # Ratio, 0 = quat1; 1 = quat2
---@return Quaternion # Interpolated quaternion
function math.slerpQuaternion(quat1, quat2, t) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates square root of the number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L301).
---@param value number # The value to get the square root of
---@return number # Square root of the provided value
function math.sqrt(value) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the tangent of the given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L307).
---@param ang number # Angle in radians
---@return number # The tangent of the given angle
function math.tan(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates hyperbolic tangent of the given angle.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L313).
---@param ang number # Angle in radians
---@return number # The hyperbolic tangent of the given angle
function math.tanh(ang) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Calculates the fraction of where the current time is relative to the start and end times.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L319).
---@param start number # Start time in seconds
---@param _end number # End time in seconds
---@param current number # Current time in seconds
---@return number # The time fraction
function math.timeFraction(start, _end, current) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Rounds towards zero.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/math.lua#L327).
---@param val number # The number to truncate
---@param digits number? # The amount of digits to keep after the point. Default 0
---@return number # Rounded number
function math.truncate(val, digits) end
