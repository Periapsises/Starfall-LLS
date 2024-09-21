---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Light library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/light.lua#L74).
light = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a dynamic light (make sure to draw it).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/light.lua#L117).
---@param pos Vector # The position of the light
---@param size number # The size of the light. Must be lower than sf_light_maxsize
---@param brightness number # The brightness of the light
---@param color Color # The color of the light
---@return Light # Dynamic light
function light.create(pos, size, brightness, color) end
