---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- SurfaceInfo type.
---@class SurfaceInfo
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L3).
local SurfaceInfo = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the brush surface's material.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L25).
---@return string|Material # In SERVER, the material name, and in CLIENT, the Material object.
function SurfaceInfo:getMaterial() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a list of vertices the brush surface is built from.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L39).
---@return table # List of Vector points. This will usually be 4 corners of a quadrilateral in counter-clockwise order.
function SurfaceInfo:getVertices() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.
--- This internally checks the SURFDRAW_NODRAW flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L52).
---@return boolean # If this surface won't be drawn.
function SurfaceInfo:isNoDraw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the brush surface is displaying the skybox.
--- This internally checks the SURFDRAW_SKY flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L60).
---@return boolean # If the surface is the sky.
function SurfaceInfo:isSky() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if the brush surface is water.
--- This internally checks the SURFDRAW_WATER flag.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/surfaceinfo.lua#L68).
---@return boolean # If the surface is water.
function SurfaceInfo:isWater() end

