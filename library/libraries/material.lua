---@meta

material = {}

--- Returns a linear color-corrected vector keyvalue of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function material.getVectorLinear(path, key) end

--- Returns a vector keyvalue of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function material.getVector(path, key) end

--- Loads a .vmt material or existing material. Throws an error if the material fails to load
--- Existing created materials can be loaded with ! prepended to the name
--- Can't be modified
---@param path string # The path of the material (don't include .vmt in the path)
---@return Material # The material object. Can't be modified.
function material.load(path) end

--- Returns the shader name of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@return string # The shader name of the material
function material.getShader(path) end

--- Returns a float keyvalue of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the float from
---@return number? # The float value or nil if it doesn't exist
function material.getFloat(path, key) end

--- Returns a table of keyvalues from a material
---@param path string # The path of the material (don't include .vmt in the path)
---@return table # The table of keyvalues
function material.getKeyValues(path) end

--- Returns a string keyvalue
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the string from
---@return string? # The string value or nil if it doesn't exist
function material.getString(path, key) end

--- Gets a texture from a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param texture string # The texture key to get
---@return string? # The texture's name or nil if texture key isn't found
function material.getTexture(path, texture) end

--- Returns a matrix keyvalue of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the matrix from
---@return VMatrix? # The matrix value or nil if it doesn't exist
function material.getMatrix(path, key) end

--- Returns the height of the member texture set for $basetexture of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@return number # The basetexture's height
function material.getHeight(path) end

--- Returns a material's engine name
---@param path string # The path of the material (don't include .vmt in the path)
---@return string # The name of a material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
function material.getName(path) end

--- Returns an int keyvalue of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@param key string # The key to get the int from
---@return number? # The int value or nil if it doesn't exist
function material.getInt(path, key) end

--- Creates a .jpg or .png material from file
--- Can't be modified
---@param path string # The path to the image file, must be a jpg or png image
---@param params string # The shader parameters to apply to the material. See https://wiki.facepunch.com/gmod/Material_Parameters
---@return Material # The Material created.
function material.createFromImage(path, params) end

--- Returns a color pixel value of the $basetexture of a .png or .jpg material.
---@param path string # The path of the material (don't include .vmt in the path)
---@param x number # The x coordinate of the pixel
---@param y number # The y coordinate of the pixel
---@return Color # The color value
function material.getColor(path, x, y) end

--- Creates a new blank material
--- UnlitGeneric
--- VertexLitGeneric
--- Refract_DX90
--- Water_DX90
--- Sky_DX9
--- gmodscreenspace
--- Modulate_DX9
---@param shader string # The shader of the material. Must be one of
---@return Material # The Material created.
function material.create(shader) end

--- Returns the width of the member texture set for $basetexture of a material
---@param path string # The path of the material (don't include .vmt in the path)
---@return number # The basetexture's width
function material.getWidth(path) end

