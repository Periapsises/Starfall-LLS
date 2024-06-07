---@meta

---@class Material
local Material = {}

--- Frees a user created material allowing you to create others
function Material:destroy() end

--- Sets a matrix keyvalue
---@param key string The key name to set
---@param v VMatrix The value to set it to
function Material:setMatrix(key, v) end

--- Sets a keyvalue to be undefined
---@param key string The key name to set
function Material:setUndefined(key) end

--- Refreshes the material. Sometimes needed for certain parameters to update
function Material:recompute() end

--- Returns a texture id keyvalue
---@param key string The key to get the texture from
---@return string? # The string id of the texture or nil if it doesn't exist
function Material:getTexture(key) end

--- Returns a matrix keyvalue
---@param key string The key to get the matrix from
---@return VMatrix? # The matrix value or nil if it doesn't exist
function Material:getMatrix(key) end

--- Loads an online image or base64 data to the specified texture key
--- If the texture in key is not set to a rendertarget, a rendertarget will be created and used.
---@param key string The key name to set. $basetexture is the key name for most purposes.
---@param url string The url or base64 data
---@param cb function? An optional callback called when image is loaded. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h, pixelated to reposition the image in the texture. Setting the optional 'pixelated' argument to True tells the image to use nearest-neighbor interpolation
---@param done function? An optional callback called when the image is done loading. Passes the material, url
function Material:setTextureURL(key, url, cb, done) end

--- Sets a rendertarget texture to the specified texture key
---@param key string The key name to set. $basetexture is the key name for most purposes.
---@param name string The name of the rendertarget
function Material:setTextureRenderTarget(key, name) end

--- Sets an int keyvalue
---@param key string The key name to set
---@param v number The value to set it to
function Material:setInt(key, v) end

--- Returns a string keyvalue
---@param key string The key to get the string from
---@return string? # The string value or nil if it doesn't exist
function Material:getString(key) end

--- Returns an int keyvalue
---@param key string The key to get the int from
---@return number? # The int value or nil if it doesn't exist
function Material:getInt(key) end

--- Returns the shader name of the material
---@return string # The shader name of the material
function Material:getShader() end

--- Returns a float keyvalue
---@param key string The key to get the float from
---@return number? # The float value or nil if it doesn't exist
function Material:getFloat(key) end

--- Gets the base texture set to the material's width
---@return number # The basetexture's width
function Material:getWidth() end

--- Returns a linear color-corrected vector keyvalue
---@param key string The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function Material:getVectorLinear(key) end

--- Returns a vector keyvalue
---@param key string The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function Material:getVector(key) end

--- Returns a table of material keyvalues
---@return table # The table of keyvalues
function Material:getKeyValues() end

--- Gets the base texture set to the material's height
---@return number # The basetexture's height
function Material:getHeight() end

--- Returns the material's engine name
---@return string # The name of the material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
function Material:getName() end

--- Sets a vector keyvalue
---@param key string The key name to set
---@param v Vector The value to set it to
function Material:setVector(key, v) end

--- Returns a color pixel value of the $basetexture of a .png or .jpg material.
---@param x number The x coordinate of the pixel
---@param y number The y coordinate of the pixel
---@return Color # The color value
function Material:getColor(x, y) end

--- Sets a texture keyvalue
---@param key string The key name to set. $basetexture is the key name for most purposes.
---@param v string The texture name to set it to.
function Material:setTexture(key, v) end

--- Sets a float keyvalue
---@param key string The key name to set
---@param v number The value to set it to
function Material:setFloat(key, v) end

--- Sets a string keyvalue
---@param key string The key name to set
---@param v string The value to set it to
function Material:setString(key, v) end
