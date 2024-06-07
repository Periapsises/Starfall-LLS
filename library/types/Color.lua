---@meta

---@class Color
---@field r any # The 0-255 red value of the color. Can also be indexed with [1]
---@field g any # The 0-255 green value of the color. Can also be indexed with [2]
---@field b any # The 0-255 blue value of the color. Can also be indexed with [3]
---@field a any # The 0-255 alpha value of the color. Can also be indexed with [4]
local Color = {}

--- Converts the color from RGB to HSV.
---@return Color # A triplet of numbers representing HSV.
function Color:rgbToHSV() end

--- Returns a hexadecimal string representation of the color
---@param alpha boolean? Optional boolean whether to include the alpha channel, False by default
---@return string # String hexadecimal color
function Color:toHex(alpha) end

--- Turns the color into a string
---@return string # String representation of the color
function Color:__tostring() end

--- Round the color values.
--- Self-Modifies. Does not return anything
---@param idp number? (Default 0) The integer decimal place to round to.
function Color:round(idp) end

--- Set's the color's alpha and returns it.
---@param a number The alpha
---@return Color # Color after modification
function Color:setA(a) end

--- Set's the color's green and returns self.
---@param g number The green
---@return Color # Color after modification
function Color:setG(g) end

--- Copies r,g,b,a from color and returns a new color
---@return Color # The copy of the color
function Color:clone() end

--- Set's the color's blue and returns self.
---@param b number The blue
---@return Color # Color after modification
function Color:setB(b) end

--- Gets a value at a key in the color
---@param k number|string Key. Number or string
---@return number # Value at the index
function Color:__index(k) end

--- Sets a value at a key in the color
---@param k number|string Key. Number or string
---@param v number Value.
function Color:__newindex(k, v) end

--- Converts the color from HSV to RGB.
---@return Color # A triplet of numbers representing HSV.
function Color:hsvToRGB() end

--- Set's the color's red channel and returns self.
---@param r number The red
---@return Color # Color after modification
function Color:setR(r) end

--- Equivalence metamethod
---@param c1 Color Initial color.
---@param c2 Color Color to check against.
---@return boolean # Whether their fields are equal
function Color:__eq(c1, c2) end

--- Concatenation metamethod
---@return string # Adds two colors into one string-representation
function Color:__concat() end

--- Copies r,g,b,a from color to another.
--- Self-Modifies. Does not return anything
---@param b Color The color to copy from.
function Color:set(b) end

--- Addition metamethod
---@param c1 Color Initial color.
---@param c2 Color Color to add to the first.
---@return Color # Resultant color.
function Color:__add(c1, c2) end

--- Subtraction metamethod
---@param c1 Color Initial color.
---@param c2 Color Color to subtract.
---@return Color # Resultant color.
function Color:__sub(c1, c2) end

--- Multiplication metamethod
---@param a number|Color Number or Color multiplicant
---@param b number|Color Number or Color multiplier
---@return Color # Multiplied color.
function Color:__mul(a, b) end

--- Division metamethod
---@param b number|Color Number or Color dividend
---@param b number|Color Number or Color divisor
---@return Color # Scaled color.
function Color:__div(b, b) end
