execute if data storage ender_craft Chest[{id:"minecraft:oak_log"}] unless score #fields cw_ender_craft matches 2.. run scoreboard players set #success cw_ender_craft 1
execute if score #success cw_ender_craft matches 1 run data modify storage ender_craft Item set value {id:"minecraft:oak_planks",Count:4b}

execute if score #success cw_ender_craft matches 1 if score #clearing cw_ender_craft matches 1 store result score #temp cw_ender_craft run data get storage ender_craft Chest[{id:"minecraft:oak_log"}].Count
execute if score #success cw_ender_craft matches 1 if score #clearing cw_ender_craft matches 1 store result storage ender_craft Chest[{id:"minecraft:oak_log"}].Count byte 1 run scoreboard players remove #temp cw_ender_craft 1