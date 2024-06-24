-- Takes a link in the form libs_sh/players.lua#L81 used as a path in https://raw.githubusercontent.com/thegrb93/StarfallEx/master/lua/starfall/.
-- Fetches the contents of the file and gets the first line of code after the specified line number.
-- The line of code should be a function call for which the fifth argument is the name of the inherited type.
local function findInheritanceForType( link )
	local url = "https://raw.githubusercontent.com/thegrb93/StarfallEx/master/lua/starfall/" .. link
	local handle = io.popen("curl -s " .. url)
	if not handle then
		error("Failed to fetch " .. url)
	end

	local contents = handle:read("*a")
	handle:close()

	if not contents then
		error("Failed to read " .. url)
	end

	local lines = {}
	for line in contents:gmatch("([^\r\n]*)[\r\n]") do
		lines[#lines + 1] = line
	end

	local lineNum = tonumber(link:match("L(%d+)"))
	if not lineNum then
		error("Failed to parse line number from " .. link)
	end

	for i = lineNum, #lines do
		local line = lines[i]
		if line:find("SF.RegisterType", 1, true) then
			local argText = line:match("SF.RegisterType%(([^\r\n]+)")
			if argText:sub(#argText) == ")" then
				argText = argText:sub(1, #argText - 1)
			end

			local args = {}
			for arg in argText:gmatch("[^, ]+") do
				if arg:sub(1, 1) == "\"" then
					arg = arg:sub(2, #arg - 1)
				end
				args[#args + 1] = arg
			end

			if args[5] and args[5] ~= "nil" then
				return args[5]
			end
		end
	end
end

local function compileType(name, contents)
	local file = OpenOutputFile(name, "types")

	WriteRealm(file, contents.realm)

	for description in contents.description:gmatch("[^\r\n]+") do
		if description:sub(#description) ~= "." then
			--print("Warning: Adding period to end of type description for " .. name)
			description = description .. "."
		end

		file:write("---" .. description .. "\n")
	end

	local inheritance = findInheritanceForType(contents.path)
	if inheritance and inheritance:sub( 1, 6 ) ~= "Locked" then
		file:write("---@class " .. name .. " : " .. inheritance .. "\n")
	else
		file:write("---@class " .. name .. "\n")
	end
	WriteSource(file, contents.path)

	if contents.fields then
		for i = 1, #contents.fields do
			local field = contents.fields[i]

			file:write("---@field " .. field.name .. " " .. (field.type or "any") .. " # " .. field.description .. "\n")
		end
	end

	file:write("local " .. name .. " = {}\n\n")

	local typeMethods = GetSorted(contents.methods)
	for i = 1, #typeMethods do
		local methodName = typeMethods[i].name
		local methodInfo = typeMethods[i].value

		WriteRealm(file, methodInfo.realm)

		for description in methodInfo.description:gmatch("[^\r\n]+") do
			if description:sub(#description) ~= "." then
				--print("Warning: Adding period to end of method description for " .. name .. "." .. methodName)
				description = description .. "."
			end

			file:write("---" .. description .. "\n")
		end

		WriteSource(file, methodInfo.path)

		local args = ""

		for i, param in ipairs(methodInfo.params or {}) do
			local paramName = param.name
			if paramName == "end" then
				print("Warning: Renaming parameter 'end' to '_end' in " .. name .. "." .. methodName)
				paramName = "_end"
			end

			local paramType = param.type or "any"

			if paramType:sub(1, 3) == "..." then
				local varargType = paramType:sub(4)
				if not varargType or varargType == "" then
					varargType = "any"
				end

				file:write("---@param ... " .. varargType .. " # " .. param.description .. "\n")
				args = args .. "..."
			else
				file:write("---@param " .. paramName .. " " .. paramType .. " # " .. param.description .. "\n")
				args = args .. paramName
			end

			if i < #methodInfo.params then
				args = args .. ", "
			end
		end

		if methodInfo.returns then
			for j = 1, #methodInfo.returns do
				local ret = methodInfo.returns[j]
				file:write(
					"---@return "
						.. ret.type
						.. " # "
						.. ret.description
						.. "\n"
				)
			end
		end

		file:write("function " .. name .. ":" .. methodName .. "(" .. args .. ") end\n\n")
	end

	file:close()
end

local function compileTypes(types)
	for i = 1, #types do
		local typeName = types[i].name
		local typeInfo = types[i].value

		compileType(typeName, typeInfo)
	end
end

return compileTypes
