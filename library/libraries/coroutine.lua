---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Coroutine library.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L5).
coroutine = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a new coroutine.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L69).
---@param func function # Function of the coroutine
---@return thread # Created coroutine
function coroutine.create(func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Resumes a suspended coroutine. Note that, in contrast to Lua's native coroutine.resume function, it will not run in protected mode and can throw an error.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L87).
---@param coroutine thread # to resume
---@param ... any # Optional parameters that will be passed to the coroutine
---@return ... # Any values the coroutine is returning to the main thread
function coroutine.resume(coroutine, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the coroutine that is currently running.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L118).
---@return thread # Currently running coroutine
function coroutine.running() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the status of the coroutine.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L109).
---@param coroutine thread # The coroutine
---@return string # Either "suspended", "running", "normal" or "dead"
function coroutine.status(coroutine) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suspends the coroutine for a number of seconds. Note that the coroutine will not resume automatically, but any attempts to resume the coroutine while it is waiting will not resume the coroutine and act as if the coroutine suspended itself immediately.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L125).
---@param time number # Time in seconds to suspend the coroutine
function coroutine.wait(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a new coroutine.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L78).
---@param func function # Function of the coroutine
---@return function # A function that, when called, resumes the created coroutine. Any parameters to that function will be passed to the coroutine.
function coroutine.wrap(func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Suspends the currently running coroutine. May not be called outside a coroutine.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/coroutine.lua#L97).
---@param ... any # parameters that will be returned to the main thread
---@return ... # Any values passed to the coroutine
function coroutine.yield(...) end
