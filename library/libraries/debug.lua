---@meta

debug = {}

--- GLua's debug.traceback()
--- Returns a string containing a stack trace of the given thread
---@param A thread? # thread to get the stack trace of. If nil, this argument will be used as the message and the current thread becomes the target.
---@param message string? # A message to be included at the beginning of the stack trace. Default: ""
---@param stacklevel number? # Which position in the execution stack to start the traceback at. Default: 1
---@return string # A dump of the execution stack.
function debug.traceback(A, message, stacklevel) end

--- GLua's debug.getinfo()
--- Returns a DebugInfo structure containing the passed function's info https://wiki.facepunch.com/gmod/Structures/DebugInfo
---@param funcOrStackLevel function|number # Function or stack level to get info about. Defaults to stack level 0.
---@param fields string? # A string that specifies the information to be retrieved. Defaults to all (flnSu).
---@return table # DebugInfo table
function debug.getinfo(funcOrStackLevel, fields) end

--- GLua's debug.getlocal()
--- Returns the name of a function or stack's locals
---@param funcOrStackLevel function|number # Function or stack level to get info about. Defaults to stack level 0.
---@param index number # The index of the local to get
---@return string # The name of the local
function debug.getlocal(funcOrStackLevel, index) end
