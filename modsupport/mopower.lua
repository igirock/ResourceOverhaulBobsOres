  config["uranium-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["copper-ore"] = 3,
      ["iron-ore"] = 3,
      ["coal"] = 8,
      ["stone"] = 8,
    }
  }
  
  config["iron-ore"].multi_resource["uranium-ore"] = 5
  config["copper-ore"].multi_resource["uranium-ore"] = 5
  config["coal"].multi_resource["uranium-ore"] = 5
  config["stone"].multi_resource["uranium-ore"] = 5