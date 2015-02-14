-- BobOres
-- up the stone at start
  config["stone"].allotment = 100
  config["stone"].starting.richness = 10000

  config["gold-ore"] = {
    type="resource-ore",

    allotment=80,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=10, max=19},
    min_amount = 15,

    starting={richness=500, size=3, probability=0},

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

    allotment=60,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=8, max=10},
    min_amount = 15,

    starting={richness=500, size=3, probability=0},

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

    allotment=80,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=6, max=15},
    min_amount = 15,

    starting={richness=500, size=6, probability=1},

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

    allotment=80,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=18, max=27},
    min_amount = 15,

    starting={richness=1000, size=6, probability=1},

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

    allotment=40,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=6, max=9},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.60,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["zinc-ore"] = 3
    }
  }
  config["bauxite-ore"] = {
    type="resource-ore",

    allotment=85,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=9, max=15},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.0,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }
  config["rutile-ore"] = {
    type="resource-ore",

    allotment=40,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=6, max=9},
    min_amount = 15,

    starting={richness=50, size=3, probability=0},

    multi_resource_chance=0.0,
    multi_resource={
      ["lead-ore"] = 3,
      ["silver-ore"] = 3,
      ["gold-ore"] = 3,
      ["tin-ore"] = 3,
      ["zinc-ore"] = 3,
    }
  }

  config["quartz"] = {
    type="resource-ore",

    allotment=90,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=5, max=12},
    min_amount = 15,

    starting={richness=500, size=4, probability=1},

    multi_resource_chance=0.0,
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

    allotment=60,
    spawns_per_region={min=1, max=2},
    richness=6500,
    size={min=6, max=15},
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
  
  -- check if Nickel, Cobalt, Sulfur or GemOre is added by bobs ores
  if game.entityprototypes["cobalt-ore"] then
    config["cobalt-ore"] = {
      type="resource-ore",

      allotment=30,
      spawns_per_region={min=1, max=2},
      richness=3000,
      size={min=6, max=15},
      min_amount = 15,

      starting={richness=50, size=3, probability=0},
      
      multi_resource_chance=0.30,
      multi_resource={
        ["lead-ore"] = 3
      }
    }
  end
  
  if game.entityprototypes["nickel-ore"] then
    config["nickel-ore"] = {
      type="resource-ore",

      allotment=25,
      spawns_per_region={min=1, max=2},
      richness=3000,
      size={min=6, max=15},
      min_amount = 15,

      starting={richness=50, size=3, probability=0},
      
      multi_resource_chance=0.10,
      multi_resource={
        ["tungsten-ore"] = 3
      }
    }
  end
  
  if game.entityprototypes["sulfur"] then
    config["sulfur"] = {
      type="resource-ore",

      allotment=40,
      spawns_per_region={min=1, max=2},
      richness=3000,
      size={min=6, max=15},
      min_amount = 15,

      starting={richness=50, size=3, probability=0},
      
      multi_resource_chance=0.40,
      multi_resource={
        ["lead-ore"] = 3,
        ["tin-ore"] = 3,
        ["tungsten-ore"] = 3,
      }
    }
  end
  
  if game.entityprototypes["gem-ore"] then
    config["gem-ore"] = {
      type="resource-ore",

      allotment=60,
      spawns_per_region={min=1, max=2},
      richness=3000,
      size={min=6, max=15},
      min_amount = 15,

      starting={richness=50, size=3, probability=0},
      
      multi_resource_chance=0.15,
      multi_resource={
        ["silver-ore"] = 3,
        ["gold-ore"] = 3,
      }
    }
  end