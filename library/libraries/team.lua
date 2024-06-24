---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Library for retreiving information about teams.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L2).
team = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns team with least players.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L35).
---@return number # Index of the best team to join
function team.bestAutoJoinTeam() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the team exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L83).
---@param ind number # Index of the team
---@return boolean # Whether the team exists
function team.exists(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table containing team information.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L15).
---@return table # Table containing team information
function team.getAllTeams() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the color of a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L21).
---@param ind number # Index of the team
---@return Color # Color of the team
function team.getColor(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not a team can be joined.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L55).
---@param ind number # Index of the team
---@return boolean # Whether the team is joinable
function team.getJoinable(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the name of a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L41).
---@param ind number # Index of the team
---@return string # String name of the team
function team.getName(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns number of deaths of all players on a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L69).
---@param ind number # Index of the team
---@return number # Number of deaths
function team.getNumDeaths(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns number of frags of all players on a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L76).
---@param ind number # Index of the team
---@return number # Number of frags
function team.getNumFrags(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns number of players on a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L62).
---@param ind number # Index of the team
---@return number # Number of players on the team
function team.getNumPlayers(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the table of players on a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L28).
---@param ind number # Index of the team
---@return table # Table of players
function team.getPlayers(ind) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the score of a team.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/team.lua#L48).
---@param ind number # Index of the team
---@return number # Number score of the team
function team.getScore(ind) end
