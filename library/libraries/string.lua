---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Lua string library https://wiki.garrysmod.com/page/Category:string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L4).
string = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the given string's characters in their numeric ASCII representation.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L33).
---@param str string # The string to get the chars from
---@param start number # The first character of the string to get the byte of
---@param _end number # The last character of the string to get the byte of
---@return ... # Vararg numerical bytes
function string.byte(str, start, _end) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Takes the given numerical bytes and converts them to a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L41).
---@param ... any # The bytes to create the string from
---@return string # String built from given bytes
function string.char(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Inserts commas for every third digit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L47).
---@param num number # The number to be separated by commas
---@return string # String with commas inserted
function string.comma(num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the binary bytecode of the given function.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L53).
---@param func function # The function to get the bytecode of
---@param strip boolean? # True to strip the debug data, false to keep it. Defaults to false
---@return string # The bytecode
function string.dump(func, strip) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether or not the second passed string matches the end of the first.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L60).
---@param str string # The string whose end is to be checked
---@param _end string # The string to be matched with the end of the first
---@return boolean # True if the first string ends with the second, or the second is empty
function string.endsWith(str, _end) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sanitizes text to be used in `render.parseMarkup`.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L187).
---@param str string # Text to sanitize
---@return string # Sanitized text
function string.escapeMarkup(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Splits a string up wherever it finds the given separator.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L67).
---@param separator string # The separator that will split the string
---@param str string # The string to split up
---@param patterns boolean? # Set this to true if your separator is a pattern. Defaults to false
---@return table # Table with the separated strings in numerical sequential order
function string.explode(separator, str, patterns) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Attempts to find the specified substring in a string, uses Patterns by default. https://wiki.facepunch.com/gmod/Patterns.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L75).
---@param haystack string # The string to search in
---@param needle string # The string to find, can contain patterns if enabled
---@param start number # The position to start the search from, negative start position will be relative to the end position
---@param noPatterns boolean? # Disable patterns. Defaults to false
---@return number? # Starting position of the found text, or nil if the text wasn't found
---@return number? # Ending position of found text, or nil if the text wasn't found
---@return string? # Matched text for each group if patterns are enabled and used, or nil if the text wasn't found
function string.find(haystack, needle, start, noPatterns) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Formats the specified values into the string given. http://www.cplusplus.com/reference/cstdio/printf/.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L86).
---@param str string # The string to be formatted
---@param ... any # Vararg values to be formatted into the string
---@return string # The formatted string
function string.format(str, ...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the time as a formatted string or table. http://www.cplusplus.com/reference/cstdio/printf/.
--- If format is not specified, the table will contain the following keys: ms (milliseconds); s (seconds); m (minutes); h (hours).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L93).
---@param time number # The time in seconds to format
---@param format string? # An optional formatting to use. If no format it specified, a table will be returned instead
---@return string|table # Formatted string or a table
function string.formattedTime(time, format) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts color to a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L17).
---@param col Color # The color to put in the string
---@return string # String with the color RGBA values separated by spaces
function string.fromColor(col) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns extension of the file-path.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L101).
---@param str string # File-path to get the file extensions from
---@return string # The extension
function string.getExtensionFromFilename(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns file name and extension.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L107).
---@param str string # File-path to get the file extensions from
---@return string # The filename along with it's extension
function string.getFileFromFilename(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the path only from a file's path, excluding the file itself.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L113).
---@param str string # File-path to get the file extensions from
---@return string # The path
function string.getPathFromFilename(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Using Patterns, returns an iterator which will return either one value if no capture groups are defined, or any capture group matches.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L119).
---@param data string # The string to search in
---@param pattern string # The pattern to search for
---@return function # The iterator function that can be used in a for-in loop
function string.gmatch(data, pattern) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- This functions main purpose is to replace certain character sequences in a string using Patterns.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L126).
---@param str string # String which should be modified.
---@param pattern string # The pattern that defines what should be matched and eventually be replaced.
---@param replacement string|table|function # If string: matched sequence will be replaced with it; If table: matched sequence will be used as key; If function: matches will be passed as parameters to the function (return to replace)
---@param max number? # Optional maximum number of replacements to be made
---@return string # String with replaced parts
---@return number # Replacements count
function string.gsub(str, pattern, replacement, max) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L136).
---@param str string # The string that should be escaped
---@return string # The safe string
function string.javascriptSafe(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns everything left of supplied place of that string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L142).
---@param str string # The string to extract from
---@param num number # Amount of chars relative to the beginning (starting from 1)
---@return string # Returns a string containing a specified number of characters from the left side of a string
function string.left(str, num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Counts the number of characters in the string. This is equivalent to using the # operator.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L149).
---@param str string # The string to find the length of
---@return number # Length of the string
function string.len(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Changes any upper-case letters in a string to lower-case letters.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L155).
---@param str string # The string to convert
---@return string # String with all uppercase letters replaced with their lowercase variants
function string.lower(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Finds a Pattern in a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L161).
---@param str string # String which should be searched in for matches
---@param pattern string # The pattern that defines what should be matched
---@param start number? # The start index to start the matching from, negative to start the match from a position relative to the end. Default 1
---@return ... # Vararg matched string(s)
function string.match(str, pattern, start) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a digital filesize to human-readable text.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L169).
---@param size number # The filesize in bytes
---@return string # The human-readable filesize, in Bytes/KB/MB/GB (whichever is appropriate)
function string.niceSize(size) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Formats the supplied number (in seconds) to the highest possible time unit.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L175).
---@param time number # The number to format, in seconds
---@return string # A nicely formatted time string
function string.niceTime(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a path with all .. accounted for.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L329).
---@param str string # Path
---@return string # Path with all .. replaced
function string.normalizePath(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Escapes all special characters within a string, making the string safe for inclusion in a Lua pattern.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L181).
---@param str string # The string to be sanitized
---@return string # The sanitized string
function string.patternSafe(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Repeats the given string n times.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L195).
---@param str string # The string to repeat
---@param rep number # Number of times to repeat the string
---@param sep string? # (Optional) seperator string between each repeated string
---@return string # String result
function string.rep(str, rep, sep) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Replaces all occurrences of the supplied second string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L203).
---@param str string # The string we are seeking to replace an occurrence(s)
---@param find string # What we are seeking to replace
---@param replace string # What to replace find with
---@return string # String with parts replaced
function string.replace(str, find, replace) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Reverses a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L211).
---@param str string # String to be reversed
---@return string # Reversed string
function string.reverse(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the last n-th characters of the string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L217).
---@param str string # The string to extract from
---@param num number # Amount of chars relative to the end (starting from 1)
---@return string # String containing a specified number of characters from the right side of a string
function string.right(str, num) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Sets the character at the specific index of the string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L224).
---@param str string # The input string
---@param index number # The character index, 1 is the first from left
---@param replacement string # String to replace with
---@return string # Modified string
function string.setChar(str, index, replacement) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Splits the string into a table of strings, separated by the second argument.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L232).
---@param str string # String to split
---@param separator string # Character(s) to split with
---@return table # Table with the separated strings in numerical sequential order
function string.split(str, separator) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Whether or not the first string starts with the second.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L239).
---@param str string # String to be checked
---@param start string # String to check with
---@return boolean # True if the first string starts with the second
function string.startsWith(str, start) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes the extension of a path.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L248).
---@param path string # The file-path to change
---@return string # Path without the extension
function string.stripExtension(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns a sub-string, starting from the character at position startPos of the string (inclusive).
--- and optionally ending at the character at position endPos of the string (also inclusive).
--- If EndPos is not given, the rest of the string is returned.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L254).
---@param str string # The string you'll take a sub-string out of
---@param startPos number # The position of the first character that will be included in the sub-string
---@param endPos number? # The position of the last character to be included in the sub-string. It can be negative to count from the end
---@return string # The sub-string
function string.sub(str, startPos, endPos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts string with RGBA values separated by spaces into a color.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L25).
---@param str string # The string to convert from
---@return Color # The color object
function string.toColor(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts time to hours, minutes and seconds string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L276).
---@param time number # Time in seconds
---@return string # Given time in "HH:MM:SS" format
function string.toHoursMinutesSeconds(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts time to hours, minutes, seconds and milliseconds string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L285).
---@param time number # Time in seconds
---@return string # Returns given time in "HH:MM:SS.MS" format
function string.toHoursMinutesSecondsMilliseconds(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts time to minutes and seconds string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L264).
---@param time number # Time in seconds
---@return string # Given time in "MM:SS" format
function string.toMinutesSeconds(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts time to minutes, seconds and milliseconds string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L270).
---@param time number # Time in seconds
---@return string # Returns given time in "MM:SS:MS" format
function string.toMinutesSecondsMilliseconds(time) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Splits the string into characters and creates a sequential table of characters.
--- As a result of the encoding, non-ASCII characters will be split into more than one character in the output table.
--- Each character value in the output table will always be 1 byte.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L294).
---@param str string # The string to turn into a table
---@return table # A sequential table where each value is a character from the given string
function string.toTable(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes leading and trailing spaces/characters of a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L302).
---@param str string # The string to trim
---@param char string? # Optional character to be trimmed. Defaults to space character
---@return string # Trimmed string
function string.trim(str, char) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes leading spaces/characters from a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L309).
---@param str string # The string to trim
---@param char string? # Optional character to be trimmed. Defaults to space character
---@return string # Trimmed string
function string.trimLeft(str, char) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Removes trailing spaces/characters from a string.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L316).
---@param str string # The string to trim
---@param char string # Optional character to be trimmed. Defaults to space character
---@return string # Trimmed string
function string.trimRight(str, char) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Changes any lower-case letters in a string to upper-case letters.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L323).
---@param str string # The string to convert
---@return string # String with all letters upper case
function string.upper(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence.
--- and returns a string with the concatenation of all these sequences.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L337).
---@param ... any # Unicode code points to be converted in to a UTF-8 string
---@return string # UTF-8 string generated from given arguments
function string.utf8char(...) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the codepoints (as numbers) from all characters in the given string that start between byte position startPos and endPos.
--- It raises an error if it meets any invalid byte sequence.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L344).
---@param str string # The string that you will get the code(s) from
---@param startPos number? # The starting byte of the string to get the codepoint of
---@param endPos number? # The ending byte of the string to get the codepoint of
---@return ... # The codepoint number(s)
function string.utf8codepoint(str, startPos, endPos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns an iterator (like string.gmatch) which returns both the position and codepoint of each utf8 character in the string.
--- It raises an error if it meets any invalid byte sequence.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L353).
---@param str string # The string that you will get the codes from
---@return function # The iterator (to be used in a for loop)
function string.utf8codes(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Forces a string to contain only valid UTF-8 data. Invalid sequences are replaced with U+FFFD (the Unicode replacement character).
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L360).
---@param str string # The string that will become a valid UTF-8 string
---@return string # The UTF-8 string
function string.utf8force(str) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the number of UTF-8 sequences in the given string between positions startPos and endPos (both inclusive).
--- If it finds any invalid UTF-8 byte sequence, returns false as well as the position of the first invalid byte.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L366).
---@param str string # The string to calculate the length of
---@param startPos number? # The starting position to get the length from
---@param endPos number? # The ending position to get the length from
---@return number|boolean # The number of UTF-8 characters in the string. If there are invalid bytes, this will be false
---@return number? # The position of the first invalid byte. If there were no invalid bytes, this will be nil
function string.utf8len(str, startPos, endPos) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Returns the byte-index of the n'th UTF-8-character after the given startPos (nil if none).
--- startPos defaults to 1 when n is positive and -1 when n is negative. If n is zero,.
--- this function instead returns the byte-index of the UTF-8-character startPos lies within.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/string.lua#L376).
---@param str string # The string that you will get the byte position from
---@param n number # The position to get the beginning byte position from
---@param startPos number? # The offset for n. Defaults to 1 if n >= 0, otherwise -1
---@return number # Starting byte-index of the given position
function string.utf8offset(str, n, startPos) end
