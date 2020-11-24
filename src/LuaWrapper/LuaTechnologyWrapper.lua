--[[
reload						() Reload this technology from its prototype.
force 						:: LuaForce [R]	The force this technology belongs to.
name 						:: string [R]	Name of this technology.
localised_name 				:: LocalisedString [R]	Localised name of this technology.
localised_description 		:: LocalisedString [R]	
prototype 					:: LuaTechnologyPrototype [R]	The prototype of this technology.
enabled 					:: boolean [RW]	Can this technology be researched?
visible_when_disabled 		:: boolean [RW]	If this technology will be visible in the research GUI even though it is disabled.
upgrade 					:: boolean [R]	Is this an upgrade-type research?
researched 					:: boolean [RW]	Has this technology been researched?
prerequisites 				:: dictionary string → LuaTechnology [R]	Prerequisites of this technology.
research_unit_ingredients 	:: array of Ingredient [R]	Ingredients labs will require to research this technology.
effects 					:: array of Modifier [R]	Effects applied when this technology is researched.
research_unit_count			:: uint [R]	Number of research units required for this technology.
research_unit_energy 		:: double [R]	Amount of energy required to finish a unit of research.
order 						:: string [R]	Order string for this prototype.
level 						:: uint [RW]	The current level of this technology.
research_unit_count_formula :: string [R]	The count formula used for this infinite research or nil if this isn't an infinite research.
valid 						:: boolean [R]	Is this object valid?
help						() → string	All methods, and properties that this object supports.

]]

require "LuaWrapper.LuaWrapper"
requireLuaWrapper "LuaTechnologyPrototype"
requireLuaWrapper "LuaForce"

LuaTechnologyWrapper = {
	table_name = "LuaTechnologyWrapper"
}
local this = LuaTechnologyWrapper

this.definitions = {
	{"reload", 						"", 								"C",  "Reload this technology from its prototype."},
	{"force",  						"LuaForce", 						"R",  "The force this technology belongs to."},
	{"name",  						"string", 							"R",  "Name of this technology."},
	{"localised_name",  			"LocalisedString", 					"R",  "Localised name of this technology."},
	{"localised_description",  		"LocalisedString", 					"R",  ""},
	{"prototype",  					"LuaTechnologyPrototype", 			"R",  "The prototype of this technology."},
	{"enabled",  					"boolean", 							"RW", "Can this technology be researched?"},
	{"visible_when_disabled",  		"boolean", 							"RW", "If this technology will be visible in the research GUI even though it is disabled."},
	{"upgrade",  					"boolean", 							"R",  "Is this an upgrade-type research?"},
	{"researched",  				"boolean", 							"RW", "Has this technology been researched?"},
	{"prerequisites",  				"{string,LuaTechnology}", 			"R",  "Prerequisites of this technology."},
	{"research_unit_ingredients",  	"[Ingredient]", 					"R",  "Ingredients labs will require to research this technology."},
	{"effects",  					"[Modifier]", 						"R",  "Effects applied when this technology is researched."},
	{"research_unit_count", 		"uint", 							"R",  "Number of research units required for this technology."},
	{"research_unit_energy",  		"double", 							"R",  "Amount of energy required to finish a unit of research."},
	{"order",  						"string", 							"R",  "Order string for this prototype."},
	{"level",  						"uint", 							"RW", "The current level of this technology."},
	{"research_unit_count_formula", "string", 							"R",  "The count formula used for this infinite research or nil if this isn't an infinite research."},
	{"valid",  						"boolean", 							"R",  "Is this object valid?"},
	{"help", 						"string", 							"C",  "All methods, and properties that this object supports."}
}

this.toTable = function (obj)
	return LuaWrapper.toTable(obj,this)
end

this.toTableRef = function (obj)
	return LuaWrapper.toTableRef(obj,this)
end

LuaWrapper.verify(this)
return this