scoreboard players add #itter cw_ender_craft 1
execute if block ~ ~ ~ ender_chest if entity @e[tag=ender_craft,distance=..1.5] at @s run function ender_craft:chest/setup
execute if score #itter cw_ender_craft matches ..119 unless block ~ ~ ~ ender_chest positioned ^ ^ ^0.25 run function ender_craft:raycast