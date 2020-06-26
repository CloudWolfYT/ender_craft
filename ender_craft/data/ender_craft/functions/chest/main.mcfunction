### prevent moving items ###
execute store result score #static cw_ender_craft run clear @s #minecraft:all_items{ender_craft:1}
execute if score #static cw_ender_craft matches 1.. run function ender_craft:chest/setup


### check for grabbing the result/ confirm craft ###
execute store result score #result1 cw_ender_craft if data entity @s Inventory[{tag:{ender_result:1}}]
execute store result score #result cw_ender_craft run clear @s #minecraft:all_items{ender_result:1}
execute if score #result cw_ender_craft matches 1.. at @s run function ender_craft:grab
execute if score @s cw_ender_drop matches 1.. at @s run function ender_craft:drop

function ender_craft:chest/check_items

### check if you left the chest/ not looking at it ###
execute at @s run function ender_craft:exit/check

kill @e[type=item,nbt={Item:{tag:{ender_result:1}}}]