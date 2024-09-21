local fs = require("bee.filesystem")
local furi = require("file-uri")

local function findFileInSubfolders(path, name)
	for file in fs.pairs(path) do
		if fs.is_directory(file) then
			local foundPath = findFileInSubfolders(file, name)
			if foundPath then
				return foundPath
			end
		elseif file:filename():string() == name then
			return file:string()
		end
	end
end

---@param uri string
---@param name string
---@return string[]?
function ResolveRequire(uri, name)
	local workspace = fs.path(furi.decode(uri))
	local path = findFileInSubfolders(workspace, name)

	if path then
		return { furi.encode(path) }
	end
end
