scoreboard players set #clearing cw_ender_craft 1
function ender_craft:scan
function ender_craft:chest/loot_all
function ender_craft:chest/inv_mask
scoreboard players set #clearing cw_ender_craft 0

data remove block 69420 0 69420 Items
data modify block 69420 0 69420 Items[] set from storage ender_craft Item
execute store result score #full cw_ender_craft run loot give @s mine 69420 0 69420 stick{drop_contents:true}
execute if score #full cw_ender_craft matches 0 run loot spawn ~ ~ ~ mine 69420 0 69420 stick{drop_contents:true}

function ender_craft:scan

execute if score #result1 cw_ender_craft matches 1.. if score #success cw_ender_craft matches 1 run function ender_craft:grab