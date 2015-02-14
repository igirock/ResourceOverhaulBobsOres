-- peace mod

  disable_RSO_biter_spawning = true   -- if the user has peacemod installed he probably doesn't want that RSO spawns them either.
  config["alien-ore"] = {
    type="resource-ore",
    allotment=10,
    spawns_per_region={min=0, max=1},
    richness=200,
    size={min=2, max=3},
    
    starting={richness=1, size=1, probability=0},
    
    multi_resource_chance=0.2,
    multi_resource={
      ['copper-ore'] = 1,
    }
  }
