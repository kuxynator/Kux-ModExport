FileWriter = require("FileWriter")

local exportTxt = function ()
	local w = FileWriter.create("active_mods.txt", 1)
	for name, version in pairs(game.active_mods) do
		w.writeString(name.."\r\n")
	end
end

local exportTxtVersion = function ()
	local w = FileWriter.create("active_modsversion.txt", 1)
	for name, version in pairs(game.active_mods) do
		w.writeString(name.." "..version.."\r\n")
	end
end

local exportUrls = function ()
	local w = FileWriter.create("active_mods_urls.txt", 1)
	for name, version in pairs(game.active_mods) do
		local n = string.gsub(name, "%s", "%%20")
		w.writeString("https://mods.factorio.com/mod/"..n.."\r\n")
	end
end

local exportMd = function ()
	local w = FileWriter.create("active_mods.md", 1)
	for name, version in pairs(game.active_mods) do
		local n = string.gsub(name, "%s", "%%20")
		w.writeString("1. ["..name.."](https://mods.factorio.com/mod/"..n..")\r\n")
	end
end

local exportModListJson = function (fileName)
	local w = FileWriter.create(fileName, 1)
	w.writeString("{\r\n  \"mods\":[\r\n")
	local first = true
	for name, version in pairs(game.active_mods) do
		if first then first = false else w.writeString(",\r\n\r\n") end
		w.writeString("    {\r\n")
		w.writeString("      \"name\": \""..name.."\",\r\n")
		w.writeString("      \"enabled\": \"true\"\r\n")
		w.writeString("    }")
	end
	w.writeString("\r\n\t]\r\n}")
end

local exportModListJsonVersion = function (fileName)
	local w = FileWriter.create(fileName, 1)
	w.writeString("{\r\n  \"mods\":[\r\n")
	local first = true
	for name, version in pairs(game.active_mods) do
		if first then first = false else w.writeString(",\r\n\r\n") end
		w.writeString("    {\r\n")
		w.writeString("      \"name\": \""..name.."\",\r\n")
		w.writeString("      \"enabled\": \"true\",\r\n")
		w.writeString("      \"version\": \""..version.."\"\r\n")
		w.writeString("    }")
	end
	w.writeString("\r\n  ]\r\n}")
end

local createTextListOfMods = function ()
	local s = ""
	for name, version in pairs(game.active_mods) do
		s = s .. name .. "\r\n"
	end
	return s
end

script.on_nth_tick(60,function ()
	script.on_nth_tick(nil)
	--print(os.date("%Y-%m-%d %H%M%S"))
	exportModListJson("active_mods.json")
	exportModListJsonVersion("active_mods_exact.json") -- mod-list.json format with version
	exportTxt() -- plain text
	exportTxtVersion() -- plain text with version
	exportUrls()
	exportMd()
	--[[
	local txtList=createTextListOfMods()
	-- Note: Can only be used when the map contains exactly one player.
	print("game.is_multiplayer: "..tostring(game.is_multiplayer))
	if(game.is_multiplayer ~= true) then
		print(txtList)
		game.show_message_dialog{text=txtList}
	end
	]]
	--Settings of the setting_type "runtime-per-user" are accessed using 
	--settings.get_player_settings(game.get_player(<PlayerSpecification>))["setting-name"] or 
	--game.players[<PlayerSpecification>].mod_settings["setting-name"]
end)