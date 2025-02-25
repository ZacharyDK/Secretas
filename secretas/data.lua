require("__secretas__.prototypes.entity.entities")
--require("__secretas__.prototypes.factoriopedia-simulations")
--require("__secretas__.prototypes.fluid")
require("__secretas__.prototypes.item")
require("__secretas__.prototypes.particles")
require("__secretas__.prototypes.particle-animations")
require("__secretas__.prototypes.entity.asteroid")

--require("__secretas__.prototypes.recipe-category")
require("__secretas__.prototypes.recipe")
require("__secretas__.prototypes.entity.remnants")
require("__secretas__.prototypes.technology")

require("__secretas__.prototypes.entity.resources")
require("__secretas__.prototypes.planet.frozeta-map-gen")
require("__secretas__.prototypes.planet.planet")
require("__secretas__.prototypes.explosions")

require("__secretas__.prototypes.tile.tiles")
require("__secretas__.prototypes.autoplace-controls")
require("__secretas__.prototypes.planet.frozeta-expressions")
--require("__secretas__.prototypes.frozeta-decoratives")
require("__secretas__.prototypes.ambient-sounds")
require("__secretas__.prototypes.achievements")

--Populating utility constant default max belt stack size so mods that looks for it have the correct stack size
local defaultmaxbelt = data.raw["utility-constants"]["default"].max_belt_stack_size or 4
data.raw["utility-constants"]["default"].max_belt_stack_size = defaultmaxbelt +1