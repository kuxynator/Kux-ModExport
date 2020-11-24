--[[
class LuaForce - sort
get_entity_count(name) → uint	Count entities of given type.
disable_research()	Disable research for this force.
enable_research()	Enable research for this force.
disable_all_prototypes()	Disable all recipes and technologies.
enable_all_prototypes()	Enables all recipes and technologies.
reset_recipes()	Load the original version of all recipes from the prototypes.
enable_all_recipes()	Unlock all recipes.
enable_all_technologies()	Unlock all technologies.
research_all_technologies(include_disabled_prototypes)	Research all technologies.
reset_technologies()	Load the original versions of technologies from prototypes.
reset()	Reset everything.
reset_technology_effects()	Reapplies all possible research effects, including unlocked recipes.
chart(surface, area)	Chart a portion of the map.
clear_chart(surface)	Erases chart data for this force.
rechart()	Force a rechart of the whole chart.
chart_all(surface)	Chart all generated chunks.
is_chunk_charted(surface, position) → boolean	Has a chunk been charted?
is_chunk_visible(surface, position) → boolean	Is the given chunk currently charted and visible (not covered by fog of war) on the map.
cancel_charting(surface)	Cancels pending chart requests for the given surface or all surfaces.
get_ammo_damage_modifier(ammo) → double	
set_ammo_damage_modifier(ammo, modifier)	
get_gun_speed_modifier(ammo) → double	
set_gun_speed_modifier(ammo, modifier)	
get_turret_attack_modifier(turret) → double	
set_turret_attack_modifier(turret, modifier)	
set_cease_fire(other, cease_fire)	Stop attacking members of a given force.
get_cease_fire(other) → boolean	Will this force attack members of another force?
set_friend(other, cease_fire)	Friends have unrestricted access to buildings and turrets won't fire at them.
get_friend(other) → boolean	Is this force a friend?
is_pathfinder_busy() → boolean	Is pathfinder busy?
kill_all_units()	Kill all units and flush the pathfinder.
find_logistic_network_by_position(position, surface) → LuaLogisticNetwork	
set_spawn_position(position, surface)	
get_spawn_position(surface) → Position	
unchart_chunk(position, surface)	
get_item_launched(item) → uint	Gets the count of a given item launched in rockets.
set_item_launched(item, count)	Sets the count of a given item launched in rockets.
print(message, color)	Print text to the chat console of all players on this force.
get_trains(surface) → array of LuaTrain	
add_chart_tag(surface, tag) → LuaCustomChartTag	Adds a custom chart tag to the given surface and returns the new tag or nil if the given position isn't valid for a chart tag.
find_chart_tags(surface, area) → array of LuaCustomChartTag	Finds all custom chart tags within the given bounding box on the given surface.
get_saved_technology_progress(technology) → double	Gets the saved progress for the given technology or nil if there is no saved progress.
set_saved_technology_progress(technology, double)	Sets the saved progress for the given technology.
reset_evolution()	Resets evolution for this force to zero.
play_sound{path=…, position=…, volume_modifier=…} → boolean	Plays a sound for every player on this force
get_train_stops(opts) → array of LuaEntity	Gets train stops matching the given filters.
get_hand_crafting_disabled_for_recipe(recipe) → boolean	Gets if the given recipe is explicitly disabled from being hand crafted.
set_hand_crafting_disabled_for_recipe(recipe, hand_crafting_disabled)	Sets if the given recipe can be hand-crafted.
add_research(technology) → boolean	Add this technology to the back of the research queue if the queue is enabled.
cancel_current_research()	Stop the research currently in progress.
name :: string [R]	Name of the force.
technologies :: CustomDictionary string → LuaTechnology [R]	Technologies owned by this force, indexed by their name.
recipes :: CustomDictionary string → LuaRecipe [R]	Recipes available to this force, indexed by their name.
manual_mining_speed_modifier :: double [RW]	Multiplier of the manual mining speed.
manual_crafting_speed_modifier :: double [RW]	Multiplier of the manual crafting speed.
laboratory_speed_modifier :: double [RW]	
laboratory_productivity_bonus :: double [RW]	
worker_robots_speed_modifier :: double [RW]	
worker_robots_battery_modifier :: double [RW]	
worker_robots_storage_bonus :: double [RW]	
current_research :: LuaTechnology [R]	The current technology in research, or nil if no research is currently ongoing.
research_progress :: double [RW]	Progress of current research, as a number in range [0, 1].
previous_research :: LuaTechnology [RW]	The previous research if any.
inserter_stack_size_bonus :: double [RW]	The inserter stack size bonus for non stack inserters
stack_inserter_capacity_bonus :: uint [RW]	Number of items that can be transferred by stack inserters.
character_trash_slot_count :: double [RW]	Number of character trash slots.
maximum_following_robot_count :: uint [RW]	Maximum number of follower robots.
following_robots_lifetime_modifier :: double [RW]	Additional lifetime for following robots.
ghost_time_to_live :: uint [RW]	The time, in ticks, before a placed ghost disappears.
players :: array of LuaPlayer [R]	Players belonging to this force.
ai_controllable :: boolean [RW]	Enables some higher-level AI behaviour for this force.
logistic_networks :: dictionary string → array of LuaLogisticNetwork [R]	List of logistic networks, grouped by surface.
item_production_statistics :: LuaFlowStatistics [R]	The item production statistics for this force.
fluid_production_statistics :: LuaFlowStatistics [R]	The fluid production statistics for this force.
kill_count_statistics :: LuaFlowStatistics [R]	The kill counter statistics for this force.
entity_build_count_statistics :: LuaFlowStatistics [R]	The entity build statistics for this force (built and mined)
character_running_speed_modifier :: double [RW]	
artillery_range_modifier :: double [RW]	
character_build_distance_bonus :: uint [RW]	
character_item_drop_distance_bonus :: uint [RW]	
character_reach_distance_bonus :: uint [RW]	
character_resource_reach_distance_bonus :: double [RW]	
character_item_pickup_distance_bonus :: double [RW]	
character_loot_pickup_distance_bonus :: double [RW]	
character_inventory_slots_bonus :: uint [RW]	the number of additional inventory slots the character main inventory has.
deconstruction_time_to_live :: uint [RW]	The time, in ticks, before a deconstruction order is removed.
character_health_bonus :: double [RW]	
max_successful_attempts_per_tick_per_construction_queue :: uint [RW]	
max_failed_attempts_per_tick_per_construction_queue :: uint [RW]	
auto_character_trash_slots :: boolean [RW]	true if auto character trash slots are enabled.
zoom_to_world_enabled :: boolean [RW]	Ability to use zoom-to-world on map.
zoom_to_world_ghost_building_enabled :: boolean [RW]	Ability to build ghosts through blueprint or direct ghost placement, or "mine" ghosts when using zoom-to-world.
zoom_to_world_blueprint_enabled :: boolean [RW]	Ability to create new blueprints using empty blueprint item when using zoom-to-world.
zoom_to_world_deconstruction_planner_enabled :: boolean [RW]	Ability to use deconstruction planner when using zoom-to-world.
zoom_to_world_selection_tool_enabled :: boolean [RW]	Ability to use custom selection tools when using zoom-to-world.
character_logistic_requests :: boolean [RW]	true if character requester logistics is enabled.
rockets_launched :: uint [RW]	The number of rockets launched.
items_launched :: dictionary string → uint [R]	All of the items that have been launched in rockets.
connected_players :: array of LuaPlayer [R]	The connected players belonging to this force.
mining_drill_productivity_bonus :: double [RW]	
train_braking_force_bonus :: double [RW]	
evolution_factor :: double [RW]	Evolution factor of this force.
evolution_factor_by_pollution :: double [RW]	
evolution_factor_by_time :: double [RW]	
evolution_factor_by_killing_spawners :: double [RW]	
friendly_fire :: boolean [RW]	If friendly fire is enabled for this force.
share_chart :: boolean [RW]	If sharing chart data is enabled for this force.
research_queue_enabled :: boolean [RW]	Whether the research queue is available for this force.
index :: uint [R]	Unique ID associated with this force.
research_queue :: array of TechnologySpecification [RW]	The research queue of this force.
research_enabled :: boolean [R]	Whether research is enabled for this force, see LuaForce::enable_research and LuaForce::disable_research
valid :: boolean [R]	Is this object valid?
help() → string	All methods, and properties that this object supports.
]]
LuaForceWrapper = {
	table_name = "LuaForceWrapper"
}
local this = LuaForceWrapper

