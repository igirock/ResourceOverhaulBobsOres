  config["uraninite"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["copper-ore"] = 5,
      ["iron-ore"] = 5,
      ["coal"] = 8,
      ["stone"] = 8,
      ["flourite"] = 2,
    }
  }

  config["fluorite"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["copper-ore"] = 5,
      ["iron-ore"] = 5,
      ["coal"] = 8,
      ["stone"] = 8,
      ["uraninite"] = 2,
    }
  }