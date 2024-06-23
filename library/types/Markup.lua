---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- The Markup type is used to easily format and draw text. Use render.parseMarkup(str, maxwidth) to create one.
---@class Markup
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L422).
local Markup = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draw the markup object.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1877).
---@param x number # number The x offset
---@param y number # number The x offset
---@param xAlign number? # number The x TEXT_ALIGN. Default TEXT_ALIGN.LEFT
---@param yAlign number? # number The y TEXT_ALIGN. Default TEXT_ALIGN.TOP
---@param alpha number? # The alpha to draw it with. Default 255
---@param contentAlign number? # The content alignment TEXT_ALIGN. Default TEXT_ALIGN.LEFT
function Markup:draw(x, y, xAlign, yAlign, alpha, contentAlign) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Get the object height.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1895).
---@return number # The height of the object
function Markup:getHeight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Get the object size.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1901).
---@return number # The width of the object

---@return number # The height of the object
function Markup:getSize() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Get the object width.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/render.lua#L1889).
---@return number # The width of the object
function Markup:getWidth() end

