---@meta

team = {}

--- Returns number of players on a team
---@param ind number # Index of the team
---@return number # Number of players on the team
function team.getNumPlayers(ind) end

--- Returns team with least players
---@return number # Index of the best team to join
function team.bestAutoJoinTeam() end

--- Returns number of deaths of all players on a team
---@param ind number # Index of the team
---@return number # Number of deaths
function team.getNumDeaths(ind) end

--- Returns the table of players on a team
---@param ind number # Index of the team
---@return table # Table of players
function team.getPlayers(ind) end

--- Returns a table containing team information
---@return table # Table containing team information
function team.getAllTeams() end

--- Returns whether or not a team can be joined
---@param ind number # Index of the team
---@return boolean # Whether the team is joinable
function team.getJoinable(ind) end

--- Returns the name of a team
---@param ind number # Index of the team
---@return string # String name of the team
function team.getName(ind) end

--- Returns the score of a team
---@param ind number # Index of the team
---@return number # Number score of the team
function team.getScore(ind) end

--- Returns number of frags of all players on a team
---@param ind number # Index of the team
---@return number # Number of frags
function team.getNumFrags(ind) end

--- Returns whether or not the team exists
---@param ind number # Index of the team
---@return boolean # Whether the team exists
function team.exists(ind) end

--- Returns the color of a team
---@param ind number # Index of the team
---@return Color # Color of the team
function team.getColor(ind) end
