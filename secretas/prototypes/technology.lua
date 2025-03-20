require("util")

if (mods["dea-dia-system"] == false or mods["dea-dia-system"] == nil) then
  data:extend({
    {
      type = "technology",
      name = "planet-discovery-secretas",
      icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/secretas-discovery.png"),
      icon_size = 256,
      essential = true,
      effects =
      {
        {
          type = "unlock-space-location",
          space_location = "secretas",
          use_icon_overlay_constant = true
        },
        {
          type = "unlock-space-location",
          space_location = "frozeta",
          use_icon_overlay_constant = true
        },
        {
          type = "unlock-recipe",
          recipe = "spaceship-scrap-recycling",
        },
        {
          type = "unlock-recipe",
          recipe = "gold-plate-production"
        },
        {
          type = "unlock-recipe",
          recipe = "gold-plate-production-alt"
        },
        {
          type = "unlock-recipe",
          recipe = "auric-asteroid-crushing"
        },
        {
          type = "unlock-recipe",
          recipe = "golden-science-pack"
        },
        {
          type = "unlock-recipe",
          recipe = "solid-fuel-liquefaction"
        },
        {
          type = "unlock-recipe",
          recipe = "golden-egg"
        },

      },
      prerequisites = { "planet-discovery-aquilo", "cryogenic-science-pack" },
      unit =
      {
        count = 3000,
        ingredients =
        {
          { "automation-science-pack",      1 },
          { "logistic-science-pack",        1 },
          { "chemical-science-pack",        1 },
          { "production-science-pack",      1 },
          { "utility-science-pack",         1 },
          { "space-science-pack",           1 },
          { "metallurgic-science-pack",     1 },
          { "agricultural-science-pack",    1 },
          { "electromagnetic-science-pack", 1 },
          { "cryogenic-science-pack",       1 }
        },
        time = 60
      }
    },

  })
end

if mods["dea-dia-system"] then
  data:extend(
    {
      {
        type = "technology",
        -- This not being renamed to frozeta is deliberate, retains a usable tech tree if the two mods are not installed together
        -- and there was progress with secretas.
        name = "planet-discovery-secretas",
        localised_name = {
          "technology-name.planet-discovery-frozeta"
        },
        localised_description = {
          "technology-description.planet-discovery-frozeta"
        },
        icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/frozeta-discovery.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
          {
            type = "unlock-space-location",
            space_location = "frozeta",
            use_icon_overlay_constant = true
          },
          {
            type = "unlock-recipe",
            recipe = "spaceship-scrap-recycling",
          },
          {
            type = "unlock-recipe",
            recipe = "gold-plate-production"
          },
          {
            type = "unlock-recipe",
            recipe = "gold-plate-production-alt"
          },
          {
            type = "unlock-recipe",
            recipe = "auric-asteroid-crushing"
          },
          {
            type = "unlock-recipe",
            recipe = "golden-science-pack"
          },
          {
            type = "unlock-recipe",
            recipe = "solid-fuel-liquefaction"
          },
          {
            type = "unlock-recipe",
            recipe = "golden-egg"
          },

        },
        prerequisites = { "planet-discovery-aquilo", "cryogenic-science-pack" },
        unit =
        {
          count = 3000,
          ingredients =
          {
            { "automation-science-pack",      1 },
            { "logistic-science-pack",        1 },
            { "chemical-science-pack",        1 },
            { "production-science-pack",      1 },
            { "utility-science-pack",         1 },
            { "space-science-pack",           1 },
            { "metallurgic-science-pack",     1 },
            { "agricultural-science-pack",    1 },
            { "electromagnetic-science-pack", 1 },
            { "cryogenic-science-pack",       1 }
          },
          time = 60
        }
      },
      {
        type = "technology",
        name = "planet-discovery-secretas-gas-giant",
        localised_name = {
          "technology-name.planet-discovery-secretas"
        },
        icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/secretas-discovery.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
          {
            type = "unlock-space-location",
            space_location = "secretas",
            use_icon_overlay_constant = true
          },
        },
        prerequisites = { "planet-discovery-secretas", "planet-discovery-dea-dia" },
        unit =
        {
          count = 3000,
          ingredients =
          {
            { "automation-science-pack",      1 },
            { "logistic-science-pack",        1 },
            { "chemical-science-pack",        1 },
            { "production-science-pack",      1 },
            { "utility-science-pack",         1 },
            { "space-science-pack",           1 },
            { "metallurgic-science-pack",     1 },
            { "agricultural-science-pack",    1 },
            { "electromagnetic-science-pack", 1 },
            { "cryogenic-science-pack",       1 },
            { "golden-science-pack",          1 },
            { "aerospace-science-pack",       1 },
          },
          time = 60
        }
      }

    })
end





