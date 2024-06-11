local function compileType(name, contents)
	local file = OpenOutputFile(name, "types")

	WriteRealm(file, contents.realm)

	for description in contents.description:gmatch("[^\r\n]+") do
		if description:sub(#description) ~= "." then
			print("Warning: Adding period to end of type description for " .. name)
			description = description .. "."
		end

		file:write("---" .. description .. "\n")
	end

	file:write("---@class " .. name .. "\n")
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
				print("Warning: Adding period to end of method description for " .. name .. "." .. methodName)
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

			if paramType == "..." then
				file:write("---@param ... any # " .. param.description .. "\n")
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
						.. (j < #methodInfo.returns and "\n" or "")
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
