--I didn't write this. Frontrider did.
if script.active_mods["dea-dia-system"] then
    -- dea dia does not want to, or need to know about what tile this surface needs a replacement for,
    -- so we include the normal paltform cleaning code here.
    local function mine_collector(entity, player)
        local platform_radius = remote.call("dea_dia_system", "platform_radius")
        local position = entity.position
        local surface = entity.surface
        -- reset the surface tiles
        if entity.surface.name == "secretas" then
            local tiles = {}
            for x = position.x - platform_radius, position.x + platform_radius do
                for y = position.y - platform_radius, position.y + platform_radius do
                    table.insert(tiles, #tiles + 1, {
                        position = { x = x, y = y },
                        name = "secretas-surface"
                    })
                end
            end
            surface.set_tiles(tiles, true, false, true, false)
        end
    end

    script.on_event(defines.events.on_entity_died, function(event)
        mine_collector(event.entity)
    end, { {
        filter = "name",
        name = "gas-collector-roboport"
    } })

    script.on_event(defines.events.on_player_mined_entity, function(event)
        mine_collector(event.entity, event.player)
    end, { {
        filter = "name",
        name = "gas-collector-roboport"
    } })

    script.on_event(defines.events.on_robot_mined_entity, function(event)
        mine_collector(event.entity)
    end, { {
        filter = "name",
        name = "gas-collector-roboport"
    } })
end