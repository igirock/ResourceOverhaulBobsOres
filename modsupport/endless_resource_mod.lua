-- reduce the starting area size of resources (Note: only done for vanilla resources)
-- The size will additionally be modified with endless_resource_mode_sizeModifier
  config["iron-ore"].starting = {richness=2000, size=22, probability=1}
  config["copper-ore"].starting = {richness=1800, size=20, probability=1}
  config["coal"].starting = {richness=2500, size=15, probability=1}
  config["stone"].starting = {richness=1000, size=10, probability=1}