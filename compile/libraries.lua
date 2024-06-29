local builtinsExtraContent = [[
---@type boolean
CLIENT = nil
---@type boolean
SERVER = nil
]]

local specialHookMethods = {
	add = true,
	remove = true,
	run = true,
}

local tableBlacklist = {
	["prop.SENT_Data_Structures"] = true,
	["wire.ports"] = true
}

local function compileLibrary(name, contents)
	local file = OpenOutputFile(name, "libraries")
	local tableHeader = ""

	if name == "builtins" then
		file:write(builtinsExtraContent)
	else
		WriteRealm(file, contents.realm)

		for description in contents.description:gmatch("[^\n]+") do
			if description:sub(#description) ~= "." then
				--print("Warning: Adding period to end of library description for " .. name)
				description = description .. "."
			end

			file:write("---" .. description .. "\n")
		end

		WriteSource(file, contents.path)
		file:write(name .. " = {}\n\n")
		tableHeader = name .. "."
	end

	local libraryTables = GetSorted(contents.tables)
	for i = 1, #libraryTables do
		local tableName = libraryTables[i].name
		local tableInfo = libraryTables[i].value

		if tableBlacklist[name .. "." .. tableName] then
			print("Skipping blacklisted table " .. tableName)
			goto continue
		end

		file:write("---@enum " .. tableName .. "\n")
		WriteRealm(file, tableInfo.realm)
		file:write("---" .. tableInfo.description .. "\n")
		WriteSource(file, tableInfo.path)
		file:write(tableHeader .. tableName .. " = {\n")

		for i, field in ipairs(tableInfo.fields) do
			if field.description and field.description ~= "" then
				file:write("    ---" .. field.description .. "\n")
			end

			if field.name:find("^%d") then
				field.name = "[" .. field.name .. "]"
			end
			file:write("    " .. field.name .. " = " .. i .. ",\n")
		end

		file:write("}\n\n")

		::continue::
	end

	local libraryMethods = GetSorted(contents.methods)
	for i = 1, #libraryMethods do
		local methodName = libraryMethods[i].name
		local methodInfo = libraryMethods[i].value

		WriteRealm(file, methodInfo.realm)

		for description in methodInfo.description:gmatch("[^\n]+") do
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

			if name == "hook" and i == 1 and specialHookMethods[methodName] then
				paramType = "HookName"
			end

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
			for i, ret in ipairs(methodInfo.returns) do
				file:write(
					"---@return " .. ret.type .. " # " .. ret.description .. "\n"
				)
			end
		end

		file:write("function " .. tableHeader .. methodName .. "(" .. args .. ") end\n\n")
	end

	file:close()
end

local function compileLibraries(libraries)
	for i = 1, #libraries do
		local library = libraries[i]
		compileLibrary(library.name, library.value)
	end
end

return compileLibraries
