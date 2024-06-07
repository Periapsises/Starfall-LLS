---@meta

table = {}

--- Returns the first key found to be containing the supplied value.
---@param tbl table # Table to search
---@param val any # Value to search for
---@return any # Found key
function table.keyFromValue(tbl, val) end

--- Returns the string address of the table
---@param target table # The target to get the address of
---@return string # The table's string address
function table.address(target) end

--- Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied
---@param tbl table # Table to reverse
---@return table # A reversed copy of the table
function table.reverse(tbl) end

--- Copies any missing data from base to target, and sets the target's BaseClass member to the base table's pointer.
---@param target table # Table to copy data to
---@param base table # Table to copy data from
---@return table # The target table
function table.inherit(target, base) end

--- Sorts a table by a named member.
---@param tbl table # Table to sort
---@param member any # The key used to identify the member
---@param ascending boolean? # Optional, should be ascending? Defaults to false
function table.sortByMember(tbl, member, ascending) end

--- Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed, for those table consider # operator
---@param tbl table # The table to count the keys of
---@return number # The number of keyvalue pairs
function table.count(tbl) end

--- Returns a list of keys sorted based on values of those keys.
---@param tbl table # Table to sort. All values of this table must be of same type
---@param descending boolean? # Optional, should the order be descending? Defaults to false
function table.sortByKey(tbl, descending) end

--- Adds the contents from one table into another. The target table will be modified.
---@param target table # The table to insert the new values into
---@param source table # The table to retrieve the values from
---@return table # The target table
function table.add(target, source) end

--- Creates a deep copy and returns that copy. This function does NOT copy userdata, such as Vectors and Angles!
---@param tbl table # The table to be copied
---@return table # A deep copy of the original table
function table.copy(tbl) end

--- Returns a random value from the supplied table.
---@param tbl table # The table to choose from
---@return any # A random value from the table
---@return any # The key associated with the random value
function table.random(tbl) end

--- Returns a copy of the input table with all string keys converted to be lowercase recursively.
---@param tbl table # Table to convert
---@return table # New converted table
function table.lowerKeyNames(tbl) end

--- Removes a value from a table and shifts any other values down to fill the gap.
---@param tbl table # The table to remove the value from
---@param index number? # Optional index of the value to remove. Defaults to #tbl
---@return any # The value that was removed
function table.remove(tbl, index) end

--- Changes all keys to sequential integers. This creates a new table object and does not affect the original.
---@param tbl table # The original table to modify
---@param saveKeys boolean? # Optional save the keys within each member table. This will insert a new field __key into each value, and should not be used if the table contains non-table values. Defaults to false
---@return table # Table with integer keys
function table.clearKeys(tbl, saveKeys) end

--- Converts a table into a string
---@param tbl table # The table to iterate over
---@param displayName string? # Optional name for the table
---@param niceFormatting boolean? # Optional, adds new lines and tabs to the string. Defaults to false
function table.toString(tbl, displayName, niceFormatting) end

--- Empties the target table, and merges all values from the source table into it.
---@param source table # The table to copy from
---@param target table # The table to write to
function table.copyFromTo(source, target) end

--- Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at
---@param tbl table # The table that will be searched
---@param val any # The value to find within the table
---@return any # The key at which the value was found, or false if the value was not found
function table.removeByValue(tbl, val) end

--- Merges the contents of the second table with the content in the first one.
---@param dest table # The table you want the source table to merge with
---@param source table # The table you want to merge with the destination table
---@return table # Destination table
function table.merge(dest, source) end

--- Performs an inline Fisher-Yates shuffle on the table in O(n) time
---@param tbl table # Table to shuffle
function table.shuffle(tbl) end

--- Inserts a value in to the given table even if the table is non-existent
---@param tbl table # Table to insert value in to. If not supplied, will create a table
---@param val any # Value to insert
---@return table # The supplied or created table
function table.forceInsert(tbl, val) end

--- Returns the highest numerical key.
---@param tbl table # The table to search
---@return number # The highest numerical key
function table.maxn(tbl) end

--- Inserts a value into a table at the end of the table or at the given position.
---@param tbl table # The table to insert the variable into
---@param pos any # The position in the table to insert the variable. If the third argument is not provided, this argument becomes the value to insert at the end of given table
---@param val any # The variable to insert into the table
---@return number # The index the variable was placed at.
function table.insert(tbl, pos, val) end

--- Returns all keys of a table
---@param tbl table # The table to get keys of
---@return table # Table of keys
function table.getKeys(tbl) end

--- Checks if a table contains any value.
---@param tbl table # Table to check
---@return boolean # Returns true if the table contains any value, false otherwise
function table.isEmpty(tbl) end

--- Concatenates the contents of a table to a string.
---@param tbl table # The table to concatenate
---@param concatenator string # A seperator to insert between each string
---@param startPos number? # Optional key to start at. Defaults to 1
---@param endPos number? # Optional key to end at. Defaults to #tbl
---@return string # Concatenated string
function table.concat(tbl, concatenator, startPos, endPos) end

--- Sorts a table either ascending or by the given sort function
---@param tbl table # The table to sort
---@param sorter function? # If specified, the function will be called with 2 parameters each. Return true in this function if you want the first parameter to come first in the sorted array
function table.sort(tbl, sorter) end

--- Returns a table of keys containing the supplied value.
---@param tbl table # Table to search
---@param val any # Value to search for
---@return table # Table of keys
function table.keysFromValue(tbl, val) end

--- Collapses a table with keyvalue structure
---@param tbl table # The input table
---@return table # Output table
function table.collapseKeyValue(tbl) end

--- Checks if a table has a value. This function is very inefficient for large tables (O(n)).
---@param tbl table # Table to check
---@param val any # Value to search for
---@return boolean # Returns true if the table has that value, false otherwise
function table.hasValue(tbl, val) end

--- Sorts a table in reverse order from table.sort
---@param tbl table # The table to sort in descending order
---@return table # Sorted table
function table.sortDesc(tbl) end

--- Removes all values from a table
---@param tbl table # The table to empty
function table.empty(tbl) end

--- Returns whether or not the table's keys are sequential.
---@param tbl table # Table to check
---@return boolean # True if sequential
function table.isSequential(tbl) end

--- Returns a key of the supplied table with the highest number value.
---@param tbl table # The table to search in
---@return any # Winning key
function table.getWinningKey(tbl) end
