---@meta

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Http library. Requests content from urls.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L12).
http = {}

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts data from base64 format.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L248).
---@param data string # The data to convert
---@return string # The converted data
function http.base64Decode(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts data into base64 format or nil if the string is 0 length.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L235).
---@param data string # The data to convert
---@return string # The converted data
function http.base64Encode(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Checks if a new http request can be started.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L33).
---@return boolean # If an HTTP get/post request can be made
function http.canRequest() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs a new http GET request.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L51).
---@param url string # Http target url
---@param callbackSuccess function # The function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
---@param callbackFail function? # The function to be called on request fail, taking the failing reason as an argument
---@param headers table? # GET headers to be sent
function http.get(url, callbackSuccess, callbackFail, headers) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets how many get/post operations are currently in progress.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L39).
---@return number # The current amount of active HTTP get/post requests
function http.getActiveRequests() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Gets how many get/post operations can be in progress at the same time.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L45).
---@return number # Maximum amount of concurrent active HTTP get/post requests
function http.getMaximumRequests() end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs a new http POST request.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L77).
---@param url string # Http target url
---@param payload table? # Optional POST payload to be sent, can be both table and string. When table is used, the request body is encoded as application/x-www-form-urlencoded
---@param callbackSuccess function? # Optional function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
---@param callbackFail function? # Optional function to be called on request fail, taking the failing reason as an argument
---@param headers table? # Optional POST headers to be sent
function http.post(url, payload, callbackSuccess, callbackFail, headers) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Runs a new http request. Wraps HTTP() directly. Official documentation for each parameter can be found here: https://wiki.facepunch.com/gmod/Structures/HTTPRequest.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L152).
---@param url string # The target url
---@param method string # Request method, case insensitive. Possible values are: GET, POST, HEAD, PUT, DELETE, PATCH, OPTIONS
---@param success function? # Function to be called on success, taking arguments code (number), body (string), and headers (table)
---@param failed function? # Function to be called on failure, taking argument reason (string)
---@param body string? # Body string for POST data. If set, will override parameters
---@param parameters table? # KeyValue table for URL parameters. This is only applicable to the following request methods: GET, POST (sent in body, so if body is set, parameters are ignored), and HEAD
---@param type string? # Content type for body. (Default: "text/plain; charset=utf-8")
---@param headers table? # KeyValue table for headers
---@param timeout number? # The timeout for the connection. Clamped between [0.1, 300]. (Default: 60)
function http.request(url, method, success, failed, body, parameters, type, headers, timeout) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Decodes the % escaped chars in a url.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L267).
---@param data string # The data to convert
---@return string # The converted data
function http.urlDecode(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a regular dropbox url to a raw one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L291).
---@param url string # The url to convert
---@return string # The converted url
function http.urlDropboxToRaw(url) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Encodes illegal url characters to be legal.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L255).
---@param data string # The data to convert
---@return string # The converted data
function http.urlEncode(data) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a github file url to a raw one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L301).
---@param url string # The url to convert
---@return string # The converted url
function http.urlGithubToRaw(url) end

--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/shared.png?raw=true)
--- Converts a simple google drive url to a raw one.
--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/libs_sh/http.lua#L281).
---@param url string # The url to convert
---@return string # The converted url
function http.urlGoogleDriveToRaw(url) end
