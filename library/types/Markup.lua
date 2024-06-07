---@meta

---@class Markup
local Markup = {}

--- Get the object height
---@return number # The height of the object
function Markup:getHeight() end

--- Get the object size
---@return number # The width of the object
---@return number # The height of the object
function Markup:getSize() end

--- Get the object width
---@return number # The width of the object
function Markup:getWidth() end

--- Draw the markup object
---@param x number number The x offset
---@param y number number The x offset
---@param xAlign number? number The x TEXT_ALIGN. Default TEXT_ALIGN.LEFT
---@param yAlign number? number The y TEXT_ALIGN. Default TEXT_ALIGN.TOP
---@param alpha number? The alpha to draw it with. Default 255
---@param contentAlign number? The content alignment TEXT_ALIGN. Default TEXT_ALIGN.LEFT
function Markup:draw(x, y, xAlign, yAlign, alpha, contentAlign) end
