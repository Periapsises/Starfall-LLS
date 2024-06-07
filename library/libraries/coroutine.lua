---@meta

coroutine = {}

--- Resumes a suspended coroutine. Note that, in contrast to Lua's native coroutine.resume function, it will not run in protected mode and can throw an error.
---@param coroutine thread # to resume
---@param ... any # Optional parameters that will be passed to the coroutine
---@return ... # Any values the coroutine is returning to the main thread
function coroutine.resume(coroutine, ...) end

--- Creates a new coroutine.
---@param func function # Function of the coroutine
---@return function # A function that, when called, resumes the created coroutine. Any parameters to that function will be passed to the coroutine.
function coroutine.wrap(func) end

--- Returns the status of the coroutine.
---@param coroutine thread # The coroutine
---@return string # Either "suspended", "running", "normal" or "dead"
function coroutine.status(coroutine) end

--- Returns the coroutine that is currently running.
---@return thread # Currently running coroutine
function coroutine.running() end

--- Creates a new coroutine.
---@param func function # Function of the coroutine
---@return thread # Created coroutine
function coroutine.create(func) end

--- Suspends the coroutine for a number of seconds. Note that the coroutine will not resume automatically, but any attempts to resume the coroutine while it is waiting will not resume the coroutine and act as if the coroutine suspended itself immediately.
---@param time number # Time in seconds to suspend the coroutine
function coroutine.wait(time) end

--- Suspends the currently running coroutine. May not be called outside a coroutine.
---@param ... any # parameters that will be returned to the main thread
---@return ... # Any values passed to the coroutine
function coroutine.yield(...) end
