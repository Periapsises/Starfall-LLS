---@meta

nextbot = {}

--- Removes the given nextbot.
function nextbot.remove() end

--- Checks if a user can spawn anymore nextbots.
---@return boolean # True if user can spawn nextbots, False if not.
function nextbot.canSpawn() end

--- Creates a customizable NextBot
---@param spawnpos Vector # The position the nextbot will be spawned at.
---@param model string # The model the nextbot will use.
---@return NextBot # The nextbot.
function nextbot.create(spawnpos, model) end

