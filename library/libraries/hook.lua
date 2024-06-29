---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Deals with hooks.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hook.lua#L611).
hook = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets a hook function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hook.lua#L633).
---@param hookname HookName # Name of the event
---@param name string # Unique identifier
---@param func function # Function to run
function hook.add(hookname, name, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Remove a hook.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hook.lua#L722).
---@param hookname HookName # The hook name
---@param name string # The unique name for this hook
function hook.remove(hookname, name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Run a hook and return the result.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hook.lua#L653).
---@param hookname HookName # The hook name
---@param ... any # Arguments to pass to the hook
---@return ... # returns Return result(s) of the hook ran
function hook.run(hookname, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Run a hook remotely.
--- This will call the hook "remote" on either a specified entity or all instances on the server/client.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/hook.lua#L685).
---@param recipient Entity? # Starfall entity to call the hook on. Nil to run on every starfall entity
---@param ... any # Parameters that will be passed when calling hook functions
---@return table # A list of the resultset of each called hook
function hook.runRemote(recipient, ...) end
