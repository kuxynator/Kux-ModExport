--[[
	class LuaTechnologyPrototype - sort
	name :: string [R]	Name of this technology.
	localised_name :: LocalisedString [R]	Localised name of this technology.
	localised_description :: LocalisedString [R]	
	enabled :: boolean [R]	If this technology prototype is enabled by default (enabled at the beginning of a game).
	hidden :: boolean [R]	If this technology prototype is hidden.
	visible_when_disabled :: boolean [R]	If this technology will be visible in the research GUI even though it is disabled.
	upgrade :: boolean [R]	If the is technology prototype is an upgrade to some other technology.
	prerequisites :: dictionary string → LuaTechnologyPrototype [R]	Prerequisites of this technology.
	research_unit_ingredients :: array of Ingredient [R]	Ingredients labs will require to research this technology.
	effects :: array of Modifier [R]	Effects applied when this technology is researched.
	research_unit_count :: uint [R]	Number of research units required for this technology.
	research_unit_energy :: double [R]	Amount of energy required to finish a unit of research.
	order :: string [R]	Order string for this prototype.
	level :: uint [R]	The level of this research.
	max_level :: uint [R]	The max level of this research.
	research_unit_count_formula :: string [R]	The count formula used for this infinite research or nil if this isn't an infinite research.
	valid :: boolean [R]	Is this object valid?
	help() → string	All methods, and properties that this object supports.
]]

local LuaWrapper = require("LuaWrapper.LuaWrapper")

LuaTechnologyPrototypeWrapper = {
	table_name = "LuaTechnologyPrototypeWrapper"
}
local this = LuaTechnologyPrototypeWrapper

this.definitions = {
	{"name", 						"string", "R", "Name of this technology."},
	{"localised_name", 				"LocalisedString", "R", "Localised name of this technology."},
	{"localised_description", 		"LocalisedString", "R", ""},
	{"enabled", 					"boolean", "R", "If this technology prototype is enabled by default (enabled at the beginning of a game)."},
	{"hidden", 						"boolean", "R", "If this technology prototype is hidden."},
	{"visible_when_disabled", 		"boolean", "R", "If this technology will be visible in the research GUI even though it is disabled."},
	{"upgrade", 					"boolean", "R", "If the is technology prototype is an upgrade to some other technology."},
	{"prerequisites", 				"{string,LuaTechnologyPrototype}", "R", "Prerequisites of this technology."},
	{"research_unit_ingredients", 	"[Ingredient]", "R", "Ingredients labs will require to research this technology."},
	{"effects", 					"[Modifier]", "R", "Effects applied when this technology is researched."},
	{"research_unit_count", 		"uint", "R", "Number of research units required for this technology."},
	{"research_unit_energy", 		"double", "R", "Amount of energy required to finish a unit of research."},
	{"order", 						"string", "R", "Order string for this prototype."},
	{"level", 						"uint", "R", "The level of this research."},
	{"max_level", 					"uint", "R", "The max level of this research."},
	{"research_unit_count_formula", "string", "R", "The count formula used for this infinite research or nil if this isn't an infinite research."},
	{"valid", 						"boolean", "R", "Is this object valid?"},
	{"help", 						"string", "C", "All methods, and properties that this object supports."}
}

this.toTable = function (obj)
	return LuaWrapper.toTable(obj, this)
end

this.toTableRef = function (obj)
	return LuaWrapper.toTableRef(obj, this)
end

LuaWrapper.verify(this)
return this