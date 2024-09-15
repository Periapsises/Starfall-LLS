---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua debug library https://wiki.garrysmod.com/page/Category:debug.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L26).
debug = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- GLua's debug.getinfo().
--- Returns a DebugInfo structure containing the passed function's info https://wiki.facepunch.com/gmod/Structures/DebugInfo.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L985).
---@param funcOrStackLevel function|number # Function or stack level to get info about. Defaults to stack level 0.
---@param fields string? # A string that specifies the information to be retrieved. Defaults to all (flnSu).
---@return table # DebugInfo table
function debug.getinfo(funcOrStackLevel, fields) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- GLua's debug.getlocal().
--- Returns the name of a function or stack's locals.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L1001).
---@param funcOrStackLevel function|number # Function or stack level to get info about. Defaults to stack level 0.
---@param index number # The index of the local to get
---@return string # The name of the local
function debug.getlocal(funcOrStackLevel, index) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- GLua's debug.traceback().
--- Returns a string containing a stack trace of the given thread.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/builtins.lua#L958).
---@param A thread? # thread to get the stack trace of. If nil, this argument will be used as the message and the current thread becomes the target.
---@param message string? # A message to be included at the beginning of the stack trace. Default: ""
---@param stacklevel number? # Which position in the execution stack to start the traceback at. Default: 1
---@return string # A dump of the execution stack.
function debug.traceback(A, message, stacklevel) end
