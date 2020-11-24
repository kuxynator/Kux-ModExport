LuaWrapper = {}

LuaWrapper.toTable = function (obj, wrapper)
	local t = {object_name=obj.object_name}
	for _, definition in ipairs(wrapper.definitions) do
		local fieldName = definition[1];
		local value = obj[fieldName]
		if definition[3] == "R" or definition[3] == "RW" then
			if type(value) == "userdata" then
				t[fieldName] = toTableRef(value) --TODO configuration
			else
				t[fieldName] = value
			end
		end
	end
	return t
end

LuaWrapper.toTableRef = function (obj, wrapper)
	local t = {object_name=obj.object_name}
	for _, definition in ipairs(wrapper.definitions) do
		local fieldName = definition[1];
		local value = obj[fieldName]
		if definition[3] == "R" or definition[3] == "RW" then
			if type(value) == "userdata" then
				t[fieldName] = {
					object_name = obj.object_name,
					name=obj.name,
					localised_name=obj.localised_name,
					localised_description=obj.localised_description
				}
			else
				t[fieldName] = value -- TODO
			end
		end
	end
	return t
end

LuaWrapper.verify = function(luaWrapper)
	local wrapperName = luaWrapper.table_name or luaWrapper.object_name
	if luaWrapper.toTable == nil then error("Missing function. Name:'toTable', Type:'"..wrapperName.."'") end
	if luaWrapper.toTableRef == nil then error("Missing function. Name:'toTableRef', Type:'"..wrapperName.."'") end
end

return LuaWrapper