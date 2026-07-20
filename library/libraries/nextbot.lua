---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Library for spawning NextBots.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L13).
nextbot = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if you can spawn any more nextbots.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L134).
---@return boolean # Returns true if you can spawn nextbots, false if not
function nextbot.canSpawn() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks if you can spawn any more nextbot ragdolls.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L150).
---@return boolean # Returns true if you can spawn nextbot ragdolls, false if not
function nextbot.canSpawnRagdoll() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Creates a customizable NextBot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L88).
---@param pos Vector # The position the nextbot will be spawned at.
---@param mdl string # The model the nextbot will use.
---@return NextBot # The nextbot.
function nextbot.create(pos, mdl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Checks how many nextbots can be spawned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L142).
---@return number # Number of nextbots able to be spawned
function nextbot.nextbotsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns how many nextbot ragdolls you can spawn.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L158).
---@return number # Amount of nextbot ragdolls that can be spawned
function nextbot.ragdollsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Removes the given nextbot.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sv/nextbot.lua#L127).
function nextbot.remove() end
