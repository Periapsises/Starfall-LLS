---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Mesh type.
---@class Mesh
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L680).
local Mesh = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Frees the mesh from memory.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1180).
function Mesh:destroy() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Draws the mesh. Must be in a 3D rendering context.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1144).
function Mesh:draw() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Sets the number of matrices to be used for the skinned mesh.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1157).
---@param count number # The number of bone matrices to use in range 1 -> 53
---@return table # Table of reference VMatrix to each bone. Modifying them will modify the bone matrix
function Mesh:setupBoneMatrices(count) end
