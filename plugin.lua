local fs = require("bee.filesystem")
local furi = require("file-uri")

---@param uri string
---@param name string
---@param suri string
---@return string[]?
function ResolveRequire(uri, name, suri)
	if not suri then return end

    local sourcePath = fs.path(furi.decode(suri))

    local relativePath = sourcePath:parent_path() / name
    if fs.exists(relativePath) and not fs.is_directory(relativePath) then
        return { furi.encode(relativePath:string()) }
    end

    local starfallRoot = sourcePath
    local foundRoot = false

    while true do
        if starfallRoot:filename():string() == "starfall" then
            foundRoot = true
            break
        end

        local parent = starfallRoot:parent_path()
        if not parent or parent == starfallRoot then
            break
        end

        starfallRoot = parent
    end

    if not foundRoot then return end

    local absolutePath = starfallRoot / name
    if fs.exists(absolutePath) and not fs.is_directory(absolutePath) then
        return { furi.encode(absolutePath:string()) }
    end
end
