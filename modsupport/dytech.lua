
if remote.interfaces["DyTech-Core"] then
  config["stone"].allotment = 100
  config["stone"].richness = 25000
  config["stone"].starting.richness = 10000
end

if remote.interfaces["DyTech-Core"] or remote.interfaces["DyTech-Metallurgy"] then
-- exotic ores
  config["gold-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=175,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["tin-ore"] = 3,
      ["tungsten-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }
  config["silver-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["tungsten-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }

  config["lead-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0.2},

    multi_resource_chance=0.60,
    multi_resource={
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["tungsten-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }

  config["tin-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tungsten-ore"] = 3,
      ["zinc-ore"] = 3,
      ["copper-ore"] = 2,
    }
  }

  config["tungsten-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }

  config["zinc-ore"] = {
    type="resource-ore",

    allotment=25,
    spawns_per_region={min=2, max=5},
    richness=220,
    size={min=2, max=5},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["tungsten-ore"] = 3,
    }
  }

-- moltensomethin
  config["lava-2800"] = {
    type="resource-liquid",
    minimum_amount=1000,

    allotment=17,
    spawns_per_region={min=1, max=3},
    richness={min=40000, max=120000},
    size={min=2, max=7},

    absolute_probability=0.01,

    multi_resource_chance=0.25,
    multi_resource={
      ["lava-2800"] = 1,
      ["lava-1400"] = 2,
      ["lava-600"] = 4
    }
  }
  config["lava-1400"] = {
    type="resource-liquid",
    minimum_amount=1000,

    allotment=22,
    spawns_per_region={min=1, max=3},
    richness={min=40000, max=120000},
    size={min=2, max=7},

    absolute_probability=0.01,

    multi_resource_chance=0.25,
    multi_resource={
      ["lava-2800"] = 1,
      ["lava-1400"] = 2,
      ["lava-600"] = 4
    }
  }
  config["lava-600"] = {
    type="resource-liquid",
    minimum_amount=1000,

    allotment=25,
    spawns_per_region={min=1, max=3},
    richness={min=40000, max=120000}, -- total richness of site
    size={min=2, max=7}, -- richness divided by this number

    absolute_probability=0.01,

    starting={richness=10500, size=3, probability=0.4},
    multi_resource_chance=0.25,
    multi_resource={
      ["lava-2800"] = 1,
      ["lava-1400"] = 2,
      ["lava-600"] = 4
    }
  }

end

if game.entityprototypes["sniper"] or remote.interfaces["DyTech-Warfare"] then
  config["gems"] = {
    type="resource-ore",

    allotment=65,
    spawns_per_region={min=2, max=5},
    richness=2000,
    size={min=2, max=5},
    min_amount = 15,
    starting={richness=40, size=3, probability=0},

    multi_resource_chance=0.20,
    multi_resource={
      ["stone"] = 1
    }
  }

  if config["zinc-ore"] then
    config["gems"].multi_resource["lead-ore"] = 3
    config["gems"].multi_resource["silver-ore"] = 3
    config["gems"].multi_resource["gold-ore"] = 3
    config["gems"].multi_resource["tin-ore"] = 3
    config["gems"].multi_resource["tungsten-ore"] = 3
    config["gems"].multi_resource["zinc-ore"] = 3
    config["gems"].multi_resource_chance = 0.50

    config["lead-ore"].multi_resource["gems"] = 2
    config["silver-ore"].multi_resource["gems"] = 2
    config["gold-ore"].multi_resource["gems"] = 2
    config["tin-ore"].multi_resource["gems"] = 2
    config["tungsten-ore"].multi_resource["gems"] = 2
    config["zinc-ore"].multi_resource["gems"] = 2
  end
end