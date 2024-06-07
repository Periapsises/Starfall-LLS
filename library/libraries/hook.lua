---@meta

hook = {}

--- Run a hook and return the result
---@param hookname HookName # The hook name
---@param ... any # Arguments to pass to the hook
---@return ... # returns Return result(s) of the hook ran
function hook.run(hookname, ...) end

--- Remove a hook
---@param hookname HookName # The hook name
---@param name string # The unique name for this hook
function hook.remove(hookname, name) end

--- Run a hook remotely.
--- This will call the hook "remote" on either a specified entity or all instances on the server/client
---@param recipient Entity? # Starfall entity to call the hook on. Nil to run on every starfall entity
---@param ... any # Parameters that will be passed when calling hook functions
---@return table # A list of the resultset of each called hook
function hook.runRemote(recipient, ...) end

--- Sets a hook function
---@param hookname HookName # Name of the event
---@param name string # Unique identifier
---@param func function # Function to run
function hook.add(hookname, name, func) end
