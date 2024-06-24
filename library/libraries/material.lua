---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- `material` library is allows creating material objects which are used for controlling shaders in rendering.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L367).
material = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a new blank material.
--- UnlitGeneric.
--- VertexLitGeneric.
--- Refract_DX90.
--- Water_DX90.
--- Sky_DX9.
--- gmodscreenspace.
--- Modulate_DX9.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L539).
---@param shader string # The shader of the material. Must be one of
---@return Material # The Material created.
function material.create(shader) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a .jpg or .png material from file.
--- Can't be modified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L559).
---@param path string # The path to the image file, must be a jpg or png image
---@param params string # The shader parameters to apply to the material. See https://wiki.facepunch.com/gmod/Material_Parameters
---@return Material # The Material created.
function material.createFromImage(path, params) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a color pixel value of the $basetexture of a .png or .jpg material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L467).
---@param path string # The path of the material (don't include .vmt in the path)
---@param x number # The x coordinate of the pixel
---@param y number # The y coordinate of the pixel
---@return Color # The color value
function material.getColor(path, x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a float keyvalue of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L479).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the float from
---@return number? # The float value or nil if it doesn't exist
function material.getFloat(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the height of the member texture set for $basetexture of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L459).
---@param path string # The path of the material (don't include .vmt in the path)
---@return number # The basetexture's height
function material.getHeight(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns an int keyvalue of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L489).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the int from
---@return number? # The int value or nil if it doesn't exist
function material.getInt(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a table of keyvalues from a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L427).
---@param path string # The path of the material (don't include .vmt in the path)
---@return table # The table of keyvalues
function material.getKeyValues(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a matrix keyvalue of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L499).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the matrix from
---@return VMatrix? # The matrix value or nil if it doesn't exist
function material.getMatrix(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a material's engine name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L435).
---@param path string # The path of the material (don't include .vmt in the path)
---@return string # The name of a material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
function material.getName(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the shader name of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L443).
---@param path string # The path of the material (don't include .vmt in the path)
---@return string # The shader name of the material
function material.getShader(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a string keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L509).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the string from
---@return string? # The string value or nil if it doesn't exist
function material.getString(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets a texture from a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L416).
---@param path string # The path of the material (don't include .vmt in the path)
---@param texture string # The texture key to get
---@return string? # The texture's name or nil if texture key isn't found
function material.getTexture(path, texture) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a vector keyvalue of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L519).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function material.getVector(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a linear color-corrected vector keyvalue of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L529).
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function material.getVectorLinear(path, key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the width of the member texture set for $basetexture of a material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L451).
---@param path string # The path of the material (don't include .vmt in the path)
---@return number # The basetexture's width
function material.getWidth(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Loads a .vmt material or existing material. Throws an error if the material fails to load.
--- Existing created materials can be loaded with ! prepended to the name.
--- Can't be modified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L402).
---@param path string # The path of the material (don't include .vmt in the path)
---@return Material # The material object. Can't be modified.
function material.load(path) end

