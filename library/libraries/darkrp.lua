---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Functions relating to DarkRP. These functions WILL NOT EXIST if DarkRP is not in use.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L566).
darkrp = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether you can give someone money this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L748).
---@return boolean # If you can give someone money
function darkrp.canGiveMoney() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether you can make another money request this tick.
--- If a player is provided as a parameter, will also check if you can request money from that particular player this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L726).
---@param sender Player? # Player you intend to ask for money from later (if nil, will only check your money request rate)
---@return boolean # If you can make another money request
function darkrp.canMakeMoneyRequest(sender) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Close the F1 help menu.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L763).
function darkrp.closeF1Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Close the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L779).
function darkrp.closeF4Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the entity corresponding to a door index. Note: The door MUST have been created by the map!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L642).
---@param doorIndex number # The door index
---@return Entity? # The door entity, or nil if the index is invalid or the door was removed.
function darkrp.doorIndexToEnt(doorIndex) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Format a number as a money value. Includes currency symbol.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L594).
---@param amount number # The money to format, e.g. 100000.
---@return string # The money as a nice string, e.g. "$100,000".
function darkrp.formatMoney(amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the available vehicles that DarkRP supports.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L602).
---@return table # Names, models and classnames of all supported vehicles.
function darkrp.getAvailableVehicles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get all categories for all F4 menu tabs, including all jobs and every entity available for purchase.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L608).
---@return table # All categories.
function darkrp.getCategories() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get a list of possible shipments.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L627).
---@return table? # A table with the contents of the GLua global "CustomShipments", or nil if it doesn't exist.
function darkrp.getCustomShipments() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get all food items.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L614).
---@return table? # Table with food items, or nil if there are none.
function darkrp.getFoodItems() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the table of all current laws.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L621).
---@return table # A table of all current laws.
function darkrp.getLaws() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether a DarkRPVar is blacklisted from being read by Starfall.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L633).
---@param var string # The name of the variable
---@return boolean # If the variable is blacklisted
function darkrp.isDarkRPVarBlacklisted(var) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the number of jail positions in the current map.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L654).
---@return number # The number of jail positions in the current map.
function darkrp.jailPosCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns number of times you can give someone money.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 2.
--- In other words, you can give out money two times at once, then you have to wait two seconds. May vary from server to server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L739).
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyGivingsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns number of money requests left.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 1.
--- In other words, you can make a maximum of 1 money request every 2 seconds. May vary from server to server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L717).
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyRequestsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the F1 help menu. Roughly equivalent to pressing F1 (or running gm_showhelp), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L755).
function darkrp.openF1Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc). Roughly equivalent to pressing F4 (or running gm_showspare2), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L771).
function darkrp.openF4Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Buy the door the local player is looking at, or open the menu if it's already bought. Equivalent to pressing F2 (or running gm_showteam).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L795).
function darkrp.openKeysMenu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the DarkRP pocket menu. This refers to DarkRP's built-in "pocket", and probably not your server's custom inventory system.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L803).
function darkrp.openPocketMenu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Make one player give money to the other player.
--- This is subject to a burst limit. Use "darkrp.canGiveMoney" to check if you can give out money that tick.
--- Only works if the sender is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L661).
---@param sender Player # The player who gives the money.
---@param receiver Player # The player who receives the money.
---@param amount number # The amount of money.
function darkrp.payPlayer(sender, receiver, amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Request money from a player.
--- This is subject to a burst limit, and a limit of one money request per sender per receiver at a time. Use "darkrp.canMakeMoneyRequest" to check if you can request money that tick for that player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L683).
---@param sender Player # The player who may or may not send the money.
---@param amount number # The amount of money to ask for.
---@param message string? # An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
---@param callbackSuccess function? # Optional function to call if request succeeds. Args (string: The request message, player: The money sender, number: The amount)
---@param callbackFailure function? # Optional function to call if request fails. Args (string: why it failed)
---@param receiver Player? # The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
function darkrp.requestMoney(sender, amount, message, callbackSuccess, callbackFailure, receiver) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Toggle the state of the F4 menu (open or closed). Equivalent to pressing F4 (or running gm_showspare2).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L787).
function darkrp.toggleF4Menu() end

