---@meta

timer = {}

--- Unpauses a timer
---@param name string # The timer name
---@return boolean # false if the timer didn't exist or was already running, true otherwise.
function timer.unpause(name) end

--- Returns amount of repetitions/executions left before the timer destroys itself.
---@param name string # The timer name
---@return number # The amount of executions left. Nil if timer doesnt exist
function timer.repsleft(name) end

--- Starts a timer
---@param name string # The timer name
---@return boolean # True if the timer exists, false if it doesn't.
function timer.start(name) end

--- Returns amount of time left (in seconds) before the timer executes its function.
---@param name string # The timer name
---@return number # The amount of time left (in seconds). If the timer is paused, the amount will be negative. Nil if timer doesnt exist
function timer.timeleft(name) end

--- Returns the uptime of the game/server in seconds (to at least 4 decimal places)
--- Ideal for timing real world events since it updates local to the realm thinking, being clientside FPS or server tickrate
---@return number # Realtime in seconds
function timer.realtime() end

--- Returns time between frames on client and ticks on server. Same thing as G.FrameTime in GLua
---@return number # The time between frames / ticks depending on realm
function timer.frametime() end

--- Stops a timer
---@param name string # The timer name
---@return boolean # False if the timer didn't exist or was already stopped, true otherwise.
function timer.stop(name) end

--- Adjusts a timer
---@param name string # The timer name
---@param delay number # The time, in seconds, to set the timer to.
---@param reps number? # (Optional) The repetitions of the timer. 0 = infinite, nil = 1
---@param func function? # (Optional) The function to call when the timer is fired
---@return boolean # True if succeeded
function timer.adjust(name, delay, reps, func) end

--- Returns the uptime of the server in seconds (to at least 4 decimal places)
--- You should not use this for timing real world events as it is synchronized with the server, use realtime instead
---@return number # Curtime in seconds
function timer.curtime() end

--- Runs either timer.pause or timer.unpause based on the timer's current status.
---@param name string # The timer name
---@return boolean # Status of the timer.
function timer.toggle(name) end

--- Pauses a timer
---@param name string # The timer name
---@return boolean # false if the timer didn't exist or was already paused, true otherwise.
function timer.pause(name) end

--- Creates (and starts) a timer
---@param name string # The timer name
---@param delay number # The time, in seconds, to set the timer to.
---@param reps number # The repetitions of the timer. 0 = infinite
---@param func function # The function to call when the timer is fired
function timer.create(name, delay, reps, func) end

--- Creates a simple timer, has no name, can't be stopped, paused, or destroyed.
---@param delay number # The time, in second, to set the timer to
---@param func function # The function to call when the timer is fired
function timer.simple(delay, func) end

--- Returns number of available timers
---@return number # Number of available timers
function timer.getTimersLeft() end

--- Returns a highly accurate time in seconds since the start up, ideal for benchmarking.
---@return number # The time in seconds since start up
function timer.systime() end

--- Checks if a timer exists
---@param name string # The timer name
---@return boolean # if the timer exists
function timer.exists(name) end

--- Stops and removes the timer.
---@param name string # The timer name
function timer.remove(name) end