this.definitions = {
--	get_entity_count(name) → uint	Count entities of given type.
--	disable_research()	Disable research for this force.
--	enable_research()	Enable research for this force.
--	disable_all_prototypes()	Disable all recipes and technologies.
--	enable_all_prototypes()	Enables all recipes and technologies.
--	reset_recipes()	Load the original version of all recipes from the prototypes.
--	enable_all_recipes()	Unlock all recipes.
--	enable_all_technologies()	Unlock all technologies.
--	research_all_technologies(include_disabled_prototypes)	Research all technologies.
--	reset_technologies()	Load the original versions of technologies from prototypes.
--	reset()	Reset everything.
--	reset_technology_effects()	Reapplies all possible research effects, including unlocked recipes.
--	chart(surface, area)	Chart a portion of the map.
--	clear_chart(surface)	Erases chart data for this force.
--	rechart()	Force a rechart of the whole chart.
--	chart_all(surface)	Chart all generated chunks.
--	is_chunk_charted(surface, position) → boolean	Has a chunk been charted?
--	is_chunk_visible(surface, position) → boolean	Is the given chunk currently charted and visible (not covered by fog of war) on the map.
--	cancel_charting(surface)	Cancels pending chart requests for the given surface or all surfaces.
--	get_ammo_damage_modifier(ammo) → double	
--	set_ammo_damage_modifier(ammo, modifier)	
--	get_gun_speed_modifier(ammo) → double	
--	set_gun_speed_modifier(ammo, modifier)	
--	get_turret_attack_modifier(turret) → double	
--	set_turret_attack_modifier(turret, modifier)	
--	set_cease_fire(other, cease_fire)	Stop attacking members of a given force.
--	get_cease_fire(other) → boolean	Will this force attack members of another force?
--	set_friend(other, cease_fire)	Friends have unrestricted access to buildings and turrets won't fire at them.
--	get_friend(other) → boolean	Is this force a friend?
--	is_pathfinder_busy() → boolean	Is pathfinder busy?
--	kill_all_units()	Kill all units and flush the pathfinder.
--	find_logistic_network_by_position(position, surface) → LuaLogisticNetwork	
--	set_spawn_position(position, surface)	
--	get_spawn_position(surface) → Position	
--	unchart_chunk(position, surface)	
--	get_item_launched(item) → uint	Gets the count of a given item launched in rockets.
--	set_item_launched(item, count)	Sets the count of a given item launched in rockets.
--	print(message, color)	Print text to the chat console of all players on this force.
--	get_trains(surface) → array of LuaTrain	
--	add_chart_tag(surface, tag) → LuaCustomChartTag	Adds a custom chart tag to the given surface and returns the new tag or nil if the given position isn't valid for a chart tag.
--	find_chart_tags(surface, area) → array of LuaCustomChartTag	Finds all custom chart tags within the given bounding box on the given surface.
--	get_saved_technology_progress(technology) → double	Gets the saved progress for the given technology or nil if there is no saved progress.
--	set_saved_technology_progress(technology, double)	Sets the saved progress for the given technology.
--	reset_evolution()	Resets evolution for this force to zero.
--	play_sound{path=…, position=…, volume_modifier=…} → boolean	Plays a sound for every player on this force
--	get_train_stops(opts) → array of LuaEntity	Gets train stops matching the given filters.
--	get_hand_crafting_disabled_for_recipe(recipe) → boolean	Gets if the given recipe is explicitly disabled from being hand crafted.
--	set_hand_crafting_disabled_for_recipe(recipe, hand_crafting_disabled)	Sets if the given recipe can be hand-crafted.
--	add_research(technology) → boolean	Add this technology to the back of the research queue if the queue is enabled.
--	cancel_current_research()	Stop the research currently in progress.
--	name :: string [R]	Name of the force.
--	technologies :: CustomDictionary string → LuaTechnology [R]	Technologies owned by this force, indexed by their name.
--	recipes :: CustomDictionary string → LuaRecipe [R]	Recipes available to this force, indexed by their name.
--	manual_mining_speed_modifier :: double [RW]	Multiplier of the manual mining speed.
--	manual_crafting_speed_modifier :: double [RW]	Multiplier of the manual crafting speed.
--	laboratory_speed_modifier :: double [RW]	
--	laboratory_productivity_bonus :: double [RW]	
--	worker_robots_speed_modifier :: double [RW]	
--	worker_robots_battery_modifier :: double [RW]	
--	worker_robots_storage_bonus :: double [RW]	
--	current_research :: LuaTechnology [R]	The current technology in research, or nil if no research is currently ongoing.
--	research_progress :: double [RW]	Progress of current research, as a number in range [0, 1].
--	previous_research :: LuaTechnology [RW]	The previous research if any.
--	inserter_stack_size_bonus :: double [RW]	The inserter stack size bonus for non stack inserters
--	stack_inserter_capacity_bonus :: uint [RW]	Number of items that can be transferred by stack inserters.
--	character_trash_slot_count :: double [RW]	Number of character trash slots.
--	maximum_following_robot_count :: uint [RW]	Maximum number of follower robots.
--	following_robots_lifetime_modifier :: double [RW]	Additional lifetime for following robots.
--	ghost_time_to_live :: uint [RW]	The time, in ticks, before a placed ghost disappears.
--	players :: array of LuaPlayer [R]	Players belonging to this force.
--	ai_controllable :: boolean [RW]	Enables some higher-level AI behaviour for this force.
--	logistic_networks :: dictionary string → array of LuaLogisticNetwork [R]	List of logistic networks, grouped by surface.
--	item_production_statistics :: LuaFlowStatistics [R]	The item production statistics for this force.
--	fluid_production_statistics :: LuaFlowStatistics [R]	The fluid production statistics for this force.
--	kill_count_statistics :: LuaFlowStatistics [R]	The kill counter statistics for this force.
--	entity_build_count_statistics :: LuaFlowStatistics [R]	The entity build statistics for this force (built and mined)
--	character_running_speed_modifier :: double [RW]	
--	artillery_range_modifier :: double [RW]	
--	character_build_distance_bonus :: uint [RW]	
--	character_item_drop_distance_bonus :: uint [RW]	
--	character_reach_distance_bonus :: uint [RW]	
--	character_resource_reach_distance_bonus :: double [RW]	
--	character_item_pickup_distance_bonus :: double [RW]	
--	character_loot_pickup_distance_bonus :: double [RW]	
--	character_inventory_slots_bonus :: uint [RW]	the number of additional inventory slots the character main inventory has.
--	deconstruction_time_to_live :: uint [RW]	The time, in ticks, before a deconstruction order is removed.
--	character_health_bonus :: double [RW]	
--	max_successful_attempts_per_tick_per_construction_queue :: uint [RW]	
--	max_failed_attempts_per_tick_per_construction_queue :: uint [RW]	
--	auto_character_trash_slots :: boolean [RW]	true if auto character trash slots are enabled.
--	zoom_to_world_enabled :: boolean [RW]	Ability to use zoom-to-world on map.
--	zoom_to_world_ghost_building_enabled :: boolean [RW]	Ability to build ghosts through blueprint or direct ghost placement, or "mine" ghosts when using zoom-to-world.
--	zoom_to_world_blueprint_enabled :: boolean [RW]	Ability to create new blueprints using empty blueprint item when using zoom-to-world.
--	zoom_to_world_deconstruction_planner_enabled :: boolean [RW]	Ability to use deconstruction planner when using zoom-to-world.
--	zoom_to_world_selection_tool_enabled :: boolean [RW]	Ability to use custom selection tools when using zoom-to-world.
--	character_logistic_requests :: boolean [RW]	true if character requester logistics is enabled.
--	rockets_launched :: uint [RW]	The number of rockets launched.
--	items_launched :: dictionary string → uint [R]	All of the items that have been launched in rockets.
--	connected_players :: array of LuaPlayer [R]	The connected players belonging to this force.
--	mining_drill_productivity_bonus :: double [RW]	
--	train_braking_force_bonus :: double [RW]	
--	evolution_factor :: double [RW]	Evolution factor of this force.
--	evolution_factor_by_pollution :: double [RW]	
--	evolution_factor_by_time :: double [RW]	
--	evolution_factor_by_killing_spawners :: double [RW]	
--	friendly_fire :: boolean [RW]	If friendly fire is enabled for this force.
--	share_chart :: boolean [RW]	If sharing chart data is enabled for this force.
--	research_queue_enabled :: boolean [RW]	Whether the research queue is available for this force.
--	index :: uint [R]	Unique ID associated with this force.
--	research_queue :: array of TechnologySpecification [RW]	The research queue of this force.
--	research_enabled :: boolean [R]	Whether research is enabled for this force, see LuaForce::enable_research and LuaForce::disable_research
--	valid :: boolean [R]	Is this object valid?
--	help() → string	All methods, and properties that this object supports.
}

this.toTable = function (obj)
	return LuaWrapper.toTable(obj, this)
end

this.toTableRef = function (obj)
	return LuaWrapper.toTableRef(obj, this)
end

LuaWrapper.verify(this)
return this