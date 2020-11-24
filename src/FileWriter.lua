local FileWriter = {}

FileWriter.flagAppend = false
FileWriter.file = nil
FileWriter.playerId = nil

FileWriter.create = function(file, playerId)
	if file == nil then error("Argument must not be nil! Name:'file'") end
	if playerId == nil then error("Argument must not be nil! Name:'playerId'") end

	local instance = {}
	instance.this = instance
	
	instance.writeField = function (obj, fieldName)
		game.write_file(FileWriter.file, "\""..fieldName.."\": "..toJsonValue(obj[fieldName]), FileWriter.flagAppend, FileWriter.playerId)
		FileWriter.flagAppend = true
	end
	instance.writeFieldLocalized = function (obj, fieldName)
		game.write_file(FileWriter.file, {"", "\""..fieldName.."\": \"", obj[fieldName], "\""}, FileWriter.flagAppend, FileWriter.playerId)
		FileWriter.flagAppend = true
	end
	instance.writeString = function (s)
		game.write_file(FileWriter.file, s, FileWriter.flagAppend, FileWriter.playerId)
		FileWriter.flagAppend = true
	end
	instance.writeLocalizedString = function (s)
		game.write_file(FileWriter.file, {"", s}, FileWriter.flagAppend, FileWriter.playerId)
		FileWriter.flagAppend = true
	end

	-- TODO create instance
	FileWriter.flagAppend = false
	FileWriter.file = file
	FileWriter.playerId = playerId
	return FileWriter
end

FileWriter.writeField = function (obj, fieldName)
	game.write_file(FileWriter.file, "\""..fieldName.."\": "..toJsonValue(obj[fieldName]) , FileWriter.flagAppend, FileWriter.playerId)
	FileWriter.flagAppend = true
end
FileWriter.writeFieldLocalized = function (obj, fieldName)
	game.write_file(FileWriter.file, {"", "\""..fieldName.."\": \"", obj[fieldName], "\""} , FileWriter.flagAppend, FileWriter.playerId)
	FileWriter.flagAppend = true
end
FileWriter.writeString = function (s)
	game.write_file(FileWriter.file, s, FileWriter.flagAppend, FileWriter.playerId)
	FileWriter.flagAppend = true
end
FileWriter.writeLocalizedString = function (s)
	game.write_file(FileWriter.file, {"", s}, FileWriter.flagAppend, FileWriter.playerId)
	FileWriter.flagAppend = true
end

return FileWriter