data:extend({
  --BASICS

  {
    type = "technology",
    name = "hyper-inserter",
    icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/hyper-inserter-tech.png"),
    icon_size = 256,
    essential = false,
    effects =
    {

      {
        type = "unlock-recipe",
        recipe = "hyper-inserter",
      },
    },
    prerequisites = { "planet-discovery-secretas" },
    unit =
    {
      count = 1000,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "agricultural-science-pack",    1 },
        { "electromagnetic-science-pack", 1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 }
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "steam-recycler",
    icon_size = 256,
    icons = util.technology_icon_constant_recipe_productivity("__secretas__/graphics/technology/recycling.png"),
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-recycler"
      },
    },
    research_trigger =
    {
      type = "mine-entity",
      entity = "spaceship-scrap"
    },
    prerequisites = { "planet-discovery-secretas" }
  },


  --EMPOWER
  {
    type = "technology",
    name = "module-finale",
    icons = util.technology_icon_constant_recipe_productivity("__secretas__/graphics/technology/module.png"),
    icon_size = 256,
    prerequisites = { "planet-discovery-secretas" },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "quality-module-4-S",
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4-S",
      },
      {
        type = "unlock-recipe",
        recipe = "efficiency-module-4-S",
      },
      {
        type = "unlock-recipe",
        recipe = "speed-module-4-S",
      },
      {
        type = "unlock-recipe",
        recipe = "golden-egg",
      },
    },
    unit =
    {
      count = 7500,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "agricultural-science-pack",    1 },
        { "electromagnetic-science-pack", 1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 }
      },
      time = 60
    }
  },

  {
    type = "technology",
    name = "transport-belt-capacity-3-Secretas",
    localised_description = { "technology-description.belt-capacity" },
    icons = util.technology_icon_constant_stack_size("__space-age__/graphics/technology/transport-belt-capacity.png"),
    effects =
    {
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      },

    },
    prerequisites = { "transport-belt-capacity-2", "planet-discovery-secretas" },
    unit =
    {
      count = 6000,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "agricultural-science-pack",    1 },
        { "electromagnetic-science-pack", 1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 }
      },
      time = 60
    },
    upgrade = true
  },

  --Worker robot storage

  {
    type = "technology",
    name = "worker-robots-storage-4",
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = { "worker-robots-storage-3", "planet-discovery-secretas" },
    unit =
    {
      count = 900,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
      },
      time = 60
    },
    upgrade = true
  },

  {
    type = "technology",
    name = "worker-robots-storage-5",
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = { "worker-robots-storage-4" },
    unit =
    {
      count = 1800,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
      },
      time = 60
    },
    upgrade = true
  },

  {
    type = "technology",
    name = "worker-robots-storage-6",
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = { "worker-robots-storage-5" },
    unit =
    {
      count = 3600,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
      },
      time = 60
    },
    upgrade = true
  },

  {
    type = "technology",
    name = "worker-robots-storage-7",
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = { "worker-robots-storage-6" },
    unit =
    {
      count = 7200,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
      },
      time = 60
    },
    upgrade = true
  },

  {
    type = "technology",
    name = "worker-robots-storage-8",
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = { "worker-robots-storage-7" },
    unit =
    {
      count = 14400,
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
        { "promethium-science-pack",      1 },
      },
      time = 60
    },
    upgrade = true
  },

  --INFINITE-ISH

  {
    type = "technology",
    name = "spaceship-scrap-recycling-productivity",
    icons = util.technology_icon_constant_recipe_productivity(
    "__secretas__/graphics/technology/scrap-recycling-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "spaceship-scrap-recycling",
        change = 0.1
      }
    },
    prerequisites = { "planet-discovery-secretas", "production-science-pack" },
    unit =
    {
      count_formula = "2^L*600",
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "electromagnetic-science-pack", 1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
        { "space-science-pack",           1 },
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "science-pack-productivity",
    icons = util.technology_icon_constant_recipe_productivity(
    "__space-age__/graphics/technology/research-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "automation-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "logistic-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "chemical-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "military-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "production-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "utility-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "space-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "metallurgic-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "electromagnetic-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "agricultural-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "cryogenic-science-pack",
        change = 0.01
      },
      {
        type = "change-recipe-productivity",
        recipe = "golden-science-pack",
        change = 0.005
      },
      {
        type = "change-recipe-productivity",
        recipe = "promethium-science-pack",
        change = 0.01
      },


    },
    prerequisites = { "promethium-science-pack", "planet-discovery-secretas" },
    unit =
    {
      count_formula = "1.5^L*1200",
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "military-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "agricultural-science-pack",    1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
        { "promethium-science-pack",      1 }
      },
      time = 120
    },
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "gold-plate-productivity",
    icons = util.technology_icon_constant_recipe_productivity(
    "__secretas__/graphics/technology/gold-plate-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "gold-plate-production",
        change = 0.07,
      },
      {
        type = "change-recipe-productivity",
        recipe = "gold-plate-production-alt",
        change = 0.07,
      }
    },
    prerequisites = { "planet-discovery-secretas" },
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
        { "cryogenic-science-pack",       1 },
        { "golden-science-pack",          1 },
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
}
)
