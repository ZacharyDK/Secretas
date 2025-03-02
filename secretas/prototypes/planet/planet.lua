--require("prototypes/planet/planet-aquilo-map-gen")

local planet_catalogue_aquilo = require("__space-age__.prototypes.planet.procession-catalogue-aquilo")
local planet_map_gen = require("__secretas__/prototypes/planet/frozeta-map-gen")
local effects = require("__core__.lualib.surface-render-parameter-effects")
local asteroid_util = require("__secretas__.prototypes.planet.asteroid-spawn-definitions")
local space_age_asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend(
{
    {
        type = "space-location",
        name = "secretas",
        icon = "__secretas__/graphics/icons/secretas-icon.png",
        starmap_icon = "__secretas__/graphics/planet/starmap-secretas.png",
        starmap_icon_size = 512,
        order = "h[secretas]",
        subgroup = "planets",
        gravity_pull = 40,
        distance = 45,
        orientation = 0.18,
        magnitude = 3.0,
        label_orientation = 0.0,
        asteroid_spawn_influence = 1,
        auto_save_on_first_trip = true,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge, 0.9) --TODO define golden asteroids
    },
    {
        type = "planet",
        name = "frozeta",
        icon = "__secretas__/graphics/icons/frozeta.png",
        starmap_icon = "__secretas__/graphics/planet/starmap-frozeta.png",
        starmap_icon_size = 512,
        gravity_pull = 10,
        distance = 44,
        orientation = 0.20,
        magnitude = 0.8,
        label_orientation = 0.15,
        order = "f[frozeta]",
        subgroup = "planets",
        map_gen_settings = planet_map_gen.frozeta(), --TODO
        pollutant_type = nil,
        solar_power_in_space = 30,
        platform_procession_set =
        {
          arrival = {"planet-to-platform-b"},
          departure = {"platform-to-planet-a"}
        },
        planet_procession_set =
        {
          arrival = {"platform-to-planet-b"},
          departure = {"planet-to-platform-a"}
        },
        procession_graphic_catalogue = planet_catalogue_aquilo,
        surface_properties =
        {
          ["day-night-cycle"] = 20 * minute,
          ["magnetic-field"] = 10,
          pressure = 280,
          ["solar-power"] = 1,
          gravity = 10
        },
        asteroid_spawn_influence = 1,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_secretas, 0.9), --TODO adjust
        persistent_ambient_sounds =
        {
          base_ambience = {filename = "__space-age__/sound/wind/base-wind-aquilo.ogg", volume = 0.5},
          wind = {filename = "__space-age__/sound/wind/wind-aquilo.ogg", volume = 0.8},
          crossfade =
          {
            order = {"wind", "base_ambience"},
            curve_type = "cosine",
            from = {control = 0.35, volume_percentage = 0.0},
            to = {control = 2, volume_percentage = 100.0}
          },
          semi_persistent =
          {
            {
              sound =
              {
                variations = sound_variations("__space-age__/sound/world/semi-persistent/ice-cracks", 5, 0.7),
                advanced_volume_control =
                {
                  fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {2, 100.0}}}
                }
              },
              delay_mean_seconds = 10,
              delay_variance_seconds = 5
            },
            {
              sound = {variations = sound_variations("__space-age__/sound/world/semi-persistent/cold-wind-gust", 5, 0.3)},
              delay_mean_seconds = 15,
              delay_variance_seconds = 9
            }
          }
        },
        entities_require_heating = true,
        player_effects =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              type = "create-trivial-smoke",
              smoke_name = "aquilo-snow-smoke",
              speed = {0, 0.1},
              initial_height = 0.5,
              speed_multiplier = 1,
              speed_multiplier_deviation = 0.5,
              starting_frame = 8,
              starting_frame_deviation = 8,
              offset_deviation = {{-96, -48}, {96, 48}},
              speed_from_center = 0.04,
              speed_from_center_deviation = 0.2
            }
          }
        },
        ticks_between_player_effects = 2
    },
    --[[
    {
        type = "space-connection",
        name = "gleba-secretas",
        subgroup = "planet-connections",
        from = "gleba",
        to = "secretas",
        order = "h",
        length = 120000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
    },
    --]]
    {
        type = "space-connection",
        name = "aquilo-secretas",
        subgroup = "planet-connections",
        from = "aquilo",
        to = "secretas",
        order = "k",
        length = 80000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_secretas)
    },
    {
        type = "space-connection",
        name = "secretas-edge",
        subgroup = "planet-connections",
        from = "secretas",
        to = "solar-system-edge",
        order = "l",
        length = 20000,
        asteroid_spawn_definitions = space_age_asteroid_util.spawn_definitions(space_age_asteroid_util.aquilo_solar_system_edge) --Not sure why mine leads to an index error
    },
    {
      type = "space-connection",
      name = "secretas-frozeta",
      subgroup = "planet-connections",
      from = "secretas",
      to = "frozeta",
      order = "o",
      length = 10000,
      asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_secretas)
    },

}
)