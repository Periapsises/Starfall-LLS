---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- File functions. Allows modification of files.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L23).
file = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Appends a string to the end of a file.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L299).
---@param path string # Filepath relative to data/sf_filedata/.
---@param data string # String that will be appended to the file.
function file.append(path, data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a file asynchronously. Can only read 'sf_file_asyncmax' files at a time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L213).
---@param path string # Filepath relative to data/sf_filedata/.
---@param callback function # A callback function for when the read operation finishes. It has 3 arguments: `filename` string, `status` number and `data` string
function file.asyncRead(path, callback) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Creates a directory.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L362).
---@param path string # Filepath relative to data/sf_filedata/.
function file.createDir(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Deletes a file.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L331).
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean? # True if successful, nil if it wasn't found
function file.delete(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Deletes a temp file.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L344).
---@param filename string # The temp file name. Must be only a file and not a path
---@return boolean? # True if successful, nil if it wasn't found
function file.deleteTemp(filename) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Checks if a file exists.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L313).
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean? # True if exists, false if not, nil if error
function file.exists(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns the path of a temp file if it exists. Otherwise returns nil.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L283).
---@param filename string # The temp file name. Must be only a file and not a path
---@return string? # The path to the temp file or nil if it doesn't exist
function file.existsTemp(filename) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Enumerates a directory.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L370).
---@param path string # The folder to enumerate, relative to data/sf_filedata/.
---@param sorting string? # Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
---@return table # Table of file names
---@return table # Table of directory names
function file.find(path, sorting) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Enumerates a directory relative to gmod.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L382).
---@param path string # The folder to enumerate, relative to garrysmod.
---@param sorting string? # Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
---@return table # Table of file names
---@return table # Table of directory names
function file.findInGame(path, sorting) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Checks if a given file is a directory or not.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L322).
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean # True if given path is a directory, false if it's a file
function file.isDir(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Opens and returns a file.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L180).
---@param path string # Filepath relative to data/sf_filedata/.
---@param mode string # The file mode to use. See lua manual for explanation
---@return File? # File object or nil if it failed
function file.open(path, mode) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a file from path.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L195).
---@param path string # Filepath relative to data/sf_filedata/.
---@return string? # Contents, or nil if error
function file.read(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a file from path relative to base GMod directory.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L204).
---@param path string # Filepath relative to GarrysMod/garrysmod/.
---@return string? # Contents or nil if error
function file.readInGame(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Reads a temp file's data if it exists. Otherwise returns nil.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L250).
---@param filename string # The temp file name. Must be only a file and not a path
---@return string? # The data of the temp file or nil if it doesn't exist
function file.readTemp(filename) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Returns when the file or folder was last modified in Unix time.
--- Can then be used with something like os.date for a human-readable date.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L394).
---@param path string # Filepath relative to data/sf_filedata/.
---@return number # Last modified time in Unix time
function file.time(path) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes to a file. Throws an error if it failed to write.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L234).
---@param path string # Filepath relative to data/sf_filedata/.
---@param data string # The data to write
function file.write(path, data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/client.png?raw=true)
--- Writes a temporary file. Throws an error if it is unable to.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_cl/file.lua#L263).
---@param filename string # The name to give the file. Must be only a file and not a path
---@param data string # The data to write
---@return string # The generated path for your temp file
function file.writeTemp(filename, data) end
