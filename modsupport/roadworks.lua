  config["RW_limestone"] = {
    type="resource-ore",

    allotment=85,
    spawns_per_region={min=1, max=2},
    richness=11000,
    size={min=10, max=17},

    starting={richness=1000, size=4, probability=0.9},

    multi_resource_chance=0.15,
    multi_resource={
      ["coal"] = 2,
      ["stone"] = 8,
      ["crude-oil"] = 1,
    }
  }
  
	if config["stone"] and config["stone"].multi_resource then
    config["stone"].multi_resource["RW_limestone"] = 12
	end
	if config["iron-ore"] and config["iron-ore"].multi_resource then
    config["iron-ore"].multi_resource["RW_limestone"] = 3
	end
	if config["copper-ore"] and config["copper-ore"].multi_resource then
    config["copper-ore"].multi_resource["RW_limestone"] = 3
	end
	if config["coal"] and config["coal"].multi_resource then
    config["coal"].multi_resource["RW_limestone"] = 3
	end