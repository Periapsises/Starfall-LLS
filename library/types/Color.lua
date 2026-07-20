---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Color type.
---@class Color
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L38).
---@field r any # The 0-255 red value of the color. Can also be indexed with [1]
---@field g any # The 0-255 green value of the color. Can also be indexed with [2]
---@field b any # The 0-255 blue value of the color. Can also be indexed with [3]
---@field a any # The 0-255 alpha value of the color. Can also be indexed with [4]
local Color = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Addition metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L150).
---@param c1 Color # Initial color.
---@param c2 Color # Color to add to the first.
---@return Color # Resultant color.
function Color:__add(c1, c2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Concatenation metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L136).
---@return string # Adds two colors into one string-representation
function Color:__concat() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Division metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L184).
---@param a number|Color # Number or Color dividend
---@param b number|Color # Number or Color divisor
---@return Color # Scaled color.
function Color:__div(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Equivalence metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L142).
---@param c1 Color # Initial color.
---@param c2 Color # Color to check against.
---@return boolean # Whether their fields are equal
function Color:__eq(c1, c2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets a value at a key in the color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L118).
---@param k number|string # Key. Number or string
---@return number # Value at the index
function Color:__index(k) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Multiplication metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L166).
---@param a number|Color # Number or Color multiplicant
---@param b number|Color # Number or Color multiplier
---@return Color # Multiplied color.
function Color:__mul(a, b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a value at a key in the color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L107).
---@param k number|string # Key. Number or string
---@param v number # Value.
function Color:__newindex(k, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Subtraction metamethod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L158).
---@param c1 Color # Initial color.
---@param c2 Color # Color to subtract.
---@return Color # Resultant color.
function Color:__sub(c1, c2) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Turns the color into a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L130).
---@return string # String representation of the color
function Color:__tostring() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies r,g,b,a from color and returns a new color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L240).
---@return Color # The copy of the color
function Color:clone() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts the color from HSV to RGB.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L210).
---@return Color # A triplet of numbers representing HSV.
function Color:hsvToRGB() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts the color from RGB to HSV.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L202).
---@return Color # A triplet of numbers representing HSV.
function Color:rgbToHSV() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Round the color values.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L230).
---@param idp number? # (Default 0) The integer decimal place to round to.
function Color:round(idp) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies r,g,b,a from color to another.
--- Self-Modifies. Does not return anything.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L246).
---@param b Color # The color to copy from.
function Color:set(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the color's alpha and returns it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L280).
---@param a number # The alpha
---@return Color # Color after modification
function Color:setA(a) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the color's blue and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L272).
---@param b number # The blue
---@return Color # Color after modification
function Color:setB(b) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the color's green and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L264).
---@param g number # The green
---@return Color # Color after modification
function Color:setG(g) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the color's red channel and returns self.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L256).
---@param r number # The red
---@return Color # Color after modification
function Color:setR(r) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a hexadecimal string representation of the color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/color.lua#L218).
---@param alpha boolean? # Optional boolean whether to include the alpha channel, False by default
---@return string # String hexadecimal color
function Color:toHex(alpha) end
