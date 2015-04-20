  config["y-res1"] = {
    type="resource-ore",
    allotment=55,
    spawns_per_region={min=1, max=1},
    size={min=7, max=15},
    richness=8000,

    starting={richness=2500, size=12, probability=1},

    multi_resource_chance=0.002,
    multi_resource={
      ["stone"] = 8,
    }
  }
	
	config["y-res2"] = {
    type="resource-ore",
    allotment=50,
    spawns_per_region={min=1, max=1},
    size={min=7, max=12},
    richness=7000,

    starting={richness=2500, size=12, probability=1},

    multi_resource_chance=0.001,
    multi_resource={
      ["iron-ore"] = 8,
    }
  }