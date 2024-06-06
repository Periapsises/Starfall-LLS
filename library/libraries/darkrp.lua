---@meta

darkrp = {}

--- Get a list of possible shipments.
---@return table? # A table with the contents of the GLua global "CustomShipments", or nil if it doesn't exist.
function darkrp.getCustomShipments() end

--- Toggle the state of the F4 menu (open or closed). Equivalent to pressing F4 (or running gm_showspare2).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.toggleF4Menu() end

--- Request money from a player.
--- This is subject to a burst limit, and a limit of one money request per sender per receiver at a time. Use "darkrp.canMakeMoneyRequest" to check if you can request money that tick for that player.
---@param sender Player # The player who may or may not send the money.
---@param amount number # The amount of money to ask for.
---@param message string? # An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
---@param callbackSuccess function? # Optional function to call if request succeeds. Args (string: The request message, player: The money sender, number: The amount)
---@param callbackFailure function? # Optional function to call if request fails. Args (string: why it failed)
---@param receiver Player? # The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
function darkrp.requestMoney(sender, amount, message, callbackSuccess, callbackFailure, receiver) end

--- Format a number as a money value. Includes currency symbol.
---@param amount number # The money to format, e.g. 100000.
---@return string # The money as a nice string, e.g. "$100,000".
function darkrp.formatMoney(amount) end

--- Open the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc). Roughly equivalent to pressing F4 (or running gm_showspare2), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.openF4Menu() end

--- Open the DarkRP pocket menu. This refers to DarkRP's built-in "pocket", and probably not your server's custom inventory system.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.openPocketMenu() end

--- Get the table of all current laws.
---@return table # A table of all current laws.
function darkrp.getLaws() end

--- Buy the door the local player is looking at, or open the menu if it's already bought. Equivalent to pressing F2 (or running gm_showteam).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.openKeysMenu() end

--- Get the available vehicles that DarkRP supports.
---@return table # Names, models and classnames of all supported vehicles.
function darkrp.getAvailableVehicles() end

--- Get the number of jail positions in the current map.
---@return number # The number of jail positions in the current map.
function darkrp.jailPosCount() end

--- Get whether a DarkRPVar is blacklisted from being read by Starfall.
---@param var string # The name of the variable
---@return boolean # If the variable is blacklisted
function darkrp.isDarkRPVarBlacklisted(var) end

--- Returns whether you can give someone money this tick.
---@return boolean # If you can give someone money
function darkrp.canGiveMoney() end

--- Close the F1 help menu.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.closeF1Menu() end

--- Get all categories for all F4 menu tabs, including all jobs and every entity available for purchase.
---@return table # All categories.
function darkrp.getCategories() end

--- Get the entity corresponding to a door index. Note: The door MUST have been created by the map!
---@param doorIndex number # The door index
---@return Entity? # The door entity, or nil if the index is invalid or the door was removed.
function darkrp.doorIndexToEnt(doorIndex) end

--- Make one player give money to the other player.
--- This is subject to a burst limit. Use "darkrp.canGiveMoney" to check if you can give out money that tick.
--- Only works if the sender is the owner of the chip, or if the chip is running in superuser mode.
---@param sender Player # The player who gives the money.
---@param receiver Player # The player who receives the money.
---@param amount number # The amount of money.
function darkrp.payPlayer(sender, receiver, amount) end

--- Close the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.closeF4Menu() end

--- Returns number of money requests left.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 1.
--- In other words, you can make a maximum of 1 money request every 2 seconds. May vary from server to server.
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyRequestsLeft() end

--- Returns number of times you can give someone money.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 2.
--- In other words, you can give out money two times at once, then you have to wait two seconds. May vary from server to server.
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyGivingsLeft() end

--- Returns whether you can make another money request this tick.
--- If a player is provided as a parameter, will also check if you can request money from that particular player this tick.
---@param sender Player? # Player you intend to ask for money from later (if nil, will only check your money request rate)
---@return boolean # If you can make another money request
function darkrp.canMakeMoneyRequest(sender) end

--- Open the F1 help menu. Roughly equivalent to pressing F1 (or running gm_showhelp), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
function darkrp.openF1Menu() end

--- Get all food items.
---@return table? # Table with food items, or nil if there are none.
function darkrp.getFoodItems() end

