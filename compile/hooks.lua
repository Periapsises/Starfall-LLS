local function compileHook(file, name, contents)
	file:write("---@alias " .. name .. " fun(")

	for i, param in ipairs(contents.params or {}) do
		local paramName = param.name
		if paramName == "end" then
			paramName = "_end"
		end

		file:write(paramName .. ": " .. param.type)

		if i < #contents.params then
			file:write(", ")
		end
	end

	file:write(")")

	if contents.returns then
		file:write(" : ")

		for i, ret in ipairs(contents.returns) do
			file:write(ret.type)

			if i < #contents.returns then
				file:write(", ")
			end
		end
	end

	file:write("\n")
end

local function compileHooks(hooks)
	local file = OpenOutputFile("hooks", "hooks")

	file:write("---@alias HookName\n")

	for i = 1, #hooks do
		local hook = hooks[i]
		file:write("---| '\"" .. hook.name .. "\"' # " .. hook.value.description:gsub("\n", " ") .. "\n")
	end

	file:write("---| string # A custom hook name called when triggered by hook.run\n\n")

	for i = 1, #hooks do
		local hook = hooks[i]
		compileHook(file, hook.name, hook.value)
	end

	file:close()
end

return compileHooks
