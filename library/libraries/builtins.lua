---@meta

---@type boolean
CLIENT = nil
---@type boolean
SERVER = nil

--- Sets the chip's display name
---@param name string # Name to set the chip's name to
function setName(name) end

--- Restarts a chip owned by yourself.
--- Only restarts the realm that this gets called in.
---@param chip Entity? # The chip to restart. If nil, it will restart the current chip.
function restart(chip) end

--- Returns the entity representing a processor that this script is running on.
---@return Entity # Starfall chip entity
function chip() end

--- Gets an SF type's methods table
---@param sfType string # Name of SF type
---@return table # Table of the type's methods which can be edited or iterated
function getMethods(sfType) end

--- Returns the local player's camera position
---@return Vector # The local player's camera position
function eyePos() end

--- Returns the current count for this Think's CPU Time.
--- This value increases as more executions are done, may not be exactly as you want.
--- If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
---@return number # Current cpu time used this Think
function cpuUsed() end

--- Returns if the given input is a number
---@param x any # Input to check
---@return boolean # If the object is a number or not
function isnumber(x) end

--- Creates a new websocket object.
--- Add onMessage, onConnected, onDisconnected functions for callbacks.
--- Also see the websocket example.
---@param domain string # Domain of the websocket server.
---@param port number? # Port of the websocket server. (Default 443)
---@param secure boolean? # Whether to use secure connection (wss). (Default false)
---@param path string? # Optional path of the websocket.
---@return WebSocket # The websocket object. Use WebSocket:connect() to connect.
function WebSocket(domain, port, secure, path) end

--- Setups request for overriding permissions.
---@param perms table # Table of overridable permissions' names.
---@param desc string # Description attached to request.
---@param showOnUse boolean # Whether request will popup when player uses chip or linked screen.
function setupPermissionRequest(perms, desc, showOnUse) end

--- Returns a new VMatrix
---@param t table|Angle|nil # Optional data or rotation angle to initialize the Matrix with.
---@param v Vector? # Optional translation to initialize the Matrix with.
---@return VMatrix # New VMatrix
function Matrix(t, v) end

--- Translates the specified position and angle from the specified local coordinate system
---@param localPos Vector # The position vector that should be translated to world coordinates
---@param localAng Angle # The angle that should be converted to a world angle
---@param originPos Vector # The origin point of the source coordinate system, in world coordinates
---@param originAngle Angle # The angles of the source coordinate system, as a world angle
---@return Vector # worldPos
---@return Angle # worldAngles
function localToWorld(localPos, localAng, originPos, originAngle) end

--- Is permission request fully satisfied.
---@return boolean # Whether the client gave all permissions specified in last request or not.
function permissionRequestSatisfied() end

--- Gets all libraries
---@return table # Table where each key is the library name and value is table of the library
function getLibraries() end

--- Prints a message to a target player's chat as long as they're connected to a hud.
---@param ply Player # The target player. If in CLIENT, then ply is the client player and this param is omitted
---@param ... any # Values to print. Colors before text will set the text color
function printHud(ply, ...) end

--- Sets the current instance to allow HUD drawing. Only works if player is in your vehicle or
--- if it's ran on yourself or if the player is connected to your hud and you want to disconnect them
---@param ply Player # The player to enable the hud on. If CLIENT, will be forced to player()
---@param active boolean # Whether hud hooks should be active. true to force on, false to force off.
function enableHud(ply, active) end

--- Returns if the given input is a string
---@param x any # Input to check
---@return boolean # If the object is a string or not
function isstring(x) end

--- Returns a string representing the name of the type of the passed object.
---@param obj any # Object to get type of
---@return string # The name of the object's type.
function type(obj) end

--- Returns the next key and value pair in a table.
---@param tbl table # Table to get the next key-value pair of
---@param k any # Previous key (can be nil)
---@return any # Key or nil
---@return any # Value or nil
function next(tbl, k) end

--- Returns an iterator function for a for loop that will return the values of the specified table in an arbitrary order.
---@param tbl table # Table to iterate over
---@return function # Iterator function
---@return table # Table being iterated over
---@return any # Nil as current index (for the constructor)
function pairs(tbl) end

--- Returns an iterator function for a for loop, to return ordered key-value pairs from a table.
---@param tbl table # Table to iterate over
---@return function # Iterator function
---@return table # Table being iterated over
---@return number # Origin index. Equals 0.
function ipairs(tbl) end

--- Returns the metatable of an object or nil.
--- Doesn't work on most internal metatables.
--- For any types other than table, nil will be returned.
---@param tbl any # Table to get metatable of
---@return table? # The metatable of tbl
function getmetatable(tbl) end

--- Sets, changes or removes a table's metatable. Doesn't work on most internal metatables
---@param tbl table # The table to set the metatable of
---@param meta table # The metatable to use
---@return table # tbl with metatable set to meta
function setmetatable(tbl, meta) end

--- Lua's getfenv
--- Returns the environment of either the stack level or the function specified.
--- Note that this function will return nil if the return value would be anything other than builtins_library or an environment you have passed to setfenv.
---@param funcOrStackLevel function|number # Function or stack level to get the environment of
---@return table? # Environment table (or nil, if restricted)
function getfenv(funcOrStackLevel) end

--- Lua's setfenv
--- Sets the environment of either the stack level or the function specified.
--- Note that this function will throw an error if you try to use it on anything outside of your sandbox.
---@param funcOrStackLevel function|number # Function or stack level to set the environment of
---@param tbl table # New environment
---@return function # Function with environment set to tbl
function setfenv(funcOrStackLevel, tbl) end

--- Gets the value of a table index without invoking a metamethod
---@param table table # The table to get the value from
---@param key any # The index of the table
---@return any # The value of the index
function rawget(table, key) end

--- Set the value of a table index without invoking a metamethod
---@param tbl table # The table to modify
---@param key any # The index of the table
---@param value any # The value to set the index equal to
function rawset(tbl, key, value) end

