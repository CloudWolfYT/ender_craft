scoreboard players set #itter cw_ender_craft 0
scoreboard players set #success cw_ender_craft 0
execute anchored eyes run function ender_craft:exit/raycast
execute if score #success cw_ender_craft matches 0 run function ender_craft:chest/close