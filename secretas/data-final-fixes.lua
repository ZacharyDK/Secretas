local util_scripts = require("scripts")

--data.raw["inserter"]["stack-inserter"].max_belt_stack_size = 5 --thanks for Pthread-Create for bringing this up.

--local defaultmaxbelt = data.raw["inserter"]["stack-inserter"].max_belt_stack_size or 4
for i,v in pairs(data.raw["inserter"]) do -- this should also modify stack inserters, and any other inserter.
	local maxbelt = v.max_belt_stack_size or 1
	if maxbelt ~= 1 then
		v.max_belt_stack_size = maxbelt + 1
	end
end
-- Don't forget to modify loaders if mods use them with stack belt
for i,v in pairs(data.raw["loader"]) do
	local maxbelt = v.max_belt_stack_size or 1
	if maxbelt ~= 1 then
		v.max_belt_stack_size = maxbelt + 1
	end
end
for i,v in pairs(data.raw["loader-1x1"]) do
	local maxbelt = v.max_belt_stack_size or 1
	if maxbelt ~= 1 then
		v.max_belt_stack_size = maxbelt + 1
	end
end


-- log("** before modification:")
-- log(serpent.block(data.raw['technology']["science-pack-productivity"].effects))
if(settings.startup["automatically-populate-science-pack-productivity-research"].value) then
	for _, science_pack in pairs(util_scripts.get_all_science_from_all_labs()) do
		--log("**testing science: " .. science_pack)
		if(not util_scripts.table_contains(data.raw['technology']["science-pack-productivity"].effects, science_pack, "recipe")) then
			for _, recipe in pairs(data.raw['recipe']) do
				if(recipe.results and util_scripts.table_contains(recipe.results, science_pack, "name") and recipe.category ~= "recycling") then
					local insert_science = {
						type = "change-recipe-productivity",
						recipe = recipe.name,
						change = 0.01
					}
					table.insert(data.raw['technology']["science-pack-productivity"].effects, insert_science)
				end
			end
		end
		if(not util_scripts.table_contains(data.raw['technology']["science-pack-productivity"].unit.ingredients, science_pack, 1)) then
				local insert_ingredients = {science_pack, 1}
				table.insert(data.raw['technology']["science-pack-productivity"].unit.ingredients,insert_ingredients)
		end
		if(not util_scripts.table_contains(data.raw['lab']['biolab'].inputs, science_pack)) then
			table.insert(data.raw['lab']['biolab'].inputs, science_pack)
		end
	end
end

-- log("**biolab inputs:")
-- log(serpent.block(data.raw['lab']['biolab'].inputs))