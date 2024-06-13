---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Wire library. Handles wire inputs/outputs, wirelinks, etc.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L17).
wire = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates/Modifies wire inputs. All wire ports must begin with an uppercase.
--- letter and contain only alphabetical characters or numbers but may not begin with a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L345).
---@param names table # An array of input names. May be modified by the function.
---@param types table # An array of input types. Can be shortcuts. May be modified by the function.
function wire.adjustInputs(names, types) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates/Modifies wire outputs. All wire ports must begin with an uppercase.
--- letter and contain only alphabetical characters or numbers but may not begin with a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L373).
---@param names table # An array of output names. May be modified by the function.
---@param types table # An array of output types. Can be shortcuts. May be modified by the function.
function wire.adjustOutputs(names, types) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates/Modifies wire inputs/outputs. All wire ports must begin with an uppercase.
--- letter and contain only alphabetical characters or numbers but may not begin with a number.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L412).
---@param inputs table? # (Optional) A key-value table with input port names as keys and types as values. e.g. {MyInput="number"} or {MyInput={type="number"}}. If nil, input ports won't be changed.
---@param outputs table? # (Optional) A key-value table with output port names as keys and types as values. e.g. {MyOutput="number"} or {MyOutput={type="number"}}. If nil, output ports won't be changed.
function wire.adjustPorts(inputs, outputs) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Wires two entities together.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L473).
---@param entI Entity # Entity with input
---@param entO Entity # Entity with output
---@param inputname string # Input to be wired
---@param outputname string # Output to be wired
---@param width number? # Width of the wire(optional)
---@param color Color? # Color of the wire(optional)
---@param materialName string? # Material of the wire(optional), Valid materials are cable/rope, cable/cable2, cable/xbeam, cable/redlaser, cable/blue_elec, cable/physbeam, cable/hydra, arrowire/arrowire, arrowire/arrowire2
function wire.create(entI, entO, inputname, outputname, width, color, materialName) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Unwires an entity's input.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L525).
---@param entI Entity # Entity with input
---@param inputname string # Input to be un-wired
function wire.delete(entI, inputname) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of entity's inputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L561).
---@param entI Entity # Entity with input(s)
---@return table # Table of entity's input names
---@return table # Table of entity's input types
function wire.getInputs(entI) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a table of entity's outputs.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L569).
---@param entO Entity # Entity with output(s)
---@return table # Table of entity's output names
---@return table # Table of entity's output types
function wire.getOutputs(entO) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns a wirelink to a wire entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L577).
---@param ent Entity # Wire entity
---@return Wirelink # Wirelink of the entity
function wire.getWirelink(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the wirelink representing this entity.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L458).
---@return Wirelink # Wirelink representing this entity
function wire.self() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the server's UUID.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/wire.lua#L466).
---@return string # Server UUID
function wire.serverUUID() end
