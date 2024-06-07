---@meta

---@class Light
local Light = {}

--- Sets the color of the light
---@param col Color The color of the light
function Light:setColor(col) end

--- Sets the light brightness
---@param brightness number The light's brightness
function Light:setBrightness(brightness) end

--- Sets the minimum light amount
---@param min number The minimum light
function Light:setMinLight(min) end

--- Sets the light inner angle (used with setDirection and setOuterAngle)
---@param ang number Inner angle of the light
function Light:setInnerAngle(ang) end

--- Sets the light direction (used with setInnerAngle and setOuterAngle)
---@param dir Vector Direction of the light
function Light:setDirection(dir) end

--- Sets the light position
---@param pos Vector The position of the light
function Light:setPos(pos) end

--- Sets the light lifespan (Required for fade effect i.e. decay)
---@param dietime number The how long the light will stay alive after turning it off.
function Light:setDieTime(dietime) end

--- Draws the light. Typically used in the think hook. Will throw an error if it fails (use pcall)
function Light:draw() end

--- Sets the flicker style of the light https://developer.valvesoftware.com/wiki/Light_dynamic#Appearances
---@param style number The number of the flicker style
function Light:setStyle(style) end

--- Sets whether the light should cast onto the world or not
---@param on boolean Whether the light shouldn't cast onto the world
function Light:setNoWorld(on) end

--- Sets the size of the light (max is sf_light_maxsize)
---@param size number The size of the light
function Light:setSize(size) end

--- Sets the light decay speed in thousandths per second. 1000 lasts for 1 second, 2000 lasts for 0.5 seconds
---@param decay number The light's decay speed
function Light:setDecay(decay) end

--- Sets the light outer angle (used with setDirection and setInnerAngle)
---@param ang number Outer angle of the light
function Light:setOuterAngle(ang) end

--- Sets whether the light should cast onto models or not
---@param on boolean Whether the light shouldn't cast onto the models
function Light:setNoModel(on) end
