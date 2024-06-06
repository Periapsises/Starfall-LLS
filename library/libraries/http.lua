---@meta

http = {}

--- Converts a simple google drive url to a raw one
---@param url string # The url to convert
---@return string # The converted url
function http.urlGoogleDriveToRaw(url) end

--- Encodes illegal url characters to be legal
---@param data string # The data to convert
---@return string # The converted data
function http.urlEncode(data) end

--- Converts data into base64 format or nil if the string is 0 length
---@param data string # The data to convert
---@return string # The converted data
function http.base64Encode(data) end

--- Checks if a new http request can be started
---@return boolean # If an HTTP get/post request can be made
function http.canRequest() end

--- Gets how many get/post operations can be in progress at the same time
---@return number # Maximum amount of concurrent active HTTP get/post requests 
function http.getMaximumRequests() end

--- Runs a new http GET request
---@param url string # Http target url
---@param callbackSuccess function # The function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
---@param callbackFail function? # The function to be called on request fail, taking the failing reason as an argument
---@param headers table? # GET headers to be sent
function http.get(url, callbackSuccess, callbackFail, headers) end

--- Gets how many get/post operations are currently in progress
---@return number # The current amount of active HTTP get/post requests
function http.getActiveRequests() end

--- Decodes the % escaped chars in a url
---@param data string # The data to convert
---@return string # The converted data
function http.urlDecode(data) end

--- Converts data from base64 format
---@param data string # The data to convert
---@return string # The converted data
function http.base64Decode(data) end

--- Runs a new http POST request
---@param url string # Http target url
---@param payload table? # Optional POST payload to be sent, can be both table and string. When table is used, the request body is encoded as application/x-www-form-urlencoded
---@param callbackSuccess function? # Optional function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
---@param callbackFail function? # Optional function to be called on request fail, taking the failing reason as an argument
---@param headers table? # Optional POST headers to be sent
function http.post(url, payload, callbackSuccess, callbackFail, headers) end

--- Converts a regular dropbox url to a raw one
---@param url string # The url to convert
---@return string # The converted url
function http.urlDropboxToRaw(url) end

