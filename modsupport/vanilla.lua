config["iron-ore"] = {
    type="resource-ore",

    -- general spawn params
    allotment=120, -- how common resource is
    spawns_per_region={min=1, max=2}, --number of chunks
    richness=10000,        -- resource_ore has only one richness value - resource-liquid has min/max

    size={min=13, max=40}, -- rough radius of area, too high value can produce square shaped areas

    -- resource provided at starting location
    -- probability: 1 = 100% chance to be in starting area
    --              0 = resource is not in starting area
    starting={richness=2000, size=17, probability=1},

    multi_resource_chance=0.13, -- absolute value
    multi_resource={
      ["iron-ore"] = 2, -- ["resource_name"] = allotment
      ['copper-ore'] = 4,
      ["coal"] = 8,
      ["stone"] = 8,
    }
  }
	
config["copper-ore"] = {
    type="resource-ore",

    allotment=120,
    spawns_per_region={min=1, max=2},
    richness=11000,
    size={min=13, max=32},

    starting={richness=1800, size=13, probability=1},

    multi_resource_chance=0.13,
    multi_resource={
      ["iron-ore"] = 4,
      ['copper-ore'] = 2,
      ["coal"] = 8,
      ["stone"] = 8,
    }
  }
	
config["coal"] = {
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
	
config["stone"] = {
    type="resource-ore",

    allotment=80,
    spawns_per_region={min=1, max=2},
    richness=9000,
    size={min=11, max=27},

    starting={richness=1000, size=8, probability=1},

    multi_resource_chance=0.13,
    multi_resource={
      ["iron-ore"] = 2,
      ['copper-ore'] = 2,
      ["coal"] = 8,
      ["stone"] = 8,
    }
  }

config["crude-oil"] = {
    type="resource-liquid",
    minimum_amount=2000,
    allotment=80,
    spawns_per_region={min=1, max=3},
    richness={min=20000, max=70000}, -- total richness of site - see above, liquids do have a min/max, ores don't
    size={min=2, max=5}, -- richness divided by this number

    starting={richness=14000, size=2, probability=1}
  }