require("config")
require("prototypes.prototype_utils")

if override_normal_spawn then

	for _, resource in pairs(data.raw.resource) do
		add_peak(resource,{influence=-1000})
	end
	
-- disable spawners regardless
add_peak(data.raw["unit-spawner"]["biter-spawner"],{influence=-1000})
add_peak(data.raw["unit-spawner"]["spitter-spawner"],{influence=-1000})
add_peak(data.raw["turret"]["small-worm-turret"],{influence=-1000})
add_peak(data.raw["turret"]["medium-worm-turret"],{influence=-1000})
add_peak(data.raw["turret"]["big-worm-turret"],{influence=-1000})
	
--  require("prototypes/base")
--  require("prototypes/mods")
end

if debug_enabled then
  data.raw["car"]["car"].max_health = 0x8000000
  data.raw["ammo"]["basic-bullet-magazine"].magazine_size = 1000
  data.raw["ammo"]["basic-bullet-magazine"].ammo_type.action[1].action_delivery[1].target_effects[2].damage.amount = 5000
end