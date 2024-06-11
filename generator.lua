local json = require("json")
local compileLibraries = require("compile/libraries")
local compileTypes = require("compile/types")
local compileHooks = require("compile/hooks")

local exportPath = arg[1] or "export/"
print("Exporting to: " .. exportPath)

os.execute("mkdir -p " .. exportPath .. "libraries/")
os.execute("mkdir -p " .. exportPath .. "types/")
os.execute("mkdir -p " .. exportPath .. "hooks/")

local url = "https://raw.githubusercontent.com/thegrb93/StarfallEx/gh-pages/sf_doc.json"
print("Fetching documentation from: " .. url)

local handle, errmsg = io.popen("curl -s " .. url)
if not handle then
	error(errmsg)
	return
end

local docsContents = handle:read("*a")
handle:close()

if not docsContents or docsContents == "" then
	error("No content")
	return
end

docsContents = json.decode(docsContents)

function GetSorted(tbl)
	local temp = {}
	for name, value in pairs(tbl) do
		table.insert(temp, { name = name, value = value })
	end
	table.sort(temp, function(a, b)
		return a.name < b.name
	end)
	return temp
end

function OpenOutputFile(name, type)
	local file = io.open(exportPath .. type .. "/" .. name .. ".lua", "w")
	if not file then
		error("Could not open file " .. type .. "/" .. name .. ".lua", 2)
	end

	file:write("---@meta\n\n")
	return file
end

function WriteSource(file, src)
	file:write("--- View [source](https://github.com/thegrb93/StarfallEx/blob/master/lua/starfall/" .. src .. ").\n")
end

function WriteRealm(file, realm)
	file:write(
		"--- ![](https://github.com/Periapsises/Starfall-LLS/blob/generator/resources/" .. realm .. ".png?raw=true)\n"
	)
end

local starfallLibraries = GetSorted(docsContents.Libraries)
local starfallTypes = GetSorted(docsContents.Types)
local starfallHooks = GetSorted(docsContents.Hooks)

print("Compiling " .. #starfallLibraries .. " libraries")
compileLibraries(starfallLibraries)

print("Compiling " .. #starfallTypes .. " types")
compileTypes(starfallTypes)

print("Compiling " .. #starfallHooks .. " hooks")
compileHooks(starfallHooks)
