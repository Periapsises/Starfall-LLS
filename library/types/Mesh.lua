---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Mesh type.
---@class Mesh
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L679).
local Mesh = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Frees the mesh from memory.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1133).
function Mesh:destroy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws the mesh. Must be in a 3D rendering context.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1122).
function Mesh:draw() end
