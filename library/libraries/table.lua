---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua table library https://wiki.garrysmod.com/page/Category:table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L4).
table = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Adds the contents from one table into another. The target table will be modified.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L14).
---@param target table # The table to insert the new values into
---@param source table # The table to retrieve the values from
---@return table # The target table
function table.add(target, source) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the string address of the table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L21).
---@param target table # The target to get the address of
---@return string # The table's string address
function table.address(target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Changes all keys to sequential integers. This creates a new table object and does not affect the original.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L29).
---@param tbl table # The original table to modify
---@param saveKeys boolean? # Optional save the keys within each member table. This will insert a new field __key into each value, and should not be used if the table contains non-table values. Defaults to false
---@return table # Table with integer keys
function table.clearKeys(tbl, saveKeys) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Collapses a table with keyvalue structure.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L36).
---@param tbl table # The input table
---@return table # Output table
function table.collapseKeyValue(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Concatenates the contents of a table to a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L42).
---@param tbl table # The table to concatenate
---@param concatenator string # A seperator to insert between each string
---@param startPos number? # Optional key to start at. Defaults to 1
---@param endPos number? # Optional key to end at. Defaults to #tbl
---@return string # Concatenated string
function table.concat(tbl, concatenator, startPos, endPos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Creates a deep copy and returns that copy. This function does NOT copy userdata, such as Vectors and Angles!.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L214).
---@param tbl table # The table to be copied
---@return table # A deep copy of the original table
function table.copy(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Empties the target table, and merges all values from the source table into it.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L51).
---@param source table # The table to copy from
---@param target table # The table to write to
function table.copyFromTo(source, target) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed, for those table consider # operator.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L57).
---@param tbl table # The table to count the keys of
---@return number # The number of keyvalue pairs
function table.count(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes all values from a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L63).
---@param tbl table # The table to empty
function table.empty(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Inserts a value in to the given table even if the table is non-existent.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L68).
---@param tbl table # Table to insert value in to. If not supplied, will create a table
---@param val any # Value to insert
---@return table # The supplied or created table
function table.forceInsert(tbl, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns all keys of a table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L75).
---@param tbl table # The table to get keys of
---@return table # Table of keys
function table.getKeys(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a key of the supplied table with the highest number value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L81).
---@param tbl table # The table to search in
---@return any # Winning key
function table.getWinningKey(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a table has a value. This function is very inefficient for large tables (O(n)).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L87).
---@param tbl table # Table to check
---@param val any # Value to search for
---@return boolean # Returns true if the table has that value, false otherwise
function table.hasValue(tbl, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Copies any missing data from base to target, and sets the target's BaseClass member to the base table's pointer.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L100).
---@param target table # Table to copy data to
---@param base table # Table to copy data from
---@return table # The target table
function table.inherit(target, base) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Inserts a value into a table at the end of the table or at the given position.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L107).
---@param tbl table # The table to insert the variable into
---@param pos any # The position in the table to insert the variable. If the third argument is not provided, this argument becomes the value to insert at the end of given table
---@param val any # The variable to insert into the table
---@return number # The index the variable was placed at.
function table.insert(tbl, pos, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a table contains any value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L94).
---@param tbl table # Table to check
---@return boolean # Returns true if the table contains any value, false otherwise
function table.isEmpty(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns whether or not the table's keys are sequential.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L115).
---@param tbl table # Table to check
---@return boolean # True if sequential
function table.isSequential(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the first key found to be containing the supplied value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L121).
---@param tbl table # Table to search
---@param val any # Value to search for
---@return any # Found key
function table.keyFromValue(tbl, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a table of keys containing the supplied value.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L128).
---@param tbl table # Table to search
---@param val any # Value to search for
---@return table # Table of keys
function table.keysFromValue(tbl, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a copy of the input table with all string keys converted to be lowercase recursively.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L135).
---@param tbl table # Table to convert
---@return table # New converted table
function table.lowerKeyNames(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the highest numerical key.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L141).
---@param tbl table # The table to search
---@return number # The highest numerical key
function table.maxn(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Merges the contents of the second table with the content in the first one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L241).
---@param dest table # The table you want the source table to merge with
---@param source table # The table you want to merge with the destination table
---@return table # Destination table
function table.merge(dest, source) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a random value from the supplied table.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L147).
---@param tbl table # The table to choose from
---@return any # A random value from the table
---@return any # The key associated with the random value
function table.random(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes a value from a table and shifts any other values down to fill the gap.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L154).
---@param tbl table # The table to remove the value from
---@param index number? # Optional index of the value to remove. Defaults to #tbl
---@return any # The value that was removed
function table.remove(tbl, index) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L161).
---@param tbl table # The table that will be searched
---@param val any # The value to find within the table
---@return any # The key at which the value was found, or false if the value was not found
function table.removeByValue(tbl, val) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L168).
---@param tbl table # Table to reverse
---@return table # A reversed copy of the table
function table.reverse(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Performs an inline Fisher-Yates shuffle on the table in O(n) time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L174).
---@param tbl table # Table to shuffle
function table.shuffle(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sorts a table either ascending or by the given sort function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L179).
---@param tbl table # The table to sort
---@param sorter function? # If specified, the function will be called with 2 parameters each. Return true in this function if you want the first parameter to come first in the sorted array
function table.sort(tbl, sorter) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a list of keys sorted based on values of those keys.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L188).
---@param tbl table # Table to sort. All values of this table must be of same type
---@param descending boolean? # Optional, should the order be descending? Defaults to false
function table.sortByKey(tbl, descending) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sorts a table by a named member.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L194).
---@param tbl table # Table to sort
---@param member any # The key used to identify the member
---@param ascending boolean? # Optional, should be ascending? Defaults to false
function table.sortByMember(tbl, member, ascending) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sorts a table in reverse order from table.sort.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L201).
---@param tbl table # The table to sort in descending order
---@return table # Sorted table
function table.sortDesc(tbl) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a table into a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/table.lua#L207).
---@param tbl table # The table to iterate over
---@param displayName string? # Optional name for the table
---@param niceFormatting boolean? # Optional, adds new lines and tabs to the string. Defaults to false
function table.toString(tbl, displayName, niceFormatting) end

