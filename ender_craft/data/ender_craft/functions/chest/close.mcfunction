tag @s remove cw_crafting

data modify storage ender_craft Chest set from entity @s EnderItems
data remove storage ender_craft Chest[{tag:{ender_craft:1}}]
data remove storage ender_craft Chest[{tag:{ender_result:1}}]
data remove block 69420 0 69420 Items
data modify block 69420 0 69420 Items set from storage ender_craft Chest
loot give @s mine 69420 0 69420 stick{drop_contents:true}

function ender_craft:chest/clear_all
function ender_craft:chest/load

#say close