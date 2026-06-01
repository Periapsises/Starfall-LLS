---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Functions relating to DarkRP. These functions WILL NOT EXIST if DarkRP is not in use.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L582).
darkrp = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can afford the given amount of money. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L983).
---@param ply Player # The player
---@param amount number # The amount of money
---@return boolean # Whether the player can afford it
function darkrp.canAfford(ply, amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether you can give someone money this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L761).
---@return boolean # If you can give someone money
function darkrp.canGiveMoney() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can lock a given door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L992).
---@param ply Player # The player
---@param door Entity # The door
---@return boolean? # Whether the player is allowed to lock the door. May be nil instead of false.
function darkrp.canKeysLock(ply, door) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether the player can unlock a given door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1000).
---@param ply Player # The player
---@param door Entity # The door
---@return boolean? # Whether the player is allowed to unlock the door. May be nil instead of false.
function darkrp.canKeysUnlock(ply, door) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns whether you can make another money request this tick.
--- If a player is provided as a parameter, will also check if you can request money from that particular player this tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L739).
---@param sender Player? # Player you intend to ask for money from later (if nil, will only check your money request rate)
---@return boolean # If you can make another money request
function darkrp.canMakeMoneyRequest(sender) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Close the F1 help menu.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L776).
function darkrp.closeF1Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Close the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L792).
function darkrp.closeF4Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the DarkRP door index of a door. Use this to store door information in the database.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L828).
---@param ent Entity # The door
---@return number? # The door index, or nil if not a door.
function darkrp.doorIndex(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the entity corresponding to a door index. Note: The door MUST have been created by the map!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L655).
---@param doorIndex number # The door index
---@return Entity? # The door entity, or nil if the index is invalid or the door was removed.
function darkrp.doorIndexToEnt(doorIndex) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Format a number as a money value. Includes currency symbol.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L607).
---@param amount number # The money to format, e.g. 100000.
---@return string # The money as a nice string, e.g. "$100,000".
function darkrp.formatMoney(amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the available vehicles that DarkRP supports.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L615).
---@return table # Names, models and classnames of all supported vehicles.
function darkrp.getAvailableVehicles() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get all categories for all F4 menu tabs, including all jobs and every entity available for purchase.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L621).
---@return table # All categories.
function darkrp.getCategories() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get a list of possible shipments.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L640).
---@return table? # A table with the contents of the GLua global "CustomShipments", or nil if it doesn't exist.
function darkrp.getCustomShipments() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the value of a DarkRPVar, which is shared between server and client. Case-sensitive.
--- Possible variables include (but are not limited to): AFK, AFKDemoted, money, salaryRL, rpname, job, HasGunlicense, Arrested, wanted, wantedReason, agenda, zombieToggle, hitTarget, hitPrice, lastHitTime, Energy.
--- For money specifically, you may optionally use Player:getMoney instead.
--- Some variables may be blacklisted so that you can't read their value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1008).
---@param ply Player # The player
---@param var string # The name of the variable.
---@return any # The value of the DarkRP var.
function darkrp.getDarkRPVar(ply, var) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the owner of a door. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L845).
---@param ent Entity # The door
---@return Player? # The owner of the door, or nil if the door is unowned.
function darkrp.getDoorOwner(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get all food items.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L627).
---@return table? # Table with food items, or nil if there are none.
function darkrp.getFoodItems() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the job table of a player. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1021).
---@param ply Player # The player
---@return table # Table with the job information.
function darkrp.getJobTable(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the title of this door or vehicle. DarkRP only.
--- If you don't know what this is referring to, that's because it's not a commonly used feature. Press F2 on a door and click "Set Door Title".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L853).
---@param ent Entity # The door
---@return string? # The title of the door or vehicle, or nil if none is set.
function darkrp.getKeysTitle(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the table of all current laws.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L634).
---@return table # A table of all current laws.
function darkrp.getLaws() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the amount of money this player has. DarkRP only.
--- Equivalent to "ply:getDarkRPVar('money')".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1106).
---@param ply Player # The player
---@return number? # The amount of money, or nil if not accessible.
function darkrp.getMoney(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the amount of money in a "money bag" or cheque, or number of items in a dropped item stack. DarkRP only.
--- Equivalent to GLua Entity:Getamount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L891).
---@param ent Entity # The money
---@return number? # Amount of money or number of items
function darkrp.getMoneyAmount(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get a player's pocket items. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1028).
---@param ply Player # The player
---@return table # A table containing information about the items in the pocket.
function darkrp.getPocketItems(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the info for the contents of the shipment. DarkRP only.
--- Equivalent to "darkrp.getCustomShipments()[ent:getShipmentContentsIndex()]".
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L919).
---@param ent Entity # The shipment
---@return table? # Contents, or nil if not a shipment
function darkrp.getShipmentContents(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the index of the contents of the shipment, which should then be looked up in the output of "darkrp.getCustomShipments". DarkRP only.
--- Equivalent to GLua Entity:Getcontents.
--- You may prefer to use Entity:getShipmentContents instead, although that function is slightly slower.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L909).
---@param ent Entity # The shipment
---@return number? # Index of contents, or nil if not a shipment
function darkrp.getShipmentContentsIndex(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the number of items remaining in a shipment. DarkRP only.
--- Equivalent to GLua Entity:Getcount.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L900).
---@param ent Entity # The shipment
---@return number? # Number of items remaining, or nil if not a shipment
function darkrp.getShipmentCount(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get the reason why someone is wanted. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1035).
---@param ply Player # The player
---@return string? # The reason, or nil if not wanted
function darkrp.getWantedReason(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Give this player money.
--- This is subject to a burst limit. Use the darkrp.canGiveMoney function to check if you can request money that tick.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L954).
---@param ply Player # The player
---@param amount number # The amount of money to give.
function darkrp.giveMoney(ply, amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether the player has a certain DarkRP privilege.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1042).
---@param ply Player # The player
---@return boolean # Whether the player has the privilege.
function darkrp.hasDarkRPPrivilege(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is arrested. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1050).
---@param ply Player # The player
---@return boolean? # Whether this player is arrested. May be nil instead of false.
function darkrp.isArrested(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is part of the police force (Mayor, CP, Chief). DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1071).
---@param ply Player # The player
---@return boolean # Whether this player is a part of the police force.
function darkrp.isCP(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a Chief. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1057).
---@param ply Player # The player
---@return boolean? # Whether this player is a Chief. May be nil instead of false.
function darkrp.isChief(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a cook. DarkRP only. Only works if hungermod is enabled.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1064).
---@param ply Player # The player
---@return boolean? # Whether this player is a cook. May be nil instead of false.
function darkrp.isCook(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether a DarkRPVar is blacklisted from being read by Starfall.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L646).
---@param var string # The name of the variable
---@return boolean # If the variable is blacklisted
function darkrp.isDarkRPVarBlacklisted(var) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this entity is considered a door by DarkRP.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L861).
---@param ent Entity # The entity
---@return boolean # Whether it's a door.
function darkrp.isDoor(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a hitman. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1078).
---@param ply Player # The player
---@return boolean? # Whether this player is a hitman. May be nil instead of false.
function darkrp.isHitman(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Whether this player is in the same room as the LocalPlayer. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L972).
---@param ply Player # The player
---@return boolean # Whether this player is in the same room.
function darkrp.isInRoom(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this door is owned by someone.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L868).
---@param ent Entity # The door
---@return boolean # Whether it's owned.
function darkrp.isKeysOwned(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this door is owned or co-owned by this player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L875).
---@param ent Entity # The door
---@param ply Player # The player to query.
---@return boolean # Whether this door is (co-)owned by the player.
function darkrp.isKeysOwnedBy(ent, ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get whether this door/vehicle is locked. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L836).
---@param ent Entity # The door
---@return boolean # Whether it's locked.
function darkrp.isLocked(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is the Mayor. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1085).
---@param ply Player # The player
---@return boolean? # Whether this player is the Mayor. May be nil instead of false.
function darkrp.isMayor(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is a medic. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1092).
---@param ply Player # The player
---@return boolean? # Whether this player is a medic. May be nil instead of false.
function darkrp.isMedic(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Get whether this entity is a "money bag", i.e. dropped money from a money printer or /dropmoney. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L884).
---@param ent Entity # The entity
---@return boolean # Whether this entity is a money bag.
function darkrp.isMoneyBag(ent) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether this player is wanted. DarkRP only. Use Player:getWantedReason if you want to know the reason.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L1099).
---@param ply Player # The player
---@return boolean? # Whether this player is wanted. May be nil instead of false.
function darkrp.isWanted(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Get the number of jail positions in the current map.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L667).
---@return number # The number of jail positions in the current map.
function darkrp.jailPosCount() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Unown every door and vehicle owned by this player. DarkRP only.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L932).
---@param ply Player # The player
function darkrp.keysUnOwnAll(ply) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns number of times you can give someone money.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 2.
--- In other words, you can give out money two times at once, then you have to wait two seconds. May vary from server to server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L752).
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyGivingsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns number of money requests left.
--- By default, this replenishes at a rate of 1 every 2 seconds, up to a maximum of 1.
--- In other words, you can make a maximum of 1 money request every 2 seconds. May vary from server to server.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L730).
---@return number # Number of money requests able to be created. This could be a decimal, so floor it first
function darkrp.moneyRequestsLeft() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the F1 help menu. Roughly equivalent to pressing F1 (or running gm_showhelp), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L768).
function darkrp.openF1Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the F4 menu (the one where you can choose your job, buy shipments, ammo, money printers, etc). Roughly equivalent to pressing F4 (or running gm_showspare2), but won't close it if it's already open.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L784).
function darkrp.openF4Menu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Buy the door the local player is looking at, or open the menu if it's already bought. Equivalent to pressing F2 (or running gm_showteam).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L808).
function darkrp.openKeysMenu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Open the DarkRP pocket menu. This refers to DarkRP's built-in "pocket", and probably not your server's custom inventory system.
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L816).
function darkrp.openPocketMenu() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Make one player give money to the other player.
--- This is subject to a burst limit. Use "darkrp.canGiveMoney" to check if you can give out money that tick.
--- Only works if the sender is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L674).
---@param sender Player # The player who gives the money.
---@param receiver Player # The player who receives the money.
---@param amount number # The amount of money.
function darkrp.payPlayer(sender, receiver, amount) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Request money from a player.
--- This is subject to a burst limit, and a limit of one money request per sender per receiver at a time. Use "darkrp.canMakeMoneyRequest" to check if you can request money that tick for that player.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L696).
---@param sender Player # The player who may or may not send the money.
---@param amount number # The amount of money to ask for.
---@param message string? # An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
---@param callbackSuccess function? # Optional function to call if request succeeds. Args (string: The request message, player: The money sender, number: The amount)
---@param callbackFailure function? # Optional function to call if request fails. Args (string: why it failed)
---@param receiver Player? # The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
function darkrp.requestMoney(sender, amount, message, callbackSuccess, callbackFailure, receiver) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/server.png?raw=true)
--- Returns the time left on a player's team ban. DarkRP only.
--- Only works if the player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L941).
---@param ply Player # The player
---@param team number? # The number of the job (e.g. TEAM_MEDIC). Uses the player's team if nil.
---@return number? # The time left on the team ban in seconds, or nil if not banned.
function darkrp.teamBanTimeLeft(ply, team) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Toggle the state of the F4 menu (open or closed). Equivalent to pressing F4 (or running gm_showspare2).
--- Only works if the local player is the owner of the chip, or if the chip is running in superuser mode.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/darkrp2.lua#L800).
function darkrp.toggleF4Menu() end
