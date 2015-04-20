config["rare-earth"] = {
    type="resource-ore",

    allotment=100,

    spawns_per_region={min=1, max=2},
    size={min=13, max=24},
    richness=11000,

    starting={richness=2500, size=12, probability=1},

    multi_resource_chance=0.13,
    multi_resource={
      ["iron-ore"] = 2,
      ['copper-ore'] = 2,
      ["coal"] = 8,
      ["stone"] = 8,
    }
  }
  
  config["iron-ore"].multi_resource["rare-earth"] = 5
  config["copper-ore"].multi_resource["rare-earth"] = 5
  config["coal"].multi_resource["rare-earth"] = 5
  config["stone"].multi_resource["rare-earth"] = 5