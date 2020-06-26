execute as @a[scores={cw_ender_open=1..}] at @s run function ender_craft:open_chest
execute as @a[tag=cw_crafting] run function ender_craft:chest/main
execute as @e[tag=ender_craft] at @s if block ~ ~ ~ air run function ender_craft:break