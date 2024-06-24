---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Deals with time and timers.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L8).
timer = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Adjusts a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L159).
---@param name string # The timer name
---@param delay number # The time, in seconds, to set the timer to.
---@param reps number? # (Optional) The repetitions of the timer. 0 = infinite, nil = 1
---@param func function? # (Optional) The function to call when the timer is fired
---@return boolean # True if succeeded
function timer.adjust(name, delay, reps, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates (and starts) a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L98).
---@param name string # The timer name
---@param delay number # The time, in seconds, to set the timer to.
---@param reps number # The repetitions of the timer. 0 = infinite
---@param func function # The function to call when the timer is fired
function timer.create(name, delay, reps, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the uptime of the server in seconds (to at least 4 decimal places).
--- You should not use this for timing real world events as it is synchronized with the server, use realtime instead.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L31).
---@return number # Curtime in seconds
function timer.curtime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a timer exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L134).
---@param name string # The timer name
---@return boolean # if the timer exists
function timer.exists(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns time between frames on client and ticks on server. Same thing as G.FrameTime in GLua.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L51).
---@return number # The time between frames / ticks depending on realm
function timer.frametime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns number of available timers.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L226).
---@return number # Number of available timers
function timer.getTimersLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Pauses a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L181).
---@param name string # The timer name
---@return boolean # false if the timer didn't exist or was already paused, true otherwise.
function timer.pause(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the uptime of the game/server in seconds (to at least 4 decimal places).
--- Ideal for timing real world events since it updates local to the realm thinking, being clientside FPS or server tickrate.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L38).
---@return number # Realtime in seconds
function timer.realtime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Stops and removes the timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L121).
---@param name string # The timer name
function timer.remove(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns amount of repetitions/executions left before the timer destroys itself.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L217).
---@param name string # The timer name
---@return number # The amount of executions left. Nil if timer doesnt exist
function timer.repsleft(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a simple timer, has no name, can't be stopped, paused, or destroyed.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L112).
---@param delay number # The time, in second, to set the timer to
---@param func function # The function to call when the timer is fired
function timer.simple(delay, func) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Starts a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L150).
---@param name string # The timer name
---@return boolean # True if the timer exists, false if it doesn't.
function timer.start(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Stops a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L142).
---@param name string # The timer name
---@return boolean # False if the timer didn't exist or was already stopped, true otherwise.
function timer.stop(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a highly accurate time in seconds since the start up, ideal for benchmarking.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L45).
---@return number # The time in seconds since start up
function timer.systime() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns amount of time left (in seconds) before the timer executes its function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L208).
---@param name string # The timer name
---@return number # The amount of time left (in seconds). If the timer is paused, the amount will be negative. Nil if timer doesnt exist
function timer.timeleft(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs either timer.pause or timer.unpause based on the timer's current status.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L199).
---@param name string # The timer name
---@return boolean # Status of the timer.
function timer.toggle(name) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Unpauses a timer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/timer.lua#L190).
---@param name string # The timer name
---@return boolean # false if the timer didn't exist or was already running, true otherwise.
function timer.unpause(name) end

