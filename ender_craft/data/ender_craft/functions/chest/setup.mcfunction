execute if entity @s[tag=!cw_crafting] run function ender_craft:chest/save
execute if entity @s[tag=!cw_crafting] run function ender_craft:chest/clear_all
function ender_craft:chest/inv_mask
scoreboard players set @s cw_ender_drop 0
tag @s add cw_crafting

execute store result score @s cw_ender_craft run data get entity @s EnderItems
scoreboard players operation @s cw_ender_craft1 = @s cw_ender_craft

#say open