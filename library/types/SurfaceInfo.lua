---@meta

---@class SurfaceInfo
local SurfaceInfo = {}

--- Returns a list of vertices the brush surface is built from.
---@return table # List of Vector points. This will usually be 4 corners of a quadrilateral in counter-clockwise order.
function SurfaceInfo:getVertices() end

--- Returns the brush surface's material.
---@return string|Material # In SERVER, the material name, and in CLIENT, the Material object.
function SurfaceInfo:getMaterial() end

--- Checks if the brush surface is displaying the skybox.
--- This internally checks the SURFDRAW_SKY flag.
---@return boolean # If the surface is the sky.
function SurfaceInfo:isSky() end

--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.
--- This internally checks the SURFDRAW_NODRAW flag.
---@return boolean # If this surface won't be drawn.
function SurfaceInfo:isNoDraw() end

--- Checks if the brush surface is water.
--- This internally checks the SURFDRAW_WATER flag.
---@return boolean # If the surface is water.
function SurfaceInfo:isWater() end
