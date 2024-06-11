---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- The `Material` type is used to control shaders in rendering.
--- For a list of shader parameters, see https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters.
--- For a list of $flags and $flags2, see https://developer.valvesoftware.com/wiki/Material_Flags.
---@class Material
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L373).
local Material = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Frees a user created material allowing you to create others.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L587).
function Material:destroy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a color pixel value of the $basetexture of a .png or .jpg material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L638).
---@param x number # The x coordinate of the pixel
---@param y number # The y coordinate of the pixel
---@return Color # The color value
function Material:getColor(x, y) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a float keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L649).
---@param key string # The key to get the float from
---@return number? # The float value or nil if it doesn't exist
function Material:getFloat(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the base texture set to the material's height.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L631).
---@return number # The basetexture's height
function Material:getHeight() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns an int keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L658).
---@param key string # The key to get the int from
---@return number? # The int value or nil if it doesn't exist
function Material:getInt(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a table of material keyvalues.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L667).
---@return table # The table of keyvalues
function Material:getKeyValues() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a matrix keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L674).
---@param key string # The key to get the matrix from
---@return VMatrix? # The matrix value or nil if it doesn't exist
function Material:getMatrix(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the material's engine name.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L610).
---@return string # The name of the material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
function Material:getName() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the shader name of the material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L617).
---@return string # The shader name of the material
function Material:getShader() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a string keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L683).
---@param key string # The key to get the string from
---@return string? # The string value or nil if it doesn't exist
function Material:getString(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a texture id keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L692).
---@param key string # The key to get the texture from
---@return string? # The string id of the texture or nil if it doesn't exist
function Material:getTexture(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a vector keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L702).
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function Material:getVector(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a linear color-corrected vector keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L711).
---@param key string # The key to get the vector from
---@return Vector? # The vector value or nil if it doesn't exist
function Material:getVectorLinear(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Gets the base texture set to the material's width.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L624).
---@return number # The basetexture's width
function Material:getWidth() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Refreshes the material. Sometimes needed for certain parameters to update.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L720).
function Material:recompute() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a float keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L725).
---@param key string # The key name to set
---@param v number # The value to set it to
function Material:setFloat(key, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets an int keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L734).
---@param key string # The key name to set
---@param v number # The value to set it to
function Material:setInt(key, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a matrix keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L743).
---@param key string # The key name to set
---@param v VMatrix # The value to set it to
function Material:setMatrix(key, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a string keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L751).
---@param key string # The key name to set
---@param v string # The value to set it to
function Material:setString(key, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a texture keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L760).
---@param key string # The key name to set. $basetexture is the key name for most purposes.
---@param v string # The texture name to set it to.
function Material:setTexture(key, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a rendertarget texture to the specified texture key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L826).
---@param key string # The key name to set. $basetexture is the key name for most purposes.
---@param name string # The name of the rendertarget
function Material:setTextureRenderTarget(key, name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Loads an online image or base64 data to the specified texture key.
--- If the texture in key is not set to a rendertarget, a rendertarget will be created and used.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L770).
---@param key string # The key name to set. $basetexture is the key name for most purposes.
---@param url string # The url or base64 data
---@param cb function? # An optional callback called when image is loaded. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h, pixelated to reposition the image in the texture. Setting the optional 'pixelated' argument to True tells the image to use nearest-neighbor interpolation
---@param done function? # An optional callback called when the image is done loading. Passes the material, url
function Material:setTextureURL(key, url, cb, done) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a keyvalue to be undefined.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L840).
---@param key string # The key name to set
function Material:setUndefined(key) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets a vector keyvalue.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/material.lua#L847).
---@param key string # The key name to set
---@param v Vector # The value to set it to
function Material:setVector(key, v) end

