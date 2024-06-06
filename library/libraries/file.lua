---@meta

file = {}

--- Reads a file asynchronously. Can only read 'sf_file_asyncmax' files at a time
---@param path string # Filepath relative to data/sf_filedata/.
---@param callback function # A callback function for when the read operation finishes. It has 3 arguments: `filename` string, `status` number and `data` string
function file.asyncRead(path, callback) end

--- Appends a string to the end of a file
---@param path string # Filepath relative to data/sf_filedata/.
---@param data string # String that will be appended to the file.
function file.append(path, data) end

--- Reads a temp file's data if it exists. Otherwise returns nil
---@param filename string # The temp file name. Must be only a file and not a path
---@return string? # The data of the temp file or nil if it doesn't exist
function file.readTemp(filename) end

--- Reads a file from path
---@param path string # Filepath relative to data/sf_filedata/.
---@return string? # Contents, or nil if error
function file.read(path) end

--- Reads a file from path relative to base GMod directory
---@param path string # Filepath relative to GarrysMod/garrysmod/.
---@return string? # Contents or nil if error
function file.readInGame(path) end

--- Enumerates a directory relative to gmod
---@param path string # The folder to enumerate, relative to garrysmod.
---@param sorting string? # Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
---@return table # Table of file names
---@return table # Table of directory names
function file.findInGame(path, sorting) end

--- Enumerates a directory
---@param path string # The folder to enumerate, relative to data/sf_filedata/.
---@param sorting string? # Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
---@return table # Table of file names
---@return table # Table of directory names
function file.find(path, sorting) end

--- Returns the path of a temp file if it exists. Otherwise returns nil
---@param filename string # The temp file name. Must be only a file and not a path
---@return string? # The path to the temp file or nil if it doesn't exist
function file.existsTemp(filename) end

--- Checks if a given file is a directory or not
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean # True if given path is a directory, false if it's a file
function file.isDir(path) end

--- Creates a directory
---@param path string # Filepath relative to data/sf_filedata/.
function file.createDir(path) end

--- Opens and returns a file
---@param path string # Filepath relative to data/sf_filedata/.
---@param mode string # The file mode to use. See lua manual for explanation
---@return File? # File object or nil if it failed
function file.open(path, mode) end

--- Returns when the file or folder was last modified in Unix time.
--- Can then be used with something like os.date for a human-readable date.
---@param path string # Filepath relative to data/sf_filedata/.
---@return number # Last modified time in Unix time
function file.time(path) end

--- Deletes a file
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean? # True if successful, nil if it wasn't found
function file.delete(path) end

--- Checks if a file exists
---@param path string # Filepath relative to data/sf_filedata/.
---@return boolean? # True if exists, false if not, nil if error
function file.exists(path) end

--- Writes to a file. Throws an error if it failed to write
---@param path string # Filepath relative to data/sf_filedata/.
---@param data string # The data to write
function file.write(path, data) end

--- Writes a temporary file. Throws an error if it is unable to.
---@param filename string # The name to give the file. Must be only a file and not a path
---@param data string # The data to write
---@return string # The generated path for your temp file
function file.writeTemp(filename, data) end