--- Translates the specified position and angle into the specified coordinate system
---@param pos Vector # The position that should be translated from the current to the new system
---@param ang Angle # The angles that should be translated from the current to the new system
---@param newSystemOrigin Vector # The origin of the system to translate to
---@param newSystemAngles Angle # The angles of the system to translate to
---@return Vector # localPos
---@return Angle # localAngles
function worldToLocal(pos, ang, newSystemOrigin, newSystemAngles) end

--- Prints a message to your chat, console, or the center of your screen.
---@param mtype number # How the message should be displayed. See http://wiki.facepunch.com/gmod/Enums/HUD
---@param text string # The message text.
function printMessage(mtype, text) end

--- This function takes a numeric indexed table and return all the members as a vararg.
---@param tbl table # Table to get elements out of
---@param startIndex number? # Which index to start from (default 1)
---@param endIndex number? # Which index to end at (default #tbl)
---@return ... # Elements of tbl
function unpack(tbl, startIndex, endIndex) end

--- Used to select single values from a vararg or get the count of values in it.
---@param parameter any #
---@param ... any # Args to select from
---@return any # Returns a number or vararg, depending on the select method.
function select(parameter, ...) end

--- Attempts to convert the value to a number.
---@param obj any # Object to turn into a number
---@return number? # The object as a number or nil if it couldn't be converted
function tonumber(obj) end

--- Attempts to convert the value to a string.
---@param obj any # Object to turn into a string
---@return string # Object as a string
function tostring(obj) end

--- Throws an error. Similar to 'throw' but throws whatever you want instead of an SF Error.
---@param msg string # Message string
---@param level number? # Which level in the stacktrace to blame. Defaults to 1. 0 for no stacktrace.
function error(msg, level) end

--- Creates a table struct that resembles a Color
---@param number any # |string? r Red component or string hexadecimal color. Defaults to 255.
---@param g number? # Green component. Defaults to 255.
---@param b number? # Blue component. Defaults to 255.
---@param a number? # Alpha component. Defaults to 255.
---@return Color # New color
function Color(number, g, b, a) end

--- Lua's xpcall with SF throw implementation, and a traceback for debugging.
--- Attempts to call the first function. If the execution succeeds, this returns true followed by the returns of the function.
--- If execution fails, this returns false and the second function is called with the error message, and the stack trace.
---@param func function # The function to call initially.
---@param callback function # The function to be called if execution of the first fails; the error message and stack trace are passed.
---@param ... any # Varargs to pass to the initial function.
---@return boolean # Status of the execution; true for success, false for failure.
---@return ... # The returns of the first function if execution succeeded, otherwise the return values of the error callback.
function xpcall(func, callback, ...) end

--- Gets the CPU Time max.
--- CPU Time is stored in a buffer of N elements, if the average of this exceeds cpuMax, the chip will error.
---@return number # Max SysTime allowed to take for execution of the chip in a Think.
function cpuMax() end

--- Like Lua 5.2 or LuaJIT's load/loadstring, except it has no mode parameter and, of course, the resulting function is in your instance's environment by default.
--- For compatibility with older versions of Starfall, loadstring is NOT an alias of this function like it is in vanilla Lua 5.2/LuaJIT.
---@param code string # String to compile
---@param identifier string? # Name of compiled function
---@param env table? # Environment of compiled function
---@return function? # Compiled function, or nil if failed to compile
---@return string? # Error string, or nil if successfully compiled
function loadstring(code, identifier, env) end

--- Runs an included script, but does not cache the result.
--- Pretty much like standard Lua dofile()
---@param path string # The file path to include. Make sure to --@include it
---@return ... # Return value(s) of the script
function dofile(path) end

--- Returns the entity with index 'num'
---@param num number # Entity index
---@return Entity # Entity at the index
function entity(num) end

--- Prints a message to the player's chat.
---@param ... any # Values to print. Colors before text will set the text color
function print(...) end

