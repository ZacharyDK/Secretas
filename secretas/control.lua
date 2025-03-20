--I didn't write this. Frontrider did.

script.on_load(function()
    if script.active_mods["dea-dia-system"] then
        -- register secretas into the platform system of dea dia.
        -- this replaces platform tiles with secretas surface tiles when the paltform was mined.
        remote.call("dea_dia_system", "add_gas_giant_surface_tile_pair", "secretas", "secretas-surface")
    end
end)
