---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Mesh library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L673).
mesh = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Pushes the vertex data onto the render stack.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1138).
function mesh.advanceVertex() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a mesh without any vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L924).
---@return Mesh # Mesh object
function mesh.createEmpty() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a skinned mesh without any vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L933).
---@return Mesh # Mesh object
function mesh.createEmptySkinned() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a mesh from an obj file. Only supports triangular meshes with normals and texture coordinates.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L896).
---@param obj string # The obj file data
---@param threaded boolean? # Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit
---@param triangulate boolean? # Whether to triangulate faces. (Consumes more CPU)
---@return table # Table of Mesh objects. The keys correspond to the objs object names
function mesh.createFromObj(obj, threaded, triangulate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a mesh from vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L854).
---@param vertices table # Table containing vertex data. http://wiki.facepunch.com/gmod/Structures/MeshVertex
---@param threaded boolean? # Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit. The thread will yield with number of vertices remaining to be processed. After 0 is yielded, the final expensive phase starts.
---@return Mesh # Mesh object
function mesh.createFromTable(vertices, threaded) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds the convex hull of provided vertices table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L758).
---@param vertices table # The table of vertices (vectors) or vertex data (http://wiki.facepunch.com/gmod/Structures/MeshVertex)
---@param threaded boolean? # Optional bool, use threading object that can be used to run algorithm over time to prevent hitting quota limit
---@return table # The mesh table which can be passed to mesh.createFromTable
---@return table # The table of vertices which can be passed to prop.createCustom
function mesh.findConvexHull(vertices, threaded) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Generates mesh data. If an Mesh object is passed, it will populate that mesh with the data. Otherwise, it will render directly to renderer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1018).
---@param mesh_obj Mesh? # Optional Mesh object, mesh to build. (default: nil)
---@param prim_type number # Int, primitive type, see MATERIAL
---@param prim_count number # Int, the amount of primitives
---@param func function # The function provided that will generate the mesh vertices
function mesh.generate(mesh_obj, prim_type, prim_count, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Generates normal vectors for the provided vertices table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L722).
---@param vertices table # The table of vertices
---@param inverted boolean? # Optional bool, invert the normal
---@param smooth_limit number? # Optional number, smooths the normal based on the limit in radians
function mesh.generateNormals(vertices, inverted, smooth_limit) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Generates the tangents for the provided vertices table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L748).
---@param vertices table # The table of vertices
function mesh.generateTangents(vertices) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Generates the uv for the provided vertices table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L736).
---@param vertices table # The table of vertices
---@param scale number # The scale of the uvs
function mesh.generateUV(vertices, scale) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns a table of visual meshes of given model or nil if the model is invalid.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L956).
---@param model string # The full path to a model to get the visual meshes of.
---@param lod number? # The lod of the model to use. Default 0.
---@param bodygroupMask number? # The bodygroupMask of the model to use. Default 0.
---@return table # A table of tables with the following format:  string material - The material of the specific mesh table triangles - A table of MeshVertex structures ready to be fed into IMesh:BuildFromTriangles table verticies - A table of MeshVertex structures representing all the vertexes of the mesh. This table is used internally to generate the "triangles" table. Each MeshVertex structure returned also has an extra table of tables field called "weights" with the following data:  number boneID - The bone this vertex is attached to number weight - How "strong" this vertex is attached to the bone. A vertex can be attached to multiple bones at once.
---@return table # A table of tables with bone id keys with the following format:  number parent - The parent bone id Matrix matrix - pretransformed bone matrix
function mesh.getModelMeshes(model, lod, bodygroupMask) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Parses obj data into a table of vertices, normals, texture coordinates, colors, and tangents.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L708).
---@param obj string # The obj data
---@param threaded boolean? # Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit
---@param triangulate boolean? # Whether to triangulate the faces
---@return table # Table of Mesh tables. The keys correspond to the objs object names, and the values are tables of vertices that can be passed to mesh.createFromTable
---@return table # Table of Mesh data. {positions = positionData, normals = normalData, texturecoords = texturecoordData, faces = faceData}
function mesh.parseObj(obj, threaded, triangulate) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns how many triangles can be created.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L992).
---@return number # Number of triangles that can be created
function mesh.trianglesLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns how many triangles can be rendered.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L999).
---@return number # Number of triangles that can be rendered
function mesh.trianglesLeftRender() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Writes bone data to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1130).
---@param index number # The slot index for the vertex, either 0 or 1.
---@param matrixId number # The matrix index for the vertex, in the range of 1 -> 53.
---@param weight number # How much influence that matrix will have on this vertex, in the range of 0 -> 1. Both weights on each vertex should sum to 1.
function mesh.writeBoneData(index, matrixId, weight) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes the vertex color by RGBA values to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1065).
---@param r number # Number, red value
---@param g number # Number, green value
---@param b number # Number, blue value
---@param a number # Number, alpha value
function mesh.writeColor(r, g, b, a) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes the vertex normal to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1075).
---@param normal Vector # Normal
function mesh.writeNormal(normal) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes the vertex position to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1082).
---@param position Vector # Position
function mesh.writePosition(position) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a quad using 4 vertices to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1108).
---@param v1 Vector # Vertex1 position
---@param v2 Vector # Vertex2 position
---@param v3 Vector # Vertex3 position
---@param v4 Vector # Vertex4 position
---@param col Color # The color for the vertices.
function mesh.writeQuad(v1, v2, v3, v4, col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a quad using a position, normal and size to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1119).
---@param position Vector #
---@param normal Vector #
---@param w number #
---@param h number #
---@param col Color # The color for the vertices.
function mesh.writeQuadEasy(position, normal, w, h, col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes the vertex texture coordinates to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1089).
---@param stage number # Stage of the texture coordinate
---@param u number # U coordinate
---@param v number # V coordinate
function mesh.writeUV(stage, u, v) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes the vertex tangent user data to the vertex data.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/mesh.lua#L1098).
---@param x number # x
---@param y number # y
---@param z number # z
---@param handedness number #
function mesh.writeUserData(x, y, z, handedness) end