--- Generates the CRC checksum of the specified string. (https://en.wikipedia.org/wiki/Cyclic_redundancy_check)
---@param stringToHash string # The string to calculate the checksum of
---@return string # The unsigned 32 bit checksum as a string
function crc(stringToHash) end

--- Sets the chip's userdata that the duplicator tool saves. max 1MiB; can be changed with convar sf_userdata_max
---@param str string # String data
function setUserdata(str) end

--- Sets clipboard text. Only works on the owner of the chip.
---@param txt string # Text to set to the clipboard
function setClipboardText(txt) end

--- Returns if the given input is a function
---@param x any # Input to check
---@return boolean # If the object is a function or not
function isfunction(x) end

--- Throws an exception
---@param msg string # Message string
---@param level number? # Which level in the stacktrace to blame. Defaults to 1
---@param uncatchable boolean? # Makes this exception uncatchable
function throw(msg, level, uncatchable) end

--- Prints a table to player's chat
---@param tbl table # Table to print
function printTable(tbl) end

--- Gets the Average CPU Time in the buffer
---@return number # Average CPU Time of the buffer.
function cpuAverage() end

--- Returns the local player's camera angles
---@return Angle # The local player's camera angles
function eyeAngles() end

--- Same as owner() on the server. On the client, returns the local player
---@param num number? # UserID to get the player with.
---@return Player # Returns player with given UserID or if none specified then returns either the owner (server) or the local player (client)
function player(num) end

--- Gets the starfall version
---@return string # Starfall version
function version() end

--- Gets the chip's userdata that the duplicator tool loads
---@return string # String data
function getUserdata() end

--- Sets the chip's display author
---@param author string # Author to set the chip's author to
function setAuthor(author) end

--- Prints a message to the player's console.
---@param ... any # Values to print. Colors before text will set the text color
function printConsole(...) end

--- Returns the total used time for all chips by the player.
---@return number # Total used CPU time of all your chips.
function cpuTotalUsed() end

--- Sets the chip to allow other chips to view its sources
---@param enable boolean # If true, allow sharing scripts
function shareScripts(enable) end

--- Returns the total average time for all chips by the player.
---@return number # Total average CPU Time of all your chips.
function cpuTotalAverage() end

--- Checks if the chip is capable of performing an action.
---@param perm string # The permission id to check
---@param obj any # Optional object to pass to the permission system.
---@return boolean # Whether the client has granted the specified permission.
---@return string # The reason the permission check failed
function hasPermission(perm, obj) end

--- Gets the current ram usage of the gmod lua environment
---@return number # The ram used in kilobytes
function ramUsed() end

--- Try to execute a function and catch possible exceptions
--- Similar to xpcall, but a bit more in-depth
---@param func function # Function to execute
---@param catch function? # Optional function to execute in case func fails
function try(func, catch) end

--- Gets the moving average of ram usage of the gmod lua environment
---@return number # The ram used in kilobytes
function ramAverage() end

--- Creates a Vector2 struct for use with wire xv2 type
---@param x number? # X value
---@param y number? # Y value
---@return Vector2 # Vector2
function Vector2(x, y) end

--- Lua's pcall with SF throw implementation
--- Calls a function and catches an error that can be thrown while the execution of the call.
---@param func function # Function to be executed and of which the errors should be caught of
---@param ... any # Arguments to call the function with.
---@return boolean # If the function had no errors occur within it.
---@return ... # If an error occurred, this will be a string containing the error message. Otherwise, this will be the return values of the function passed in.
function pcall(func, ...) end

--- Gets the max allowed ram usage of the gmod lua environment
---@return number # The max ram usage in kilobytes
function ramMax() end

--- Creates a Vector struct.
---@param x number? # X value
---@param y number? # Y value
---@param z number? # Z value
---@return Vector # Vector
function Vector(x, y, z) end

--- Returns whoever created the chip
---@return Player # Owner of the chip
function owner() end

--- Runs an included script and caches the result.
--- The path must be an actual path, including the file extension and using slashes for directory separators instead of periods.
---@param path string # The file path to include. Make sure to --@include it
---@return any # Return value of the script
function require(path) end

--- Opens the permission request dialogue if the player is connected to HUD. setupPermissionRequest must be called first
function sendPermissionRequest() end

--- Runs all included scripts in a directory and caches the results.
--- The path must be an actual path, including the file extension and using slashes for directory separators instead of periods.
---@param path string # The directory to include. Make sure to --@includedir it
---@param loadpriority table # Table of files that should be loaded before any others in the directory
---@return table # Table of return values of the scripts
function requiredir(path, loadpriority) end

--- Creates a Quaternion
---@param r number? # R (real) component
---@param i number? # I component
---@param j number? # J component
---@param k number? # K component
---@return Quaternion # Quaternion object
function Quaternion(r, i, j, k) end

--- Returns if the table has an isValid function and isValid returns true.
---@param object any # Table to check
---@return boolean # If it is valid
function isValid(object) end

--- Returns the source code of and compiled functions for the scripts used by the chip.
---@param ent Entity? # Optional target entity. Default: chip()
---@return table # Table where keys are paths and values are strings
---@return table? # Table where keys are paths and values are functions, or nil if another chip was specified
function getScripts(ent) end

--- Runs all included scripts in directory, but does not cache the result.
---@param path string # The directory to include. Make sure to --@includedir it
---@param loadpriority table # Table of files that should be loaded before any others in the directory
---@return table # Table of return values of the scripts
function dodir(path, loadpriority) end

--- Sets a soft cpu quota which will trigger a catchable error if the cpu goes over a certain amount.
---@param quota number # The threshold where the soft error will be thrown. Ratio of current cpu to the max cpu usage. 0.5 is 50%
function setSoftQuota(quota) end

--- Returns if the given input is a table
---@param x any # Input to check
---@return boolean # If the object is a table or not
function istable(x) end

--- Creates a 'middleclass' class object that can be used similarly to Java/C++ classes. See https://github.com/kikito/middleclass for examples.
---@param name string # The string name of the class
---@param super table? # The (optional) parent class to inherit from
function class(name, super) end

--- Returns the source code of and compiled function for specified script.
---@param path string # Path of file. Can be absolute or relative to calling file. Must be '--@include'-ed.
---@return string? # Source code, or nil if could not be found
---@return function? # Compiled function, or nil if could not be found
function getScript(path) end

--- If the result of the first argument is false or nil, an error is thrown with the second argument as the message.
---@param expression any # Anything that will be evaluated to be true or false
---@param msg string? # Error message. Default "assertion failed!"
---@param ... any # Any arguments to return if the assertion is successful
function assert(expression, msg, ...) end

--- Creates an Angle struct.
---@param p number? # Pitch
---@param y number? # Yaw
---@param r number? # Roll
---@return Angle # Angle struct
function Angle(p, y, r) end

--- Execute a console command
---@param cmd string # Command to execute
function concmd(cmd) end

--- Returns if the given input is a boolean
---@param x any # Input to check
---@return boolean # If the object is a boolean or not
function isbool(x) end

--- Returns the local player's camera forward vector
---@return Vector # The local player's camera forward vector
function eyeVector() end

--- Returns if this is the first time this hook was predicted.
---@return boolean # Whether this is the first time this hook was predicted
function isFirstTimePredicted() end

STENCIL = {}
---@type number
STENCIL["NEVER"] = nil
---@type number
STENCIL["LESS"] = nil
---@type number
STENCIL["EQUAL"] = nil
---@type number
STENCIL["LESSEQUAL"] = nil
---@type number
STENCIL["GREATER"] = nil
---@type number
STENCIL["NOTEQUAL"] = nil
---@type number
STENCIL["GREATEREQUAL"] = nil
---@type number
STENCIL["ALWAYS"] = nil
---@type number
STENCIL["KEEP"] = nil
---@type number
STENCIL["ZERO"] = nil
---@type number
STENCIL["REPLACE"] = nil
---@type number
STENCIL["INCRSAT"] = nil
---@type number
STENCIL["DECRSAT"] = nil
---@type number
STENCIL["INVERT"] = nil
---@type number
STENCIL["INCR"] = nil
---@type number
STENCIL["DECR"] = nil

COLLISION_GROUP = {}
---@type number
COLLISION_GROUP["NONE"] = nil
---@type number
COLLISION_GROUP["DEBRIS"] = nil
---@type number
COLLISION_GROUP["DEBRIS_TRIGGER"] = nil
---@type number
COLLISION_GROUP["INTERACTIVE_DEBRIS"] = nil
---@type number
COLLISION_GROUP["INTERACTIVE"] = nil
---@type number
COLLISION_GROUP["PLAYER"] = nil
---@type number
COLLISION_GROUP["BREAKABLE_GLASS"] = nil
---@type number
COLLISION_GROUP["VEHICLE"] = nil
---@type number
COLLISION_GROUP["PLAYER_MOVEMENT"] = nil
---@type number
COLLISION_GROUP["NPC"] = nil
---@type number
COLLISION_GROUP["IN_VEHICLE"] = nil
---@type number
COLLISION_GROUP["WEAPON"] = nil
---@type number
COLLISION_GROUP["VEHICLE_CLIP"] = nil
---@type number
COLLISION_GROUP["PROJECTILE"] = nil
---@type number
COLLISION_GROUP["DOOR_BLOCKER"] = nil
---@type number
COLLISION_GROUP["PASSABLE_DOOR"] = nil
---@type number
COLLISION_GROUP["DISSOLVING"] = nil
---@type number
COLLISION_GROUP["PUSHAWAY"] = nil
---@type number
COLLISION_GROUP["NPC_ACTOR"] = nil
---@type number
COLLISION_GROUP["NPC_SCRIPTED"] = nil
---@type number
COLLISION_GROUP["WORLD"] = nil

RENDERFX = {}
---@type number
RENDERFX["NONE"] = nil
---@type number
RENDERFX["PULSESLOW"] = nil
---@type number
RENDERFX["PULSEFAST"] = nil
---@type number
RENDERFX["PULSESLOWWIDE"] = nil
---@type number
RENDERFX["PULSEFASTWIDE"] = nil
---@type number
RENDERFX["FADESLOW"] = nil
---@type number
RENDERFX["FADEFAST"] = nil
---@type number
RENDERFX["SOLIDSLOW"] = nil
---@type number
RENDERFX["SOLIDFAST"] = nil
---@type number
RENDERFX["STROBESLOW"] = nil
---@type number
RENDERFX["STROBEFAST"] = nil
---@type number
RENDERFX["STROBEFASTER"] = nil
---@type number
RENDERFX["FLICKERSLOW"] = nil
---@type number
RENDERFX["FLICKERFAST"] = nil
---@type number
RENDERFX["NODISSIPATION"] = nil
---@type number
RENDERFX["DISTORT"] = nil
---@type number
RENDERFX["HOLOGRAM"] = nil
---@type number
RENDERFX["EXPLODE"] = nil
---@type number
RENDERFX["GLOWSHELL"] = nil
---@type number
RENDERFX["CLAMPMINSCALE"] = nil
---@type number
RENDERFX["RAIN"] = nil
---@type number
RENDERFX["SNOW"] = nil
---@type number
RENDERFX["SPOTLIGHT"] = nil
---@type number
RENDERFX["RAGDOLL"] = nil
---@type number
RENDERFX["PULSEFASTWIDER"] = nil

BLENDFUNC = {}
---@type number
BLENDFUNC["ADD"] = nil
---@type number
BLENDFUNC["SUBTRACT"] = nil
---@type number
BLENDFUNC["REVERSE_SUBTRACT"] = nil
---@type number
BLENDFUNC["MIN"] = nil
---@type number
BLENDFUNC["MAX"] = nil

SIM = {}
---@type number
SIM["NOTHING"] = nil
---@type number
SIM["LOCAL_ACCELERATION"] = nil
---@type number
SIM["LOCAL_FORCE"] = nil
---@type number
SIM["GLOBAL_ACCELERATION"] = nil
---@type number
SIM["GLOBAL_FORCE"] = nil

CONTENTS = {}
---@type number
CONTENTS["CURRENT_270"] = nil
---@type number
CONTENTS["DETAIL"] = nil
---@type number
CONTENTS["IGNORE_NODRAW_OPAQUE"] = nil
---@type number
CONTENTS["BLOCKLOS"] = nil
---@type number
CONTENTS["GRATE"] = nil
---@type number
CONTENTS["CURRENT_0"] = nil
---@type number
CONTENTS["AREAPORTAL"] = nil
---@type number
CONTENTS["DEBRIS"] = nil
---@type number
CONTENTS["MONSTERCLIP"] = nil
---@type number
CONTENTS["SLIME"] = nil
---@type number
CONTENTS["WINDOW"] = nil
---@type number
CONTENTS["LADDER"] = nil
---@type number
CONTENTS["CURRENT_180"] = nil
---@type number
CONTENTS["TRANSLUCENT"] = nil
---@type number
CONTENTS["EMPTY"] = nil
---@type number
CONTENTS["TEAM2"] = nil
---@type number
CONTENTS["CURRENT_UP"] = nil
---@type number
CONTENTS["TESTFOGVOLUME"] = nil
---@type number
CONTENTS["TEAM1"] = nil
---@type number
CONTENTS["AUX"] = nil
---@type number
CONTENTS["CURRENT_DOWN"] = nil
---@type number
CONTENTS["ORIGIN"] = nil
---@type number
CONTENTS["TEAM3"] = nil
---@type number
CONTENTS["MOVEABLE"] = nil
---@type number
CONTENTS["PLAYERCLIP"] = nil
---@type number
CONTENTS["SOLID"] = nil
---@type number
CONTENTS["TEAM4"] = nil
---@type number
CONTENTS["MONSTER"] = nil
---@type number
CONTENTS["HITBOX"] = nil
---@type number
CONTENTS["CURRENT_90"] = nil
---@type number
CONTENTS["OPAQUE"] = nil
---@type number
CONTENTS["WATER"] = nil

MATERIAL_FOG = {}
---@type number
MATERIAL_FOG["NONE"] = nil
---@type number
MATERIAL_FOG["LINEAR"] = nil
---@type number
MATERIAL_FOG["LINEAR_BELOW_FOG_Z"] = nil

MATERIAL = {}
---@type number
MATERIAL["LINES"] = nil
---@type number
MATERIAL["LINE_LOOP"] = nil
---@type number
MATERIAL["LINE_STRIP"] = nil
---@type number
MATERIAL["POINTS"] = nil
---@type number
MATERIAL["POLYGON"] = nil
---@type number
MATERIAL["QUADS"] = nil
---@type number
MATERIAL["TRIANGLES"] = nil
---@type number
MATERIAL["TRIANGLE_STRIP"] = nil

MASK = {}
---@type number
MASK["OPAQUE_AND_NPCS"] = nil
---@type number
MASK["SOLID"] = nil
---@type number
MASK["OPAQUE"] = nil
---@type number
MASK["PLAYERSOLID_BRUSHONLY"] = nil
---@type number
MASK["BLOCKLOS"] = nil
---@type number
MASK["SHOT_HULL"] = nil
---@type number
MASK["ALL"] = nil
---@type number
MASK["VISIBLE"] = nil
---@type number
MASK["NPCWORLDSTATIC"] = nil
---@type number
MASK["DEADSOLID"] = nil
---@type number
MASK["SPLITAREAPORTAL"] = nil
---@type number
MASK["CURRENT"] = nil
---@type number
MASK["BLOCKLOS_AND_NPCS"] = nil
---@type number
MASK["SHOT"] = nil
---@type number
MASK["NPCSOLID"] = nil
---@type number
MASK["SOLID_BRUSHONLY"] = nil
---@type number
MASK["VISIBLE_AND_NPCS"] = nil
---@type number
MASK["NPCSOLID_BRUSHONLY"] = nil
---@type number
MASK["SHOT_PORTAL"] = nil
---@type number
MASK["WATER"] = nil
---@type number
MASK["PLAYERSOLID"] = nil

BLEND = {}
---@type number
BLEND["ZERO"] = nil
---@type number
BLEND["ONE"] = nil
---@type number
BLEND["DST_COLOR"] = nil
---@type number
BLEND["ONE_MINUS_DST_COLOR"] = nil
---@type number
BLEND["SRC_ALPHA"] = nil
---@type number
BLEND["ONE_MINUS_SRC_ALPHA"] = nil
---@type number
BLEND["DST_ALPHA"] = nil
---@type number
BLEND["ONE_MINUS_DST_ALPHA"] = nil
---@type number
BLEND["SRC_ALPHA_SATURATE"] = nil
---@type number
BLEND["SRC_COLOR"] = nil
---@type number
BLEND["ONE_MINUS_SRC_COLOR"] = nil

MAT = {}
---@type number
MAT["ANTLION"] = nil
---@type number
MAT["BLOODYFLESH"] = nil
---@type number
MAT["CONCRETE"] = nil
---@type number
MAT["DIRT"] = nil
---@type number
MAT["EGGSHELL"] = nil
---@type number
MAT["FLESH"] = nil
---@type number
MAT["GRATE"] = nil
---@type number
MAT["ALIENFLESH"] = nil
---@type number
MAT["CLIP"] = nil
---@type number
MAT["SNOW"] = nil
---@type number
MAT["PLASTIC"] = nil
---@type number
MAT["METAL"] = nil
---@type number
MAT["SAND"] = nil
---@type number
MAT["FOLIAGE"] = nil
---@type number
MAT["COMPUTER"] = nil
---@type number
MAT["SLOSH"] = nil
---@type number
MAT["TILE"] = nil
---@type number
MAT["GRASS"] = nil
---@type number
MAT["VENT"] = nil
---@type number
MAT["WOOD"] = nil
---@type number
MAT["DEFAULT"] = nil
---@type number
MAT["GLASS"] = nil
---@type number
MAT["WARPSHIELD"] = nil

FSASYNC = {}
---@type number
FSASYNC["ERR_NOT_MINE"] = nil
---@type number
FSASYNC["ERR_RETRY_LATER"] = nil
---@type number
FSASYNC["ERR_ALIGNMENT"] = nil
---@type number
FSASYNC["ERR_FAILURE"] = nil
---@type number
FSASYNC["ERR_READING"] = nil
---@type number
FSASYNC["ERR_NOMEMORY"] = nil
---@type number
FSASYNC["ERR_UNKNOWNID"] = nil
---@type number
FSASYNC["ERR_FILEOPEN"] = nil
---@type number
FSASYNC["OK"] = nil
---@type number
FSASYNC["STATUS_PENDING"] = nil
---@type number
FSASYNC["STATUS_INPROGRESS"] = nil
---@type number
FSASYNC["STATUS_ABORTED"] = nil
---@type number
FSASYNC["STATUS_UNSERVICED"] = nil

GESTURE_SLOT = {}
---@type number
GESTURE_SLOT["ATTACK_AND_RELOAD"] = nil
---@type number
GESTURE_SLOT["GRENADE"] = nil
---@type number
GESTURE_SLOT["JUMP"] = nil
---@type number
GESTURE_SLOT["SWIM"] = nil
---@type number
GESTURE_SLOT["FLINCH"] = nil
---@type number
GESTURE_SLOT["VCD"] = nil
---@type number
GESTURE_SLOT["CUSTOM"] = nil

TEXFILTER = {}
---@type number
TEXFILTER["NONE"] = nil
---@type number
TEXFILTER["POINT"] = nil
---@type number
TEXFILTER["LINEAR"] = nil
---@type number
TEXFILTER["ANISOTROPIC"] = nil

IN_KEY = {}
---@type number
IN_KEY["ALT1"] = nil
---@type number
IN_KEY["ALT2"] = nil
---@type number
IN_KEY["ATTACK"] = nil
---@type number
IN_KEY["ATTACK2"] = nil
---@type number
IN_KEY["BACK"] = nil
---@type number
IN_KEY["DUCK"] = nil
---@type number
IN_KEY["FORWARD"] = nil
---@type number
IN_KEY["JUMP"] = nil
---@type number
IN_KEY["LEFT"] = nil
---@type number
IN_KEY["MOVELEFT"] = nil
---@type number
IN_KEY["MOVERIGHT"] = nil
---@type number
IN_KEY["RELOAD"] = nil
---@type number
IN_KEY["RIGHT"] = nil
---@type number
IN_KEY["SCORE"] = nil
---@type number
IN_KEY["SPEED"] = nil
---@type number
IN_KEY["USE"] = nil
---@type number
IN_KEY["WALK"] = nil
---@type number
IN_KEY["ZOOM"] = nil
---@type number
IN_KEY["GRENADE1"] = nil
---@type number
IN_KEY["GRENADE2"] = nil
---@type number
IN_KEY["WEAPON1"] = nil
---@type number
IN_KEY["WEAPON2"] = nil
---@type number
IN_KEY["BULLRUSH"] = nil
---@type number
IN_KEY["CANCEL"] = nil
---@type number
IN_KEY["RUN"] = nil

BOX = {}
---@type number
BOX["FRONT"] = nil
---@type number
BOX["BACK"] = nil
---@type number
BOX["RIGHT"] = nil
---@type number
BOX["LEFT"] = nil
---@type number
BOX["TOP"] = nil
---@type number
BOX["BOTTOM"] = nil

MOVETYPE = {}
---@type number
MOVETYPE["NONE"] = nil
---@type number
MOVETYPE["ISOMETRIC"] = nil
---@type number
MOVETYPE["WALK"] = nil
---@type number
MOVETYPE["STEP"] = nil
---@type number
MOVETYPE["FLY"] = nil
---@type number
MOVETYPE["FLYGRAVITY"] = nil
---@type number
MOVETYPE["VPHYSICS"] = nil
---@type number
MOVETYPE["PUSH"] = nil
---@type number
MOVETYPE["NOCLIP"] = nil
---@type number
MOVETYPE["LADDER"] = nil
---@type number
MOVETYPE["OBSERVER"] = nil
---@type number
MOVETYPE["CUSTOM"] = nil

GMOD_CHANNEL = {}
---@type number
GMOD_CHANNEL["STOPPED"] = nil
---@type number
GMOD_CHANNEL["PLAYING"] = nil
---@type number
GMOD_CHANNEL["PAUSED"] = nil
---@type number
GMOD_CHANNEL["STALLED"] = nil

DAMAGE = {}
---@type number
DAMAGE["GENERIC"] = nil
---@type number
DAMAGE["CRUSH"] = nil
---@type number
DAMAGE["BULLET"] = nil
---@type number
DAMAGE["SPLASH"] = nil
---@type number
DAMAGE["BURN"] = nil
---@type number
DAMAGE["VEHICLE"] = nil
---@type number
DAMAGE["FALL"] = nil
---@type number
DAMAGE["BLAST"] = nil
---@type number
DAMAGE["CLUB"] = nil
---@type number
DAMAGE["SHOCK"] = nil
---@type number
DAMAGE["SONIC"] = nil
---@type number
DAMAGE["ENERGYBEAM"] = nil
---@type number
DAMAGE["PREVENTPHYSICSFORCE"] = nil
---@type number
DAMAGE["NEVERGIB"] = nil
---@type number
DAMAGE["ALWAYSGIB"] = nil
---@type number
DAMAGE["DROWN"] = nil
---@type number
DAMAGE["PARALYZE"] = nil
---@type number
DAMAGE["NERVEGAS"] = nil
---@type number
DAMAGE["POISON"] = nil
---@type number
DAMAGE["RADIATION"] = nil
---@type number
DAMAGE["DROWNRECOVER"] = nil
---@type number
DAMAGE["ACID"] = nil
---@type number
DAMAGE["SLOWBURN"] = nil
---@type number
DAMAGE["REMOVENORAGDOLL"] = nil
---@type number
DAMAGE["PHYSGUN"] = nil
---@type number
DAMAGE["PLASMA"] = nil
---@type number
DAMAGE["AIRBOAT"] = nil
---@type number
DAMAGE["DISSOLVE"] = nil
---@type number
DAMAGE["BLASTSURFACE"] = nil
---@type number
DAMAGE["DIRECT"] = nil
---@type number
DAMAGE["BUCKSHOT"] = nil
---@type number
DAMAGE["SNIPER"] = nil
---@type number
DAMAGE["MISSILEDEFENSE"] = nil

MOUSE = {}
---@type number
MOUSE["MOUSE1"] = nil
---@type number
MOUSE["LEFT"] = nil
---@type number
MOUSE["MOUSE2"] = nil
---@type number
MOUSE["RIGHT"] = nil
---@type number
MOUSE["MOUSE3"] = nil
---@type number
MOUSE["MIDDLE"] = nil
---@type number
MOUSE["MOUSE4"] = nil
---@type number
MOUSE["4"] = nil
---@type number
MOUSE["MOUSE5"] = nil
---@type number
MOUSE["5"] = nil
---@type number
MOUSE["MWHEELUP"] = nil
---@type number
MOUSE["WHEEL_UP"] = nil
---@type number
MOUSE["MWHEELDOWN"] = nil
---@type number
MOUSE["WHEEL_DOWN"] = nil
---@type number
MOUSE["COUNT"] = nil
---@type number
MOUSE["FIRST"] = nil
---@type number
MOUSE["LAST"] = nil

EF = {}
---@type number
EF["BONEMERGE"] = nil
---@type number
EF["BONEMERGE_FASTCULL"] = nil
---@type number
EF["BRIGHTLIGHT"] = nil
---@type number
EF["DIMLIGHT"] = nil
---@type number
EF["NOINTERP"] = nil
---@type number
EF["NOSHADOW"] = nil
---@type number
EF["NODRAW"] = nil
---@type number
EF["NORECEIVESHADOW"] = nil
---@type number
EF["ITEM_BLINK"] = nil
---@type number
EF["PARENT_ANIMATES"] = nil
---@type number
EF["FOLLOWBONE"] = nil

NOTIFY = {}
---@type number
NOTIFY["GENERIC"] = nil
---@type number
NOTIFY["ERROR"] = nil
---@type number
NOTIFY["UNDO"] = nil
---@type number
NOTIFY["HINT"] = nil
---@type number
NOTIFY["CLEANUP"] = nil

PATTACH = {}
---@type number
PATTACH["ABSORIGIN"] = nil
---@type number
PATTACH["ABSORIGIN_FOLLOW"] = nil
---@type number
PATTACH["CUSTOMORIGIN"] = nil
---@type number
PATTACH["POINT"] = nil
---@type number
PATTACH["POINT_FOLLOW"] = nil
---@type number
PATTACH["WORLDORIGIN"] = nil

KEY = {}
---@type number
KEY["FIRST"] = nil
---@type number
KEY["NONE"] = nil
---@type number
KEY["0"] = nil
---@type number
KEY["KEY0"] = nil
---@type number
KEY["1"] = nil
---@type number
KEY["KEY1"] = nil
---@type number
KEY["2"] = nil
---@type number
KEY["KEY2"] = nil
---@type number
KEY["3"] = nil
---@type number
KEY["KEY3"] = nil
---@type number
KEY["4"] = nil
---@type number
KEY["KEY4"] = nil
---@type number
KEY["5"] = nil
---@type number
KEY["KEY5"] = nil
---@type number
KEY["6"] = nil
---@type number
KEY["KEY6"] = nil
---@type number
KEY["7"] = nil
---@type number
KEY["KEY7"] = nil
---@type number
KEY["8"] = nil
---@type number
KEY["KEY8"] = nil
---@type number
KEY["9"] = nil
---@type number
KEY["KEY9"] = nil
---@type number
KEY["A"] = nil
---@type number
KEY["B"] = nil
---@type number
KEY["C"] = nil
---@type number
KEY["D"] = nil
---@type number
KEY["E"] = nil
---@type number
KEY["F"] = nil
---@type number
KEY["G"] = nil
---@type number
KEY["H"] = nil
---@type number
KEY["I"] = nil
---@type number
KEY["J"] = nil
---@type number
KEY["K"] = nil
---@type number
KEY["L"] = nil
---@type number
KEY["M"] = nil
---@type number
KEY["N"] = nil
---@type number
KEY["O"] = nil
---@type number
KEY["P"] = nil
---@type number
KEY["Q"] = nil
---@type number
KEY["R"] = nil
---@type number
KEY["S"] = nil
---@type number
KEY["T"] = nil
---@type number
KEY["U"] = nil
---@type number
KEY["V"] = nil
---@type number
KEY["W"] = nil
---@type number
KEY["X"] = nil
---@type number
KEY["Y"] = nil
---@type number
KEY["Z"] = nil
---@type number
KEY["KP_INS"] = nil
---@type number
KEY["PAD_0"] = nil
---@type number
KEY["KP_END"] = nil
---@type number
KEY["PAD_1"] = nil
---@type number
KEY["KP_DOWNARROW"] = nil
---@type number
KEY["PAD_2"] = nil
---@type number
KEY["KP_PGDN"] = nil
---@type number
KEY["PAD_3"] = nil
---@type number
KEY["KP_LEFTARROW"] = nil
---@type number
KEY["PAD_4"] = nil
---@type number
KEY["KP_5"] = nil
---@type number
KEY["PAD_5"] = nil
---@type number
KEY["KP_RIGHTARROW"] = nil
---@type number
KEY["PAD_6"] = nil
---@type number
KEY["KP_HOME"] = nil
---@type number
KEY["PAD_7"] = nil
---@type number
KEY["KP_UPARROW"] = nil
---@type number
KEY["PAD_8"] = nil
---@type number
KEY["KP_PGUP"] = nil
---@type number
KEY["PAD_9"] = nil
---@type number
KEY["PAD_DIVIDE"] = nil
---@type number
KEY["KP_SLASH"] = nil
---@type number
KEY["KP_MULTIPLY"] = nil
---@type number
KEY["PAD_MULTIPLY"] = nil
---@type number
KEY["KP_MINUS"] = nil
---@type number
KEY["PAD_MINUS"] = nil
---@type number
KEY["KP_PLUS"] = nil
---@type number
KEY["PAD_PLUS"] = nil
---@type number
KEY["KP_ENTER"] = nil
---@type number
KEY["PAD_ENTER"] = nil
---@type number
KEY["KP_DEL"] = nil
---@type number
KEY["PAD_DECIMAL"] = nil
---@type number
KEY["LBRACKET"] = nil
---@type number
KEY["RBRACKET"] = nil
---@type number
KEY["SEMICOLON"] = nil
---@type number
KEY["APOSTROPHE"] = nil
---@type number
KEY["BACKQUOTE"] = nil
---@type number
KEY["COMMA"] = nil
---@type number
KEY["PERIOD"] = nil
---@type number
KEY["SLASH"] = nil
---@type number
KEY["BACKSLASH"] = nil
---@type number
KEY["MINUS"] = nil
---@type number
KEY["EQUAL"] = nil
---@type number
KEY["ENTER"] = nil
---@type number
KEY["SPACE"] = nil
---@type number
KEY["BACKSPACE"] = nil
---@type number
KEY["TAB"] = nil
---@type number
KEY["CAPSLOCK"] = nil
---@type number
KEY["NUMLOCK"] = nil
---@type number
KEY["ESCAPE"] = nil
---@type number
KEY["SCROLLLOCK"] = nil
---@type number
KEY["INS"] = nil
---@type number
KEY["INSERT"] = nil
---@type number
KEY["DEL"] = nil
---@type number
KEY["DELETE"] = nil
---@type number
KEY["HOME"] = nil
---@type number
KEY["END"] = nil
---@type number
KEY["PGUP"] = nil
---@type number
KEY["PAGEUP"] = nil
---@type number
KEY["PGDN"] = nil
---@type number
KEY["PAGEDOWN"] = nil
---@type number
KEY["PAUSE"] = nil
---@type number
KEY["BREAK"] = nil
---@type number
KEY["SHIFT"] = nil
---@type number
KEY["LSHIFT"] = nil
---@type number
KEY["RSHIFT"] = nil
---@type number
KEY["ALT"] = nil
---@type number
KEY["LALT"] = nil
---@type number
KEY["RALT"] = nil
---@type number
KEY["CTRL"] = nil
---@type number
KEY["LCONTROL"] = nil
---@type number
KEY["RCTRL"] = nil
---@type number
KEY["RCONTROL"] = nil
---@type number
KEY["LWIN"] = nil
---@type number
KEY["RWIN"] = nil
---@type number
KEY["APP"] = nil
---@type number
KEY["UPARROW"] = nil
---@type number
KEY["UP"] = nil
---@type number
KEY["LEFTARROW"] = nil
---@type number
KEY["LEFT"] = nil
---@type number
KEY["DOWNARROW"] = nil
---@type number
KEY["DOWN"] = nil
---@type number
KEY["RIGHTARROW"] = nil
---@type number
KEY["RIGHT"] = nil
---@type number
KEY["F1"] = nil
---@type number
KEY["F2"] = nil
---@type number
KEY["F3"] = nil
---@type number
KEY["F4"] = nil
---@type number
KEY["F5"] = nil
---@type number
KEY["F6"] = nil
---@type number
KEY["F7"] = nil
---@type number
KEY["F8"] = nil
---@type number
KEY["F9"] = nil
---@type number
KEY["F10"] = nil
---@type number
KEY["F11"] = nil
---@type number
KEY["F12"] = nil
---@type number
KEY["CAPSLOCKTOGGLE"] = nil
---@type number
KEY["NUMLOCKTOGGLE"] = nil
---@type number
KEY["SCROLLLOCKTOGGLE"] = nil
---@type number
KEY["LAST"] = nil
---@type number
KEY["COUNT"] = nil

HITGROUP = {}
---@type number
HITGROUP["GENERIC"] = nil
---@type number
HITGROUP["HEAD"] = nil
---@type number
HITGROUP["CHEST"] = nil
---@type number
HITGROUP["STOMACH"] = nil
---@type number
HITGROUP["LEFTARM"] = nil
---@type number
HITGROUP["RIGHTARM"] = nil
---@type number
HITGROUP["LEFTLEG"] = nil
---@type number
HITGROUP["RIGHTLEG"] = nil
---@type number
HITGROUP["GEAR"] = nil

FVPHYSICS = {}
---@type number
FVPHYSICS["CONSTRAINT_STATIC"] = nil
---@type number
FVPHYSICS["DMG_DISSOLVE"] = nil
---@type number
FVPHYSICS["DMG_SLICE"] = nil
---@type number
FVPHYSICS["HEAVY_OBJECT"] = nil
---@type number
FVPHYSICS["MULTIOBJECT_ENTITY"] = nil
---@type number
FVPHYSICS["NO_IMPACT_DMG"] = nil
---@type number
FVPHYSICS["NO_NPC_IMPACT_DMG"] = nil
---@type number
FVPHYSICS["NO_PLAYER_PICKUP"] = nil
---@type number
FVPHYSICS["NO_SELF_COLLISIONS"] = nil
---@type number
FVPHYSICS["PART_OF_RAGDOLL"] = nil
---@type number
FVPHYSICS["PENETRATING"] = nil
---@type number
FVPHYSICS["PLAYER_HELD"] = nil
---@type number
FVPHYSICS["WAS_THROWN"] = nil

FSOLID = {}
---@type number
FSOLID["CUSTOMRAYTEST"] = nil
---@type number
FSOLID["CUSTOMBOXTEST"] = nil
---@type number
FSOLID["NOT_SOLID"] = nil
---@type number
FSOLID["TRIGGER"] = nil
---@type number
FSOLID["NOT_STANDABLE"] = nil
---@type number
FSOLID["VOLUME_CONTENTS"] = nil
---@type number
FSOLID["FORCE_WORLD_ALIGNED"] = nil
---@type number
FSOLID["USE_TRIGGER_BOUNDS"] = nil
---@type number
FSOLID["ROOT_PARENT_ALIGNED"] = nil
---@type number
FSOLID["TRIGGER_TOUCH_DEBRIS"] = nil

SOLID = {}
---@type number
SOLID["NONE"] = nil
---@type number
SOLID["BSP"] = nil
---@type number
SOLID["BBOX"] = nil
---@type number
SOLID["OBB"] = nil
---@type number
SOLID["OBB_YAW"] = nil
---@type number
SOLID["CUSTOM"] = nil
---@type number
SOLID["VPHYSICS"] = nil

TEXT_ALIGN = {}
---@type number
TEXT_ALIGN["LEFT"] = nil
---@type number
TEXT_ALIGN["CENTER"] = nil
---@type number
TEXT_ALIGN["RIGHT"] = nil
---@type number
TEXT_ALIGN["TOP"] = nil
---@type number
TEXT_ALIGN["BOTTOM"] = nil

RENDERMODE = {}
---@type number
RENDERMODE["NORMAL"] = nil
---@type number
RENDERMODE["TRANSCOLOR"] = nil
---@type number
RENDERMODE["TRANSTEXTURE"] = nil
---@type number
RENDERMODE["GLOW"] = nil
---@type number
RENDERMODE["TRANSALPHA"] = nil
---@type number
RENDERMODE["TRANSADD"] = nil
---@type number
RENDERMODE["ENVIROMENTAL"] = nil
---@type number
RENDERMODE["TRANSADDFRAMEBLEND"] = nil
---@type number
RENDERMODE["TRANSALPHADD"] = nil
---@type number
RENDERMODE["WORLDGLOW"] = nil
---@type number
RENDERMODE["NONE"] = nil
