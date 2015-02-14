require 'defines'
debug_enabled = true


region_size=7 -- alternative mean to control how further away resources would be, default - 256 tiles or 8 chunks
              -- each region is region_size*region_size chunks
              -- each chunk is 32*32 tiles

override_normal_spawn = false   -- if false then the standard spawner can also spawn full grown resources/entities,
                               -- set resources you want to control through this config to "None" in worldgen "Size" settings when starting a new game
                               -- changing of this setting requires game restart, i.e. close game and start it again, not actally a new game

override_type = 'partially'    -- 'full' - no spawns by game are allowed, 'partially' - very small patches are spawned by world gen
                               -- changing of this setting requires game restart

starting_area_size=1           -- starting area in regions, safe from random nonsense

absolute_resource_chance=0.60  -- chance to spawn an resource in a region
global_richness_mult = 1.0      -- multiply richness all resources

multi_resource_richness_factor=0.60 -- any additional resource is multiplied by this value times resources-1
multi_resource_size_factor=0.60
multi_resource_chance_diminish=0.8    -- diminishing effect factor on multi_resource_chance

min_amount=350 -- default value for minimum amount of resource in single pile

richness_distance_factor=1.030 -- 3.0 relative % per region distance ~ 2.1x mult @ 25 regions distance

deterministic = true           -- set to false to use system for all decisions  math.random

endless_resource_mode = false   -- if true, the size of each resource is modified by the following modifier. Use with the endless resources mod.
endless_resource_mode_sizeModifier = 0.30

disable_RSO_biter_spawning = false    -- if true, no biters will be spawned by RSO. Do not use with override_normal_spawn = true, because then no biters will be spawned at all.

biter_ratio_segment=1      --the ratio components determining how many biters to spitters will be spawned
spitter_ratio_segment=1    --eg. 1 and 1 -> equal number of biters and spitters,  10 and 1 -> 10 times as many biters to spitters

config={}

require("modsupport.vanilla")  -- vanilla ore/liquids (no enemies)

--[[ MODS SUPPORT ]]--
if remote and game then

-- Endless resources mod
if endless_resource_mode then
  require("modsupport.endless_resource_mod")
end

if not remote.interfaces["peacemod"] then  -- if the user has peacemod installed he probably doesn't want that RSO spawns them either.
  require("modsupport.vanilla_enemies")  
end

-- Roadworks mod
if game.entityprototypes["RW_limestone"] then
	require("modsupport.roadworks")
end

-- DyTech
-- i moved everything even the checks there, i think it's cleaner this way
require("modsupport.dytech")


-- BobOres
if remote.interfaces["bobores"] then
  require("modsupport.bobores")
end

-- peace mod
if remote.interfaces["peacemod"] then
  require("modsupport.peacemod")
end  

--[[ commented due to absence in current version of F-Mod
if remote.interfaces["F-Mod"] then
  -- geyser left as is for now
  config["geyser"] = {
    type="resource-liquid",
    minimum_amount=750000000,

    allotment=0,
    spawns_per_region={min=1, max=2},
    richness={min=7500000000, max=7500000000}, -- total richness of site
    size={min=1, max=2}, -- richness devided by this number
  }
  if config["lava-600"] then
    config["lava-600"].multi_resource["geyser"] = 8
    config["lava-1400"].multi_resource["geyser"] = 8
    config["lava-2000"].multi_resource["geyser"] = 8
  end
end
]]--
end
